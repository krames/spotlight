class AdapterConfigurationsController < ApplicationController
  # GET /adapter_configurations
  # GET /adapter_configurations.json
  def index
    @adapter_configurations = AdapterConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @adapter_configurations }
    end
  end

  # GET /adapter_configurations/1
  # GET /adapter_configurations/1.json
  def show
    @adapter_configuration = AdapterConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adapter_configuration }
    end
  end

  # GET /adapter_configurations/new
  # GET /adapter_configurations/new.json
  def new
    @adapter_configuration = AdapterConfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adapter_configuration }
    end
  end

  # GET /adapter_configurations/1/edit
  def edit
    @adapter_configuration = AdapterConfiguration.find(params[:id])
  end

  # POST /adapter_configurations
  # POST /adapter_configurations.json
  def create
    @adapter_configuration = AdapterConfiguration.new(params[:adapter_configuration])

    respond_to do |format|
      if @adapter_configuration.save
        format.html { redirect_to @adapter_configuration, notice: 'Adapter configuration was successfully created.' }
        format.json { render json: @adapter_configuration, status: :created, location: @adapter_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @adapter_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /adapter_configurations/1
  # PUT /adapter_configurations/1.json
  def update
    @adapter_configuration = AdapterConfiguration.find(params[:id])

    respond_to do |format|
      if @adapter_configuration.update_attributes(params[:adapter_configuration])
        format.html { redirect_to @adapter_configuration, notice: 'Adapter configuration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adapter_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adapter_configurations/1
  # DELETE /adapter_configurations/1.json
  def destroy
    @adapter_configuration = AdapterConfiguration.find(params[:id])
    @adapter_configuration.destroy

    respond_to do |format|
      format.html { redirect_to adapter_configurations_url }
      format.json { head :no_content }
    end
  end
end
