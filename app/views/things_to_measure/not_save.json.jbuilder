json.data do
  json.user do
    json.call(
      @user,
      :errors
    )
  end
end
