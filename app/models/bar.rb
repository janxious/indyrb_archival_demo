class Bar < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :foo
end
