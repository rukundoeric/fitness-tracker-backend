json.data do
  json.measurements JSON
    .parse(
      @measurements.group_by_day.to_json(include: %i[user things_to_measure])
    )
end
