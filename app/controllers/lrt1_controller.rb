class Lrt1Controller < ApplicationController
  def index
    lrt1_stations = Lrt1.all
    render json: lrt1_stations
  end

  def fare
    result = Lrt1.fare(params[:start_station], params[:end_station])

    if result[:error]
      render json: { error: result[:error] }, status: :bad_request
    else
      render json: result
    end
  end
end
