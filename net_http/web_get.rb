#este código salva uma ṕágina web como um arquivo index.html

require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

File.open('example.html', 'w') do |line|
    line.puts(example)
end
