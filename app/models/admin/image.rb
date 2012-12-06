class Admin::Image < ActiveRecord::Base
  attr_accessible :name

  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml"#,
    #:dropbox_options => {...}
end
