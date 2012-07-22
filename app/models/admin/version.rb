class Admin::Version < ActiveRecord::Base
  set_table_name :versions

  attr_accessible :deleted_at, :flag, :name
end
