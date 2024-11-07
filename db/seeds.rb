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
  { 
    name: "Roosevelt", 
    distance_from_start: 0, 
    connections: [
      { type: "Manila MRT", route: "North Avenue" },
      { type: "Bus routes", routes: [18, 33, 64], location: "SM North EDSA" },
      { type: "EDSA Carousel", route: 1 }
    ]
  },
  { 
    name: "Balintawak", 
    distance_from_start: 1.87, 
    connections: [
      { type: "EDSA Carousel", route: 1, location: "Balintawak" },
      { type: "Bus routes", routes: [5, 8, 9, 13, 19, 20, 21, 22, 37, 38, 40, 52], location: "Ayala Malls Cloverleaf" }
    ]
  },
  { 
    name: "Monumento", 
    distance_from_start: 4.120, 
    connections: [
      { type: "EDSA Carousel", route: 1, location: "Monumento" },
      { type: "Bus routes", routes: [9, 14, 35, 37, 42, 54], location: "Monumento" }
    ]
  },
  { 
    name: "5th Avenue", 
    distance_from_start: 5.207, 
    connections: [
      { type: "Bus routes", routes: [8, 14, 22, 35, 42, 54], location: "5th Avenue" }
    ]
  },
  { 
    name: "R. Papa", 
    distance_from_start: 6.161, 
    connections: [
      { type: "Bus routes", routes: [8, 42, 54], location: "R. Papa" }
    ]
  },
  { 
    name: "Abad Santos", 
    distance_from_start: 6.821, 
    connections: [
      { type: "Bus routes", routes: [8, 42, 54], location: "Abad Santos" }
    ]
  },
  { 
    name: "Blumentritt", 
    distance_from_start: 7.748, 
    connections: [
      { type: "Mainline rail interchange", route: "PNR", location: "Blumentritt" },
      { type: "Bus routes", routes: [42], location: "Blumentritt" }
    ]
  },
  { 
    name: "Tayuman", 
    distance_from_start: 8.419, 
    connections: [
      { type: "Bus routes", routes: [42], location: "Tayuman" }
    ]
  },
  { 
    name: "Bambang", 
    distance_from_start: 9.037, 
    connections: [
      { type: "Bus routes", routes: [42], location: "Bambang" }
    ]
  },
  { 
    name: "Doroteo Jose", 
    distance_from_start: 9.685, 
    connections: [
      { type: "Metro interchange", route: "Manila LRT", location: "Recto" },
      { type: "Metro interchange", route: "Manila MRT", location: "Lerma" },
      { type: "Bus routes", routes: [13, 19, 20, 21], location: "Avenida" },
      { type: "Bus routes", routes: [42], location: "Recto" }
    ]
  },
  { 
    name: "Carriedo", 
    distance_from_start: 10.370, 
    connections: [
      { type: "Bus routes", routes: [42], location: "Escolta" },
      { type: "Bus routes", routes: [2, 3, 5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 48, 49, 53], location: "Quiapo" },
      { type: "Ferry interchange", route: "Pasig River Ferry Service", location: "Escolta Ferry Station" }
    ]
  },
  { 
    name: "Central Terminal", 
    distance_from_start: 11.095, 
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 52, 53, 54], location: "Lawton" },
      { type: "Ferry interchange", route: "Pasig River Ferry Service", location: "Lawton Ferry Station" }
    ]
  },
  { 
    name: "United Nations (UN) Avenue", 
    distance_from_start: 12.309, 
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53, 54], location: "UN Avenue" }
    ]
  },
  { 
    name: "Pedro Gil", 
    distance_from_start: 13.063, 
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53], location: "P. Gil" }
    ]
  },
  { 
    name: "Quirino",
    distance_from_start: 13.857,
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53], location: "Quirino" }
    ]
  },
  {
    name: "Vito Cruz",
    distance_from_start: 14.684,
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53], location: "V. Cruz" }
    ]
  },
  {
    name: "Gil Puyat (Buendia)",
    distance_from_start: 15.745,
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 10, 11, 12, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53, 62], location: "Buendia" },
      { type: "Bus routes", routes: [4], location: "Taft Avenue" }
    ]
  },
  {
    name: "Libertad",
    distance_from_start: 16.475,
    connections: [
      { type: "Bus rapid transit", route: 1, location: "Libertad" }
    ]
  },
  {
    name: "EDSA (Taft Avenue)",
    distance_from_start: 17.485,
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Taft Avenue" },
      { type: "Bus rapid transit", route: 1, location: "Taft Avenue" }
    ]
  },
  {
    name: "Baclaran",
    distance_from_start: 18.073,
    connections: [
      { type: "Bus routes", routes: [5, 6, 7, 14, 17, 23, 24, 25, 27, 34, 38, 40, 42, 48, 49, 53], location: "Baclaran" }
    ]
  }
]


