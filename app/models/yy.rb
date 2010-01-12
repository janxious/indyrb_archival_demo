class Yy < ActiveRecord::Base
  acts_as_archival
  belongs_to :xx
end
