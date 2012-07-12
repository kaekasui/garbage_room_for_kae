class BlogComment < Admin::BlogComment
  attr_accessible :admin, :author, :blog_id, :content, :draft, :host, :ip, :mail, :mixi, :password, :salt, :title, :url

end
