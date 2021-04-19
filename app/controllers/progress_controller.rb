class ProgressController < ApplicationController
  before_action :verify_token, only: %i[index create show destroy]

  def index
    @measurements = current_user
      .measurements
      .with_user
      .group_by_t_name
    render :all, formats: :json, status: :ok
  end
end
