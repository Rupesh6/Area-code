Dail_Book = 
{
"Bangalore" => "101",
"Hyderabad" => "202",
"Mumbai" => "303",
"Delhi" => "404",
"Chennai" => "505",
"Kolkata" => "606",
}
def get_city_names (somehash)
 somehash.keys
end
def get_area_code (somehash,key)
 somehash[key]
end
loop do 
puts "Do you want to lookup an area code based on a city name? (y/n)"
answer = gets.chomp.downcase
break if answer != "y"
puts "Which city do you want the area code?"
puts get_city_names (Dail_Book)
puts "Enter your selection"
prompt = gets.chomp
if Dail_Book.include? (prompt)
 puts "The area code for #{prompt} is #{get_area_code(Dail_Book,prompt)}"
else
 puts "You entered a city name not in the dictionary"
end
end
