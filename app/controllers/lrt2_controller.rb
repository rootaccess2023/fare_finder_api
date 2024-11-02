class Lrt2Controller < ApplicationController
  def index
    lrt2_stations = Lrt2.all
    render json: lrt2_stations
  end

  def fare
    result = Lrt2.fare(params[:start_station], params[:end_station])

    if result[:error]
      render json: { error: result[:error] }, status: :bad_request
    else
      render json: result
    end
  end
end
