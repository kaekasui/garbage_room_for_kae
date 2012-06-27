class Admin::Blog < ActiveRecord::Base
  set_table_name :blogs

  attr_accessible :blog_category_code, :contents1, :contents2, :deleted_at, :draft, :title
end
