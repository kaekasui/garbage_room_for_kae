class Admin::BlogLink < ActiveRecord::Base
  set_table_name :blog_links

  attr_accessible :author, :deleted_at, :draft, :introduction, :position, :title, :url

  validates_presence_of :title, :author, :url
  validates_length_of :title, :author, :introduction, :url, maximum: AVAILABLE_STRING_LENGTH, size: AVAILABLE_STRING_LENGTH

end
