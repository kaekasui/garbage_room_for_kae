class Admin::MailForm < ActiveRecord::Base
  self.table_name = "mail_forms"

  attr_accessible :name, :mail, :content

  validates_presence_of :content
end
