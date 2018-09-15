#this program returns the square root of
#an integer based on the user input
puts "enter a number: "
user_input = gets.to_i

puts "you entered: " + user_input.to_s

if user_input > 10
  user_input = user_input * user_input
  puts "the square of your number is: " + user_input.to_s
else
  user_input = user_input * 2
  puts "your number multiplied by 2 is: " + user_input.to_s
end
