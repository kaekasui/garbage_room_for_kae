require 'dropbox_sdk'

class SessionsController < ApplicationController

  def callback
    auth = request.env["omniauth.auth"]
    user = User.where(provider: auth["provider"], uid: auth["uid"]).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to :root, notice: "login"
  end

  def callback_dropbox
    unless params[:oauth_token]
      dbsession = DropboxSession.new(ENV["DROPBOX_KEY"], ENV["DROPBOX_SECRET"])
      dbsession.get_request_token
      session[:dropbox_token] = params[:token]
      session[:dropbox_session] = dbsession.serialize
      redirect_to dbsession.get_authorize_url url_for(action: 'callback_dropbox')
    else
      dbsession = DropboxSession.deserialize(session[:dropbox_session])
      dbsession.get_access_token
      User.where(provider: "dropbox", uid: params["uid"]).first || User.create_with_dropbox_omniauth(params[:uid])
      session[:dropbox_user_id] = params[:uid]
      redirect_to :root
    end
  end

  def destroy
    session[:user_id] = nil
    session[:dropbox_session] = nil
    session[:dropbox_user_id] = nil
    session[:token] = nil
    redirect_to :root, notice: "Logged out"
  end

  def failure
    render text: "<span style='color: red;'>Auth Failure</span>"
  end
end
