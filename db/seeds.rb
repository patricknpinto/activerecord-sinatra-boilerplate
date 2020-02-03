# Manually add some data
# Restaurant.create(name: 'seeded', address: 'portugal')

require 'faker'

100.times do 
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city
  )
end

require "json"
require "rest-client"
require 'pry-byebug'

response = RestClient.get "https://hacker-news.firebaseio.com/v0/topstories.json"

stories = JSON.parse(response).first(2)

# binding.pry
# => repos is an `Array` of `Hashes`.

# repos.size

# stories.each do |story|
#   response = RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{story}.json"

#   story = JSON.parse(response)

#   binding.pry
#   Restaurant.create(
#     name: story['title'],
#     address: story['url']
#   )
# end














