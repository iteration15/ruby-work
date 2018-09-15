#playing with arrays
dogs = ['collie','bulldog','beagle','chow']

puts "the fourth dog in the list is: " + dogs[3] + "\n\n"

#playing with hashes
collie_hash = {"name"        => "collie",
               "lifespan"    => "13-16 years",
               "temperament" => "obedient"}

puts "a collie's temperament is: " + collie_hash["temperament"] + "\n\n"

#calculate the volume of a box
length = 5
width = 5
height = 13
volume = length * width * height
puts "the volume of the box is: " + volume.to_s #convert int to string
puts "\n"

#playing with conditionals
age = 7
if age < 29
  puts "you're young!"
elsif age == 43
  puts "great age!"
else
  puts "you're too old!"
end

#single line conditionals
puts "\nvery very old!" if age > 80
puts "\nyou're just a baby" unless age > 20

#ternary statement
age > 80 ? puts("\nyoure super old!") : puts("\nnot too old yet")
