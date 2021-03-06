class CreateBars < ActiveRecord::Migration
  def self.up
    create_table :bars do |t|
      t.integer :foo_id
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :bars
  end
end
