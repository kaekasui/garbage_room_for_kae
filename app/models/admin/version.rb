class Admin::Version < ActiveRecord::Base
  set_table_name :versions

  attr_accessible :deleted_at, :flag, :name
  default_scope where("deleted_at is null")
end
