class Admin::Blog < ActiveRecord::Base
  set_table_name :blogs

  attr_accessible :created_at, :blog_category_code, :contents1, :contents2, :deleted_at, :draft, :title

  validates_presence_of :title, :contents1
  validates_length_of :title, maximum: AVAILABLE_STRING_LENGTH, size: AVAILABLE_STRING_LENGTH
  validates_length_of :contents1, :contents2, maximum: AVAILABLE_LONG_STRING_LENGTH, size: AVAILABLE_TEXT_LENGTH
end
