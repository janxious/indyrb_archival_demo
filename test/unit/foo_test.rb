require 'test_helper'

class FooTest < ActiveSupport::TestCase
  setup :set_us_up_some_bomb
  
  def set_us_up_some_bomb
    Bar.delete_all!
    Foo.delete_all!
    @f  = Foo.create(:name => "foo0")
    @b0 = @f.bars.create(:name => "bar0")
    @b1 = @f.bars.create(:name => "bar1")
  end

  #inconsistencies
  test "inconsistent interface, part 1" do
    @f.destroy
    assert @f.destroyed?, "I just destroyed this!"
    #assert @f.deleted?, "I just destroyed this!"
  end

  test "inconsistent interface, part 2" do
    @f.destroy
    assert Foo.find_with_destroyed(:all), "There should like... be at least one, maaaaan"
    #assert Foo.find_with_deleted(:all), "There should like... be at least one, maaaaan"
  end
  
  test "inconsistent interface, part 3" do
    @f.delete
    #@f.delete!
    assert_equal 0, Foo.find_with_deleted(:all).size, "Let's view that thing I just deleted"
  end
  
  test "inconsistent interface, part 4" do
    Foo.destroy_all
    assert_equal 0. Foo.find_with_deleted(:all).size, "Oh, I don't know what this shit is"
  end
  
  test "inconsistent interface, part 5" do 
    Foo.delete_all
    #Foo.delete_all!
    assert_equal 0, Foo.find_with_deleted(:all).size, "Oh, I guess this actually calls destroy"
  end
  
  test "inconsistent interface, part 6" do
    @f.destroy
    @f.undestroy
#     @f.undelete
#     @f.recover
#     @f.recover!
    assert_equal 1, Foo.all.size, "GIVE ME BACK MAH DATAZ"
  end

  
  #atomicity
  test "Patrick Stewart: atomics!, part 1" do
    @b1.destroy
    @f.destroy
    assert_equal 0, Bar.all.size
    assert_equal 0, Foo.all.size
    
    Foo.find_with_deleted(:all).first.recover!
    assert_equal 1, Foo.all.size
    assert_equal 1, Bar.all.size, "Maybe I need to use some other method"
  end
  
  test "atomicity, part 2" do
    @b1.destroy
    @f.destroy
    Foo.find_with_deleted(:all).first.recover_with_associations!(:bars)
    assert_equal 1, Foo.all.size
    assert_equal 1, Bar.all.size, "I'm sure I'll just get back the one I wanted that was part of the parent destroy"
  end
end
