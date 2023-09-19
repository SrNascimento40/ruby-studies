print "today is sunny, rainy or cloudy? "
day =  gets.chomp

print "\n", "*"*60, "\n"

if day == "sunny"
    puts "i love sunny days"
elsif day == "rainy" 
    puts "ok, it's gonna refresh the weather"
elsif day == "cloudy" 
    puts "Probably is gonna rain"
else
    puts "sorry, i don't understand"
end

print "\n", "*"*60, "\n"

case day
when "sunny"
    puts "i love sunny days"
when "rainy"
    puts "ok, it's gonna refresh the weather"
when "cloudy"
    puts "Probably is gonna rain"
else
    puts "sorry, i don't understand"
end

print "\n", "*"*60, "\n"

unless day == "sunny"
    puts "oh, i prefer sunny days..."
end

print "\n"