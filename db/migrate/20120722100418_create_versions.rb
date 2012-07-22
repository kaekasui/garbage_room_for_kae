class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :name
      t.boolean :flag
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
