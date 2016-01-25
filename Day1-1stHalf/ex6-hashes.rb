# Given Hash:
users = {
  "Arnold" => {
    :twitter => "schwarzenegger",
    :favourite_numbers => [12, 42, 75]
  },
  "John Cena" => {
    :twitter => "johncena",
    :favourite_numbers => [8, 12, 24]
  },
  "Martin Luther" => {
    :twitter => "martinluther",
    :favourite_numbers => [12, 14, 85]
  },
}

arnold_fav = users["Arnold"][:favourite_numbers]
john_fav = users["John Cena"][:favourite_numbers]
martin_fav = users["Martin Luther"][:favourite_numbers]



# How would you access Arnold’s Twitter handle (i.e. the string "schwarzenegger")?
A1 = users["Arnold"][:twitter]
p A1

# How would you add the number 7 to John Cena’s favorite numbers?
A2 = john_fav << 7
p users["John Cena"][:favourite_numbers]

# How would you add yourself to the users hash?
A3 = users["Min Ong"] = {
  :twitter => "ongmin",
  :favourite_numbers => [1, 2, 3]
}
p users

# How would you return the array of John Cena’s favorite numbers?
A4 = john_fav
p A4

# How would you return the smallest of John Cena’s favorite numbers?
A5 = john_fav.min
p A5

# How would you return an array of Martin’s favorite numbers that are also even?

A6 = martin_fav.select{ |num| num % 2 == 0 }
p A6

# How would you return an array of the favorite numbers common to all users?
A7 = martin_fav & john_fav & arnold_fav
p A7
# Can also be written:
# martin_fav & \
# john_fav & \
# arnold_fav


# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
A8 = martin_fav | john_fav | arnold_fav
p A8.sort
