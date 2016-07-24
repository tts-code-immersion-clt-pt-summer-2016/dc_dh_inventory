puts
puts "Dan & Danielle's Farmer's Market Inventory Count"
puts
veggies = {"Tomato" => 18, "Squash" => 12, "Zucchini" => 10}

input = ""
veg_amount = 0

while TRUE

puts "Do you want to check your inventory? (y/n)?"
break if gets.chomp.downcase != 'y'

print "Enter a veggie: "
 input = gets.chomp.capitalize!
 if veggies.include?(input) then
   veg_amount = veggies[input]
   puts "There are #{veg_amount} #{input}\'s left. Do you want up update this amount? (y/n)?"
   break if gets.chomp.downcase != 'y'
   puts "How many #{input}\'s should there be?"
   veg_amount = gets.chomp
   veggies[input] = veg_amount
 else
    puts "We don't have any #{input}\'s."
    puts "Whould you like to add #{input}\'s as a veggie? (y/n)?"
  break if gets.chomp.downcase != 'y'
    input = input
    puts "How may #{input}\'s are there?"
    veg_amount = gets.chomp
    veggies[input] = veg_amount.to_i
end
end
puts "Good Bye"
puts veggies
