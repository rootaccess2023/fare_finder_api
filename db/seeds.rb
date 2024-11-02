lines = [
  {
    name: "lrt1",
    speed: 60
  },
  {
    name: "lrt2",
    speed: 60
  },
  {
    name: "mrt3",
    speed: 60
  }
]

lines.each do |line|
  Line.create(name: line[:name], speed: line[:speed])
end

puts "Lines created successfully."

lrt1_line = Line.find_by(name: "lrt1")

lrt1Stations = [
  { name: "Roosevelt", distance_from_start: 0 },
  { name: "Balintawak", distance_from_start: 1.87 },
  { name: "Monumento", distance_from_start: 4.120 },
  { name: "5th Avenue", distance_from_start: 5.207 },
  { name: "R. Papa", distance_from_start: 6.161 },
  { name: "Abad Santos", distance_from_start: 6.821 },
  { name: "Blumentritt", distance_from_start: 7.748 },
  { name: "Tayuman", distance_from_start: 8.419 },
  { name: "Bambang", distance_from_start: 9.037 },
  { name: "Doroteo Jose", distance_from_start: 9.685 },
  { name: "Carriedo", distance_from_start: 10.370 },
  { name: "Central Terminal", distance_from_start: 11.095 },
  { name: "United Nations (UN) Avenue", distance_from_start: 12.309 },
  { name: "Pedro Gil", distance_from_start: 13.063 },
  { name: "Quirino", distance_from_start: 13.857 },
  { name: "Vito Cruz", distance_from_start: 14.684 },
  { name: "Gil Puyat (Buendia)", distance_from_start: 15.745 },
  { name: "Libertad", distance_from_start: 16.475 },
  { name: "EDSA (Taft Avenue)", distance_from_start: 17.485 },
  { name: "Baclaran", distance_from_start: 18.073 }
];

lrt1Stations.each do |station|
  Lrt1.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: lrt1_line.id
  )
end

puts "LRT 1 stations created successfully."