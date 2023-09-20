/expressao/

%r{expressão}

Regexp.new('expressao')

puts (/by/ =~ 'ruby')

phrase = "Hello, how are you?"

match_data = /how/.match('phrase')
puts match_data
match_data = /how/.match(phrase)
puts match_data

pre_data = match_data.pre_match
puts pre_data

post_data = match_data.post_match
puts post_data

# /\/ é um escape que permite usar simbolos ao procurar padrões
hm = /\?/.match('Tudo bem?')
dm = /\!\!\!/.match('Tudo bem!!!')
puts hm
puts dm

# character class

character = /[t]exto/.match('texto começando com t')
puts character

#range
range = /[1-5]/.match('123')
puts range

#alpha
alpha = /[a-z]/.match('Oi')
puts alpha

#numero - procura a letra a seguida de um numero de 0 a 9
numero = /A\d/.match('A17')
puts numero

#limitando {quantidade pra puxar}
limit = "A343".match(/[A~Z]\d{3}/)
puts limit
limit = "A343".match(/[A~Z]\d{2}/)
puts limit

#limitando {no minimo 3 nesse caso}
limit = "A343456".match(/[A~Z]\d{3,}/)
puts limit

