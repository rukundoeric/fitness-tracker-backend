class ProgressController < ApplicationController
  before_action :verify_token, only: %i[index create show destroy]

  def index
    @measurements = current_user
      .measurements
      .eager_loading
      .group_by { |m| m.things_to_measure.name }
    render :all, formats: :json, status: :ok
  end
end
