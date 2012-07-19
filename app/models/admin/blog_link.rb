class Admin::BlogLink < ActiveRecord::Base
  set_table_name :blog_links

  attr_accessible :author, :deleted_at, :draft, :introduction, :position, :title, :url
end
