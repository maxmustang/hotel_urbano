if @names.size > 0
	json.names @names
else
	json.not_found "Nenhum hotel encontrado :("
end