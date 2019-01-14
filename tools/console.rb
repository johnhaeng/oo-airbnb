require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



l1 = Listing.new('qn')
l2 = Listing.new('bk')

t1 = Trip.new('jo','qn', 3)
t2 = Trip.new('yo','bk', 10)

g1 = Guest.new('jo')
g2 = Guest.new('yo')

# Put your variables here~!
binding.pry
