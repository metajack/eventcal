class Event < ActiveRecord::Base
  belongs_to :department

  validates_presence_of :title, :description, :location, :submitter, :approved, :visible, :featured, :department
  validates_associated :department
end
