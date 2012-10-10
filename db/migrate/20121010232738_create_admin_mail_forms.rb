class CreateAdminMailForms < ActiveRecord::Migration
  def change
    create_table :admin_mail_forms do |t|

      t.timestamps
    end
  end
end
