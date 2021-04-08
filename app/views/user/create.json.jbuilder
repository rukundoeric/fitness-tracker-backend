json.data do
  json.user do
    json.call(
      @user,
      :id,
      :name,
      :email
    )
    json.token @token
  end
end
