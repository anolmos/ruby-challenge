def three_method(number)


((number +5)*2 -4)/2 - number.to_s

end


puts "Give me a number:"

first_number = gets.to_i

puts "Always " + three_method(first_number).to_s