lrt2Stations = [
  { 
    name: "Antipolo", 
    distance_from_start: 0.000, 
    connections: [
      { type: "Bus interchange", routes: [3, 56], location: "SM Masinag" }
    ]
  },
  { 
    name: "Marikina", 
    distance_from_start: 2.232, 
    connections: [
      { type: "Bus interchange", routes: [3, 56], location: "Robinsons Metro East" }
    ]
  },
  { 
    name: "Santolan", 
    distance_from_start: 4.027, 
    connections: [
      { type: "Bus interchange", routes: [3, 56], location: "SM Marikina" },
      { type: "Bus routes", routes: [36], location: "Marikina Riverbanks" }
    ]
  },
  { 
    name: "Katipunan", 
    distance_from_start: 5.997, 
    connections: [
      { type: "Bus interchange", routes: [3], location: "Katipunan" },
      { type: "Bus routes", routes: [18, 36, 39, 41, 50, 51, 56], location: "Aurora Boulevard" }
    ]
  },
  { 
    name: "Anonas", 
    distance_from_start: 6.952, 
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Anonas" },
      { type: "Bus interchange", routes: [3, 51], location: "Anonas" }
    ]
  },
  { 
    name: "Araneta Center–Cubao", 
    distance_from_start: 8.390, 
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Araneta Center–Cubao" },
      { type: "Bus rapid transit", route: 1, location: "Cubao" },
      { type: "Bus interchange", routes: [3, 51, 53, 61], location: "Gateway Mall" }
    ]
  },
  { 
    name: "Betty Go-Belmonte", 
    distance_from_start: 9.554, 
    connections: [
      { type: "Bus interchange", routes: [3], location: "Betty Go-Belmonte" }
    ]
  },
  { 
    name: "Gilmore", 
    distance_from_start: 10.629, 
    connections: [
      { type: "Bus interchange", routes: [3], location: "Gilmore" }
    ]
  },
  { 
    name: "J. Ruiz", 
    distance_from_start: 11.557, 
    connections: [
      { type: "Bus interchange", routes: [3], location: "J. Ruiz" }
    ]
  },
  { 
    name: "V. Mapa", 
    distance_from_start: 12.791, 
    connections: [
      { type: "Bus interchange", routes: [2, 3], location: "SM Centerpoint" }
    ]
  },
  { 
    name: "Pureza", 
    distance_from_start: 14.148, 
    connections: [
      { type: "Mainline rail interchange", route: "PNR", location: "Santa Mesa" },
      { type: "Bus interchange", routes: [2, 3], location: "Pureza" },
      { type: "Ferry interchange", route: "Pasig River Ferry Service", location: "PUP Ferry Station" }
    ]
  },
  { 
    name: "Legarda", 
    distance_from_start: 15.537, 
    connections: [
      { type: "Bus interchange", routes: [2, 3], location: "Legarda" }
    ]
  },
  { 
    name: "Recto", 
    distance_from_start: 16.587, 
    connections: [
      { type: "Metro interchange", route: "Manila LRT", location: "Doroteo Jose" },
      { type: "Metro interchange", route: "Manila MRT", location: "Lerma" },
      { type: "Bus interchange", routes: [13, 19, 20, 21], location: "Avenida" },
      { type: "Bus routes", routes: [42], location: "Recto" }
    ]
  }
];


