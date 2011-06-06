class CreateOccurences < ActiveRecord::Migration
  def self.up
    create_table :occurences do |t|
      t.date :date
      t.time :time
      t.float :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :occurences
  end
end
