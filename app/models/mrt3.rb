class Mrt3 < ApplicationRecord
  belongs_to :line

  BASE_FARE_SJT = 13
  BASE_FARE_SVT = 10
  DISTANCE_RATE = 1.21
  MAX_FARE_SJT = 28.00
  MAX_FARE_SVT = 22.00

  def self.fare(start_station_id, end_station_id)

    start_station = find_by(id: start_station_id)
    end_station = find_by(id: end_station_id)

    if start_station && end_station
      # Calculating distance between stations
      distance = ((end_station.distance_from_start - start_station.distance_from_start).abs).round(1)

      # Fare Price
      sjt_fare = [(BASE_FARE_SJT + (distance * DISTANCE_RATE)).round(), MAX_FARE_SJT].min
      svt_fare = [(BASE_FARE_SVT + (distance * DISTANCE_RATE)).round(), MAX_FARE_SVT].min

      # Travel Time (in minutes)
      speed = start_station.line.speed
      time_in_hours = speed > 0 ? distance / speed : nil
      time_in_minutes = time_in_hours ? (time_in_hours * 60).round : nil

      # Station Between
      stations_between = stations_in_between(start_station, end_station)

      # Return values
      {
        sjt_fare: sjt_fare,
        svt_fare: svt_fare,
        distance: distance,
        time: time_in_minutes,
        start_station: start_station,
        end_station: end_station,
        stations_between: stations_between
      }
    else
      { error: "One or both station IDs are not valid." }
    end
  end

  private

  def self.stations_in_between(start_station, end_station)
    start_distance = start_station.distance_from_start
    end_distance = end_station.distance_from_start

    # Fetch stations based on distance, excluding the start and end stations
    Mrt3.where("distance_from_start >= ? AND distance_from_start <= ?",
                [start_distance, end_distance].min,
                [start_distance, end_distance].max)
       .where.not(id: [start_station.id, end_station.id])
       .order(:distance_from_start)
  end
end