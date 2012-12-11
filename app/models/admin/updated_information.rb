class Admin::UpdatedInformation < ActiveRecord::Base
  self.table_name = "updated_informations"

  attr_accessible :comment, :deleted_at, :display_at, :draft, :news, :title, :version_id

end
