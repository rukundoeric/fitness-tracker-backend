json.data do
  json.user do
    json.call(
      @user,
      :id,
      :name,
      :email
    )
    json.current_user @current_user
  end
end
