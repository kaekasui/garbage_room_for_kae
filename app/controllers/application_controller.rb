# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :reset_session_expires, :set_icon_image

  def admin_menu_blog
    @admin_menu = true
    @admin_menu_blog = true
  end

  def admin_menu_setting
    @admin_menu = true
    @admin_menu_setting = true
  end


  private

  def reset_session_expires
    request.session_options[:expire_after] = 2.weeks
  end

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  def set_icon_image
    @icon_image = "icon_images/clover.gif"
  end

  helper_method :current_user
end
