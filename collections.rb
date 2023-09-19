states = []


puts states.empty?
puts

states.push('São Paulo')
puts states
puts 

states.push('Rio de Janeiro', "Amazonia", "Bahia")
puts states
puts 

states.insert(0, 'Acre', 'Amapa')
puts states
puts 
puts states[2]
puts 
puts states[1..3]
puts 
puts states[-1]
puts 
puts states.first
puts
puts states.count
#count e lenght tem mesma função
#mas o lenght pode contar letras em uma string e o count apenas quantidades em uma array
puts states.length

puts

puts states.empty?
puts states.include?('Acre')
puts

states.delete_at(2)
puts states
puts
states.pop
puts states
puts
states.shift
puts states
puts

