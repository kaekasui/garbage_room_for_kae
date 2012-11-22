class BlogComment < Admin::BlogComment
  attr_accessible :admin, :author, :blog_id, :content, :draft, :host, :ip, :mail, :mixi, :password, :salt, :title, :url

  before_save :set_hostname

  def self.recent
    self.limit(5)
  end

  def blog_title
    Blog.find(self.blog_id).title if Blog.find(self.blog_id)
  end

  def hostname(ip)
     hostname = Socket.getnameinfo([nil, nil, nil, ip]) 
     hostname[0]
  end

  private

  def set_hostname
    self.host = hostname(self.ip)
  end
end
