User.create!([
  {photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-lTogP8tWcBICL9ruESaM7e9fyP7E61_TMWGcGQ8GeCsOCk41TwQhDo7BfHQleeh0PDE&usqp=CAU", name: "Admin", role: "admin", email: "admin@gmail.com", password: "admin@005"}
])
ThingsToMeasure.create!([
  {icon: "https://res.cloudinary.com/newpoint/image/upload/v1618310970/fitness-tracker/workout_ahmajo.png", name: "push-ups", unit: "number", user_id: 1, maxValue: "300"},
  {icon: "https://res.cloudinary.com/newpoint/image/upload/v1618310970/fitness-tracker/scale_ejbpaf.png", name: "weight", unit: "kg", user_id: 1, maxValue: "70"},
  {icon: "https://res.cloudinary.com/newpoint/image/upload/v1618310973/fitness-tracker/speed_v2nyld.png", name: "speed", unit: "km/h", user_id: 1, maxValue: "45"}
])
Measurement.create!([
  {value: "25", user_id: 1, things_to_measure_id: 12},
  {value: "90", user_id: 1, things_to_measure_id: 10},
  {value: "90", user_id: 1, things_to_measure_id: 10},
  {value: "90", user_id: 1, things_to_measure_id: 11},
  {value: "34", user_id: 1, things_to_measure_id: 12},
  {value: "23", user_id: 1, things_to_measure_id: 10},
  {value: "90", user_id: 1, things_to_measure_id: 12},
  {value: "100", user_id: 1, things_to_measure_id: 10},
  {value: "45", user_id: 1, things_to_measure_id: 12},
  {value: "23", user_id: 1, things_to_measure_id: 10},
  {value: "45", user_id: 1, things_to_measure_id: 10},
  {value: "200", user_id: 1, things_to_measure_id: 10},
  {value: "100", user_id: 1, things_to_measure_id: 10},
  {value: "200", user_id: 1, things_to_measure_id: 10},
  {value: "45", user_id: 1, things_to_measure_id: 12}
])


