class Occurence < ActiveRecord::Base
  belongs_to :event

  validates_presence_of :date, :time, :duration
  validates_associated :event
end
