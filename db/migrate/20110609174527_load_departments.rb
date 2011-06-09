require 'csv'

class LoadDepartments < ActiveRecord::Migration
  def self.up
    puts Dir.getwd
    CSV.foreach("db/csv/depts.csv", :headers => true) do |row|
      if row["parent"]
        parent = Department.find_by_name(row["parent"])
        Department.create! :name => row["name"], :department => parent
      else
        Department.create! :name => row["name"]
      end
    end
  end

  def self.down
    Department.destroy_all
  end
end
