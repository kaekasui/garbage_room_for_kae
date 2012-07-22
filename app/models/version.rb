class Version < ActiveRecord::Base
  attr_accessible :deleted_at, :flag, :name
end
