require 'dropbox_sdk'

class SessionsController < ApplicationController

  def callback
    auth = request.env["omniauth.auth"]
    user = User.where(provider: auth["provider"], uid: auth["uid"]).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to :root, notice: "login"
  end

  def callback_dropbox
   if params[:oauth_token]
     dbsession = DropboxSession.deserialize(session[:dropbox_session])
     dbsession.get_access_token
     session[:dropbox_session] = dbsession.serialize
     redirect_to :root
   else
     dbsession = DropboxSession.new(ENV["DROPBOX_KEY"], ENV["DROPBOX_SECRET"])
     session[:dropbox_session] = dbsession.serialize

     redirect_to dbsession.get_authorize_url url_for(action: "callback_dropbox")
   end
  end

  def destroy
    session[:user_id] = nil
    session[:dropbox_session] = nil
    redirect_to :root, notice: "Logged out"
  end

  def failure
    render text: "<span style='color: red;'>Auth Failure</span>"
  end
end
