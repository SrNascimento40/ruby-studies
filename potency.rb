numbers = [12, 3, 7]


new_numbers = numbers.map do |element|
    element ** 2
end

puts "Original: #{numbers}"
puts "elevado a segunda potência: #{new_numbers}"