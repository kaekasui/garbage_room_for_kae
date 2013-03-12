class Blog < Admin::Blog
  attr_accessible :blog_category_code, :contents1, :contents2, :deleted_at, :draft, :title

  scope :no_draft, where("draft != true")
  scope :recent_blogs, limit(5)
end
