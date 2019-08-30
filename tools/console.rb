require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Startup.all
uber = Startup.new("Uber", "Dude McDude", "Bay Area")
Startup.new("Yelp", "Sally Mae", "Las Vegas")
Startup.new("Seamless", "John Smith", "NYC")

Startup.pivot("LA","Uber")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line