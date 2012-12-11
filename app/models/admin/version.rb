class Admin::Version < ActiveRecord::Base
  self.table_name = "versions"

  attr_accessible :deleted_at, :flag, :name
  default_scope where("deleted_at is null")

  validates_presence_of :name
end
