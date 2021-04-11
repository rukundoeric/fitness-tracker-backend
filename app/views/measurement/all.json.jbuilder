json.data do
  json.measurement JSON
    .parse(
      @measurements.to_json(include: %i[user things_to_measure])
    )
end
