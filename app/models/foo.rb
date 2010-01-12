class Foo < ActiveRecord::Base
  acts_as_paranoid
  has_many :bars, :dependent => :destroy
end
