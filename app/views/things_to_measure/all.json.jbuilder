json.data do
  json.things_to_measure JSON.parse(@things_to_measures.to_json(include: :user))
end
