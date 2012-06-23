class CreateAdminUpdatedInformations < ActiveRecord::Migration
  def change
    create_table :admin_updated_informations do |t|
      t.date :display_at
      t.integer :version_id
      t.string :title
      t.text :news
      t.text :comment
      t.boolean :draft
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
