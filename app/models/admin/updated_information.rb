class Admin::UpdatedInformation < ActiveRecord::Base
  set_table_name :updated_informations

  attr_accessible :comment, :deleted_at, :display_at, :draft, :news, :title, :version_id

end
