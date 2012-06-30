class TopController < ApplicationController
  before_filter :menu_name

  def index
    @updated_informations = UpdatedInformation.no_draft.limit3
    respond_to {|format| format.html}
  end

  def menu_name
    @menu_name = I18n.t("menu.top")
  end
end
