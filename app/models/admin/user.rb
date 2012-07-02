class Admin::User < ActiveRecord::Base
  # attr_accessible :title, :body
  set_table_name :users

  def self.create_with_omniauth(auth)
    user = User.new
    user[:provider] = auth["provider"]
    user[:uid] = auth["uid"]

    unless auth["info"].blank?
      user[:name] = auth["info"]["name"]
      user[:screen_name] = auth["info"]["nickname"]
      user[:image] = auth["info"]["image"]
    end

    user.save
    return user
  end
end
