class MailForm < ActiveRecord::Base
  attr_accessible :name, :mail, :content

  validates_presence_of :content
end
