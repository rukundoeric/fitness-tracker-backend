class MeasurementController < ApplicationController
  before_action :verify_token, only: %i[index create show]
  before_action :set_measurement, only: %i[show destroy]

  def index
    @measurements = Measurement.all
    render :all, status: :ok
  end

  def create
    @measurement = current_user.measurements.new(m_params)
    if @measurement.save
      render :create, status: :created
    else
      render :not_save, status: :unprocessable_entity
    end
  end

  def show
    render :show, status: :ok
  end

  def destroy
    @measurement.destroy
    render :destroy, status: :ok
  end

  def set_measurement
    @measurement = Measurement.find(params[:id])
  rescue StandardError
    render :not_found, status: :not_found
  end

  def m_params
    params.require(:things_to_measure).permit(:value, :things_to_measure_id)
  end
end
