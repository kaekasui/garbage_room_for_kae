class CreateAdminImages < ActiveRecord::Migration
  def change
    create_table :admin_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
