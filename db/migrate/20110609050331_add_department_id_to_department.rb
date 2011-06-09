class AddDepartmentIdToDepartment < ActiveRecord::Migration
  def self.up
    add_column :departments, :department_id, :integer
  end

  def self.down
    remove_column :departments, :department_id
  end
end
