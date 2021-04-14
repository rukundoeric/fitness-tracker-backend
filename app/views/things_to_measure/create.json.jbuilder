json.data do
  json.user do
    json.call(
      @thing_to_measure,
      :id,
      :icon,
      :name,
      :user_id
    )
  end
end
