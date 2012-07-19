class CreateAdminBlogLinks < ActiveRecord::Migration
  def change
    create_table :admin_blog_links do |t|
      t.string :title
      t.string :author
      t.string :introduction
      t.string :url
      t.integer :position
      t.boolean :draft
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
