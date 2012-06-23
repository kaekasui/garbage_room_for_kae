class UpdatedInformationsController < ApplicationController
  # GET /updated_informations
  # GET /updated_informations.json
  def index
    @updated_informations = UpdatedInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @updated_informations }
    end
  end

  # GET /updated_informations/1
  # GET /updated_informations/1.json
  def show
    @updated_information = UpdatedInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @updated_information }
    end
  end

  # GET /updated_informations/new
  # GET /updated_informations/new.json
  def new
    @updated_information = UpdatedInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @updated_information }
    end
  end

  # GET /updated_informations/1/edit
  def edit
    @updated_information = UpdatedInformation.find(params[:id])
  end

  # POST /updated_informations
  # POST /updated_informations.json
  def create
    @updated_information = UpdatedInformation.new(params[:updated_information])

    respond_to do |format|
      if @updated_information.save
        format.html { redirect_to @updated_information, notice: 'Updated information was successfully created.' }
        format.json { render json: @updated_information, status: :created, location: @updated_information }
      else
        format.html { render action: "new" }
        format.json { render json: @updated_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /updated_informations/1
  # PUT /updated_informations/1.json
  def update
    @updated_information = UpdatedInformation.find(params[:id])

    respond_to do |format|
      if @updated_information.update_attributes(params[:updated_information])
        format.html { redirect_to @updated_information, notice: 'Updated information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @updated_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updated_informations/1
  # DELETE /updated_informations/1.json
  def destroy
    @updated_information = UpdatedInformation.find(params[:id])
    @updated_information.destroy

    respond_to do |format|
      format.html { redirect_to updated_informations_url }
      format.json { head :no_content }
    end
  end
end
