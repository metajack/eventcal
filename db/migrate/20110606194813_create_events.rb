class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :more_info
      t.string :image_url
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :submitter
      t.boolean :approved
      t.boolean :visible
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
