require 'uri'
require 'net/http'

class Input_text
    
    def parse (to_parse)
        parsed = to_parse.match(/"text":"(.*?)"/)
        parsed = parsed.to_s
        parsed = parsed.gsub(/^.{8}/, '')
        final = parsed.sub(/.$/, '')
        puts final
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
        parse(to_parse)
    end

    def choose_language
        puts "digite um número e confirme para escolher para qual idioma será traduzido:\n1 - Portugues\n2 - English\n3 - Español\n4 - Русский"
        selected = 
    end
end

input_text = Input_text.new

input_text.call_api("está tudo bem!!", "es")
