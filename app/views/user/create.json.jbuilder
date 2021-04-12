json.data do
  json.user do
    json.call(
      @user,
      :id,
      :name,
      :role,
      :email
    )
    json.token @token
  end
end
