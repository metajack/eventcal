class AddEventIdToOccurence < ActiveRecord::Migration
  def self.up
    add_column :occurences, :event_id, :integer
  end

  def self.down
    remove_column :occurences, :event_id
  end
end
