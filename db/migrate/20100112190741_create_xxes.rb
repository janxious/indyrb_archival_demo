class CreateXxes < ActiveRecord::Migration
  def self.up
    create_table :xxes do |t|
      t.string :name
      t.datetime :archived_at
      t.string :archive_number

      t.timestamps
    end
  end

  def self.down
    drop_table :xxes
  end
end
