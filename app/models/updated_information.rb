class UpdatedInformation < Admin::UpdatedInformation
  attr_accessible :comment, :deleted_at, :display_at, :draft, :news, :title, :version_id

  scope :no_draft, where("draft != true")
  scope :limit3, limit(3)
end
