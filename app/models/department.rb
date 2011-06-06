class Department < ActiveRecord::Base
  has_many :events
  belongs_to :department

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_associated :department
end
