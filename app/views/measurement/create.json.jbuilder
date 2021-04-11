json.data do
  json.user do
    json.call(
      @measurement,
      :id,
      :value,
      :things_to_measure_id
    )
  end
end
