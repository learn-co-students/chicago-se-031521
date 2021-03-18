# where all the code will be ran

# used for gems
require 'pry'

# used for files
require_relative 'models/user.rb'
require_relative 'models/tweet.rb'

# users
zech = User.new("Zech", "Hi! I'm Zech =)")
toni = User.new("Toni", "Sup it's Toni")

# tweets
tweet1 = Tweet.new("I love people!", zech)
# tweet1 = Tweet.new("I love people!", User.new("Zech", "Hi! I'm Zech =)"))
tweet2 = Tweet.new("I'm going outside today!", toni)

binding.pry
