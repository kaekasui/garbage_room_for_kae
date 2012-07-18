class BlogComment < Admin::BlogComment
  attr_accessible :admin, :author, :blog_id, :content, :draft, :host, :ip, :mail, :mixi, :password, :salt, :title, :url

  def self.recent
    self.limit(5)
  end

  def blog_title
    Blog.find(self.blog_id).title if Blog.find(self.blog_id)
  end
end
