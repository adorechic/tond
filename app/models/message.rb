class Message < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :body

  belongs_to :room
end