mrt3Stations = [
  { 
    name: "North Avenue", 
    distance_from_start: 0.000, 
    connections: [
      { type: "Metro interchange", route: "Manila LRT", location: "North Triangle" },
      { type: "Metro interchange", route: "Manila MRT", location: "North Avenue" },
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "SM North EDSA" },
      { type: "Bus interchange", routes: [18, 33, 64], location: "SM North EDSA" }
    ]
  },
  { 
    name: "Quezon Avenue", 
    distance_from_start: 1.200, 
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Quezon Avenue" },
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Eton Centris" },
      { type: "Bus interchange", routes: [6, 7, 17, 34, 49], location: "Eton Centris" }
    ]
  },
  { 
    name: "GMA–Kamuning", 
    distance_from_start: 2.200, 
    connections: [
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Kamuning" }
    ]
  },
  { 
    name: "Araneta Center–Cubao", 
    distance_from_start: 4.100, 
    connections: [
      { type: "Metro interchange", route: "Manila LRT", location: "Araneta Center–Cubao" },
      { type: "Bus interchange", routes: [3, 51, 53, 61], location: "Gateway Mall" }
    ]
  },
  { 
    name: "Santolan–Annapolis", 
    distance_from_start: 5.600, 
    connections: [
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Santolan" }
    ]
  },
  { 
    name: "Ortigas", 
    distance_from_start: 7.900, 
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Ortigas" },
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Ortigas" },
      { type: "Bus interchange", routes: [2], location: "Robinsons Galleria" }
    ]
  },
  { 
    name: "Shaw Boulevard", 
    distance_from_start: 8.700, 
    connections: [
      { type: "None", route: "", location: "" }
    ]
  },
  { 
    name: "Boni", 
    distance_from_start: 9.700, 
    connections: [
      { type: "None", route: "", location: "" }
    ]
  },
  { 
    name: "Guadalupe", 
    distance_from_start: 10.500, 
    connections: [
      { type: "Metro interchange", route: "Manila MRT", location: "Guadalupe" },
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Guadalupe" },
      { type: "Ferry interchange", route: "Pasig River Ferry Service", location: "Guadalupe Ferry Station" }
    ]
  },
  { 
    name: "Buendia", 
    distance_from_start: 12.500, 
    connections: [
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Buendia" }
    ]
  },
  { 
    name: "Ayala", 
    distance_from_start: 13.450, 
    connections: [
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Ayala" },
      { type: "Bus interchange", routes: [10, 11, 12, 38, 40, 45, 46, 59], location: "One Ayala" }
    ]
  },
  { 
    name: "Magallanes", 
    distance_from_start: 14.650, 
    connections: [
      { type: "Mainline rail interchange", route: "PNR", location: "Magallanes" },
      { type: "Bus interchange", routes: [10, 11, 12, 38, 40, 45, 46, 59], location: "Magallanes" }
    ]
  },
  { 
    name: "Taft Avenue", 
    distance_from_start: 16.700, 
    connections: [
      { type: "Metro interchange", route: "Manila LRT", location: "Taft Avenue" },
      { type: "Bus rapid transit", route: "EDSA Carousel", location: "Tramo" }
    ]
  }
];



lrt1Stations.each do |station|
  Lrt1.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: lrt1_line.id,
    connections: station[:connections]
  )
end

puts "LRT 1 stations created successfully."

lrt2Stations.each do |station|
  Lrt2.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: lrt2_line.id,
    connections: station[:connections]
  )
end

puts "LRT 2 stations created successfully."

mrt3Stations.each do |station|
  Mrt3.create(
    name: station[:name],
    distance_from_start: station[:distance_from_start],
    line_id: mrt3_line.id,
    connections: station[:connections]
  )
end

puts "MRT 3 stations created successfully."