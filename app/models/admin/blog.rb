class Admin::Blog < ActiveRecord::Base
  set_table_name :blogs

  has_many :blog_comments

  attr_accessible :created_at, :blog_category_code, :contents1, :contents2, :deleted_at, :draft, :title

  validates_presence_of :title, :contents1
  validates_length_of :title, maximum: AVAILABLE_STRING_LENGTH, size: AVAILABLE_STRING_LENGTH
  validates_length_of :contents1, :contents2, maximum: AVAILABLE_TEXT_LENGTH, size: AVAILABLE_TEXT_LENGTH

  def count_comments
    Admin::BlogComment.find_all_by_blog_id(self.id).count
  end
end
