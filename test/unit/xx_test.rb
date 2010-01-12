require 'test_helper'

class XxTest < ActiveSupport::TestCase
  def setup
    Yy.delete_all
    Xx.delete_all
    @x  = Xx.create(:name => "xx0")
    @y0 = @x.yys.create(:name => "yy0")
    @y1 = @x.yys.create(:name => "yy1")
  end
  
  test "consistent" do
    assert Xx.is_archival?
    assert Xx.unarchived
    assert Xx.archived
    assert Xx.archived_from_archive_number(@x.archive_number)
    assert Yy.archived_from_archive_number(@x.archive_number)
    assert @x.is_archival?
    assert @x.archive
    assert @x.unarchive
  end
  
  test "atomic" do
    assert_equal 2, Yy.unarchived.size

    @y1.archive
    assert_equal 1, Yy.unarchived.size

    @x.archive
    assert_equal 0, Yy.unarchived.size

    @x.unarchive    
    assert_equal 1, Yy.unarchived.size
  end
end
