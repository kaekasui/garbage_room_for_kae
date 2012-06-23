class Admin::UpdatedInformation < ActiveRecord::Base
  attr_accessible :comment, :deleted_at, :display_at, :draft, :news, :title, :version_id
end
