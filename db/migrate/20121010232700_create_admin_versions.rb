class CreateAdminVersions < ActiveRecord::Migration
  def change
    create_table :admin_versions do |t|

      t.timestamps
    end
  end
end
