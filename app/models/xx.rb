class Xx < ActiveRecord::Base
  acts_as_archival
  has_many :yys, :dependent => :destroy
end
