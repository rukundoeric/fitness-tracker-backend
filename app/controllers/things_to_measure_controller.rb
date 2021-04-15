class ThingsToMeasureController < ApplicationController
  before_action :verify_token, only: %i[index create show]
  before_action :set_t_t_measure, only: %i[destroy show]
  before_action :check_is_admin, only: %i[create]

  def index
    @things_to_measures = ThingsToMeasure.all.eager_loading
    render :all, formats: :json, status: :ok
  end

  def create
    @thing_to_measure = current_user.things_to_measures.new(t_t_m_params)
    if @thing_to_measure.save
      render :create, formats: :json, status: :created
    else
      @error = @thing_to_measure.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  def show
    render :show, formats: :json, status: :ok
  end

  def destroy
    @thing_to_measure.destroy
    render :destroy, formats: :json, status: :ok
  end

  private

  def set_t_t_measure
    @thing_to_measure = ThingsToMeasure.find(params[:id])
  rescue StandardError => e
    @error = e
    render :error, formats: :json, status: :not_found
  end

  def t_t_m_params
    params.require(:things_to_measure).permit(:icon, :name, :maxValue, :unit)
  end
end
