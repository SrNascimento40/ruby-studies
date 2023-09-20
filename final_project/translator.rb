require 'uri'
require 'net/http'

class Input_text
    def text_to_translate (language)
        puts "Escreva o texto que deseja traduzir:"
        original_text = gets.chomp
        call_api(original_text, language)
    end

    def parse (to_parse, original)
        parsed = to_parse.match(/"text":"(.*?)"/)
        parsed = parsed.to_s
        parsed = parsed.gsub(/^.{8}/, '')
        final = parsed.sub(/.$/, '')
        puts final, "\n"
        write_on_txt(original, final)
    end

    def write_on_txt (original, translated)
        File.open('translations.txt', 'a') do |line|
            line.puts Time.now
            line.puts ''
            line.puts 'Original:'
            line.puts original
            line.puts ''
            line.puts 'translated:'
            line.puts translated
            line.puts ''
            line.puts ''
          end
          
    end

    def call_api (text, language)
        url = URI("https://microsoft-translator-text.p.rapidapi.com/translate?to%5B0%5D=#{language}&api-version=3.0&profanityAction=NoAction&textType=plain")
    
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
    
        request = Net::HTTP::Post.new(url)
        request["content-type"] = 'application/json'
        request["X-RapidAPI-Key"] = 'ac12db97bemshb125f17854d8ebep136031jsnfbc8d79269dc'
        request["X-RapidAPI-Host"] = 'microsoft-translator-text.p.rapidapi.com'
        request.body = "[\n    {\n        \"Text\": \"#{text}\"\n    }\n]"
        response = http.request(request)
        to_parse = response.read_body
        parse(to_parse, text)
    end

    def main_menu
        loop do

            puts "Digite um número e confirme para escolher para qual idioma será traduzido:\n1 - Portugues\n2 - English\n3 - Español\n4 - Русский\n0 - Sair"
            selected = gets.chomp.to_i
            case selected
            when 1
                text_to_translate ("pt")
            when 2
                text_to_translate ("en")
            when 3
                text_to_translate ("es")
            when 4
                text_to_translate ("ru")
            when 0
                break
            else 
                puts "Opção inválida!"
            end
        end
    
    end
end

input_text = Input_text.new

input_text.main_menu
