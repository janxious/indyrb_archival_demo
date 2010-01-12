class CreateFoos < ActiveRecord::Migration
  def self.up
    create_table :foos do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :foos
  end
end
