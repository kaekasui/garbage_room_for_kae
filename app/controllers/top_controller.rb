class TopController < ApplicationController

  def index
    @updated_informations = UpdatedInformation.no_draft.limit3
    respond_to {|format| format.html}
  end
end
