if @hotels.size > 0
	json.hotels @hotels do |hotel|
	  json.name  hotel.name
	end
else
	json.not_found "Nenhum hotel encontrado :("
end