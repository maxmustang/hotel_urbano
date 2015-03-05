json.hotels @hotels do |hotel|
  json.name hotel.name
  json.city hotel.city
  json.state hotel.state
  json.description hotel.description
  json.image_path hotel.image_path
  json.location hotel.get_location
end