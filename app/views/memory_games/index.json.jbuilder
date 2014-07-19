json.array!(@memory_games) do |memory_game|
  json.extract! memory_game, :id
  json.url memory_game_url(memory_game, format: :json)
end
