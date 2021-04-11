json.data do
  json.user do
    json.call(
      @things_to_measure,
      :id,
      :name,
      :user_id
    )
  end
end
