require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

fr1 = FundingRound.new("Uber", "BigBucks", "Series A", 4.5)
fr2 = FundingRound.new("Yelp", "Sally Mae", "Series B", 3.2)
fr3 = FundingRound.new("Yelp", "Sally Mae", "Series C", 5.2)

uber = Startup.new("Uber", "Dude McDude", "www.uber.com")
yelp = Startup.new("Yelp", "Sally Mae", "www.yelp.com")
seamless = Startup.new("Seamless", "John Smith", "www.seamless.com")

cap1 = VentureCapitalist.new("BigBucks", 2000000000)
cap2 = VentureCapitalist.new("Lil Bucks", 900000000)
cap3 = VentureCapitalist.new("Few Bucks", 1000000)
cap4 = VentureCapitalist.new("Broke AF", 100)

uber.sign_contract(cap1, "angel", 2000)
uber.sign_contract(cap2, "ange", 500)
uber.sign_contract(cap3, "ang", 900)
yelp.sign_contract(cap4, "an", 1800)
yelp.sign_contract(cap1, "a", 3000)
yelp.sign_contract(cap2, "al", 10000)
yelp.sign_contract(cap3, "ael", 4000)
yelp.sign_contract(cap4, "agel", 6000)

binding.pry


0 #leave this here to ensure binding.pry isn't the last line