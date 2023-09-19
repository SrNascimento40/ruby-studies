integer_number = -20
puts integer_number
puts integer_number.class

float_number = 2.38
puts float_number

boolean_typo = true
puts boolean_typo

string_typo = "Hello"
puts string_typo

array_typo = ["Halo", 2, 4]
puts array_typo
puts array_typo[0]

first_symbol = :ruby_symbol
puts first_symbol.class
puts first_symbol.object_id
second_symbol = :ruby_symbol
puts second_symbol.object_id

first_hash = {course: 'ruby', language: 'pt-br'}
puts first_hash[:course]