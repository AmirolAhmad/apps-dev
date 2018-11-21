[ "Johor",
  "Kedah",
  "Kelantan",
  "Kuala Lumpur",
  "Labuan",
  "Melaka",
  "N. Sembilan",
  "Pahang",
  "P. Pinang",
  "Perak",
  "Perlis",
  "Putrajaya",
  "Sabah",
  "Sarawak",
  "Selangor",
  "Terengganu"
].each do |name|
  State.find_or_create_by(name: name)
end