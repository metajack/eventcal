class AddDepartmentIdToEvent < ActiveRecord::Migration
  def self.up
    add_column :events, :department_id, :integer
  end

  def self.down
    remove_column :events, :department_id
  end
end
