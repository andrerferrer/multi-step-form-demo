puts "Create some Restaurants"

Restaurant.create! name: "Amareleen", address: "Gloria"
Restaurant.create! name: "Verdeen", address: "Gloria"

meals = [
  {
    name: "Hamburger",
    price_in_cents: 123123
  },
  {
    name: "Cheeseburger",
    price_in_cents: 123123
  }
]

Restaurant.all.each do |restaurant|
  meals.each do |meal|
    Meal.create! **meal, restaurant: restaurant
  end
end


puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Done!"
