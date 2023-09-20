require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('ruby-lang.org', 443)
# para fazer chamadas https v
https.use_ssl = true

# resposta é salva na variável response
response = https.get("/")

#faz um parse do html e salva no doc
doc = Nokogiri::HTML(response.body)

#puxa o primeiro a do documento
a = doc.at('a')

#puxa o primeiro a do documento
doc.search('h3 a').each do |a|
    puts a.content
    puts a['href']
    puts ''
end

#imprime o conteúdo do h1
puts a.content
