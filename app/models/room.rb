class Room < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :name

  has_many :messages
end
