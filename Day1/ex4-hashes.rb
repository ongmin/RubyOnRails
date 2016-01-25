# Given hash is:
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}


# How would you return the string "One"?
A1 = h[1]
p A1

# How would you return the string "Two?
A2 = h[:two]
p A2

# How would you return the number 2?
A3 = h["two"]
p A3

# How would you add {3 => "Three"} to the hash?
A4 = h[3] = "Three"
p h

# How would you add {:four => 4} to the hash?
A5 = h[:four] = 4
p h
