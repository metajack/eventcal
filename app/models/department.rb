class Department < ActiveRecord::Base
  has_many :events
  has_many :departments
  belongs_to :department

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_associated :department
end
