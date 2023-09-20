require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://www.ruby-lang.org/pt/"))
a = doc.at('h3')

puts a