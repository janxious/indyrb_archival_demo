class CreateYys < ActiveRecord::Migration
  def self.up
    create_table :yys do |t|
      t.integer :xx_id
      t.string :name
      t.datetime :archived_at
      t.string :archive_number

      t.timestamps
    end
  end

  def self.down
    drop_table :yys
  end
end
