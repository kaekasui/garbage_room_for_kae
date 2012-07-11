class Admin::BlogComment < ActiveRecord::Base
  set_table_name :blog_comments

  attr_accessible :admin, :author, :blog_id, :content, :draft, :host, :ip, :mail, :mixi, :password, :salt, :title, :url

end
