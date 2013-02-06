class Admin::User < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = "users"

  def self.create_with_omniauth(auth)
    user = User.new
    user[:provider] = auth["provider"]
    user[:uid] = auth["uid"]

    unless auth["info"].blank?
      user[:name] = auth["info"]["name"]
      user[:screen_name] = auth["info"]["nickname"]
      user[:admin] = true if user[:screen_name] == 'kae_kasui'
      user[:image] = auth["info"]["image"]
    end

    user.save
    return user
  end

  def self.create_with_dropbox_omniauth(uid)
    user = User.new
    user[:provider] = "dropbox"
    user[:uid] = uid

    user.save
    user
  end

  def self.admin?
    self.admin
  end
end
