class MeasurementController < ApplicationController
  before_action :verify_token, only: %i[index create show destroy]
  before_action :set_measurement, only: %i[show destroy]

  def index
    @measurements = current_user.measurements
    render :all, formats: :json, status: :ok
  end

  def create
    @measurement = current_user.measurements.new(m_params)
    if @measurement.save
      render :create, formats: :json, status: :created
    else
      @error = @measurement.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def show
    render :show, formats: :json, status: :ok
  end

  def destroy
    @measurement.destroy
    render :destroy, formats: :json, status: :ok
  end

  def set_measurement
    @measurement = Measurement.find(params[:id])
  rescue StandardError => e
    @error = e
    render :not_found, formats: :json, status: :not_found
  end

  def m_params
    params.require(:measurement).permit(:value, :things_to_measure_id)
  end
end
