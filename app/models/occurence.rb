class Occurence < ActiveRecord::Base
  belongs_to :event

  validates_presence_of :date, :time, :duration, :event
  validates_associated :event
end
