class Room < ActiveRecord::Base
  acts_as_paranoid
  attr_accessible :name
end
