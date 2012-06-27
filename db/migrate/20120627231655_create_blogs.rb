class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.integer :blog_category_code
      t.text :contents1
      t.text :contents2
      t.boolean :draft
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
