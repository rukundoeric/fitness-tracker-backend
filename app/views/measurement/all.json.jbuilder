json.data do
  json.measurements JSON
    .parse(
      @measurements.to_json(include: %i[user things_to_measure])
    )
end
