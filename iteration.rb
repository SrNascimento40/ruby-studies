# For

fruits = ["apple", "pineapple", "orange", "banana"]

for fruit in fruits
    puts fruit
end

# While

number = 1
puts number
while number<5
    number = number + 1
    puts number
end

# Times

3.times do 
    puts "repeating 3 times!"
end

# Do/While

counter = 1

loop do
    puts counter
    break if counter == 10
    counter += 1
end