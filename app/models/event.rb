class Event < ActiveRecord::Base
  belongs_to :department
  has_many :occurences

  validates_presence_of :title, :description, :location, :submitter, :department
  validates_associated :department
end
