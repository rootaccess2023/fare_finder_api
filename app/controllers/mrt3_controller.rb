class Mrt3Controller < ApplicationController
  def index
    mrt3_stations = Mrt3.all
    render json: mrt3_stations
  end

  def fare
    result = Mrt3.fare(params[:start_station], params[:end_station])

    if result[:error]
      render json: { error: result[:error] }, status: :bad_request
    else
      render json: result
    end
  end
end
