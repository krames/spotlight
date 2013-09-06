class MentionsController < ApplicationController
  # GET /adapter_configurations
  # GET /adapter_configurations.json
  def index
    @mentions = Mention.order("created_at DESC").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mentions }
    end
  end
end
