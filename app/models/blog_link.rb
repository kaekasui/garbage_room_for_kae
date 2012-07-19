class BlogLink < ActiveRecord::Base
  attr_accessible :author, :deleted_at, :draft, :introduction, :position, :title, :url
end
