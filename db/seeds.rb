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
lrt2_line = Line.find_by(name: "lrt2")
mrt3_line = Line.find_by(name: "mrt3")

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

lrt2Stations = [
  { name: "Antipolo", distance_from_start: 0.000 },
  { name: "Marikina", distance_from_start: 2.232 },
  { name: "Santolan", distance_from_start: 4.027 },
  { name: "Katipunan", distance_from_start: 5.997 },
  { name: "Anonas", distance_from_start: 6.952 },
  { name: "Araneta Center–Cubao", distance_from_start: 8.390 },
  { name: "Betty Go-Belmonte", distance_from_start: 9.554 },
  { name: "Gilmore", distance_from_start: 10.629 },
  { name: "J. Ruiz", distance_from_start: 11.557 },
  { name: "V. Mapa", distance_from_start: 12.791 },
  { name: "Pureza", distance_from_start: 14.148 },
  { name: "Legarda", distance_from_start: 15.537 },
  { name: "Recto", distance_from_start: 16.587 }
];

mrt3Stations = [
  { name: "North Avenue", distance_from_start: 0.000 },
  { name: "Quezon Avenue", distance_from_start: 1.200 },
  { name: "GMA–Kamuning", distance_from_start: 2.200 },
  { name: "Araneta Center–Cubao", distance_from_start: 4.100 },
  { name: "Santolan–Annapolis", distance_from_start: 5.600 },
  { name: "Ortigas", distance_from_start: 7.900 },
  { name: "Shaw Boulevard", distance_from_start: 8.700 },
  { name: "Boni", distance_from_start: 9.700 },
  { name: "Guadalupe", distance_from_start: 10.500 },
  { name: "Buendia", distance_from_start: 12.500 },
  { name: "Ayala", distance_from_start: 13.450 },
  { name: "Magallanes", distance_from_start: 14.650 },
  { name: "Taft Avenue", distance_from_start: 16.700 }
];


lrt1Stations.each do |station|
  Lrt1.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: lrt1_line.id
  )
end

puts "LRT 1 stations created successfully."

lrt2Stations.each do |station|
  Lrt2.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: lrt2_line.id
  )
end

puts "LRT 2 stations created successfully."

mrt3Stations.each do |station|
  Mrt3.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: mrt3_line.id
  )
end

puts "MRT 3 stations created successfully."