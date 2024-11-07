class Lrt1 < ApplicationRecord
  belongs_to :line

  BASE_FARE_SJT = 15
  BASE_FARE_SVT = 13.29
  DISTANCE_RATE = 1.21
  MAX_FARE_SJT = 35.00
  MAX_FARE_SVT = 33.00

  def self.fare(start_station_id, end_station_id)
    start_station = find_by(id: start_station_id)
    end_station = find_by(id: end_station_id)

    if start_station && end_station
      # Calculating distance between stations
      distance_true = (end_station.distance_from_start - start_station.distance_from_start).round(1)
      distance = distance_true.abs.round(1)

      # Fare Price
      sjt_fare = [(BASE_FARE_SJT + (distance * DISTANCE_RATE)).round(), MAX_FARE_SJT].min
      svt_fare = [(BASE_FARE_SVT + (distance * DISTANCE_RATE)).round(), MAX_FARE_SVT].min

      # Travel Time (in minutes)
      speed = start_station.line.speed
      time_in_hours = speed > 0 ? distance / speed : nil
      time_in_minutes = time_in_hours ? (time_in_hours * 60).round : nil

      # Station Between (accounting for reverse direction if needed)
      stations_between = stations_in_between(start_station, end_station, distance_true)

      # Number of Stops
      number_of_stops = stations_between.count + 1

      # Train Direction
      direction = distance_true > 0 ? "Southbound" : "Northbound";

      # Line Information
      line = "Light Railway Train 1"

      # Return values
      {
        sjt_fare: sjt_fare,
        svt_fare: svt_fare,
        distance: distance,
        time: time_in_minutes,
        start_station: start_station,
        end_station: end_station,
        stations_between: stations_between,
        number_of_stops: number_of_stops,
        direction: direction,
        line: line,
        base_fare_sjt: BASE_FARE_SJT,
        base_fare_svt: BASE_FARE_SVT,
      }
    else
      { error: "One or both station IDs are not valid." }
    end
  end

  private

  def self.stations_in_between(start_station, end_station, distance_true)
    start_distance = start_station.distance_from_start
    end_distance = end_station.distance_from_start

    stations = Lrt1.where("distance_from_start >= ? AND distance_from_start <= ?",
                          [start_distance, end_distance].min,
                          [start_distance, end_distance].max)
                   .where.not(id: [start_station.id, end_station.id])
                   .order(:distance_from_start)

    stations = stations.reverse if distance_true < 0

    stations
  end
end
