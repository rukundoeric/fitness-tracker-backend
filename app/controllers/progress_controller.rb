class ProgressController < ApplicationController
  before_action :verify_token, only: %i[index create show destroy]

  def index
    @measurements = current_user.measurements
    render :all, formats: :json, status: :ok
  end
end
