class Recipe < ActiveRecord::Base
  include HTTParty

  base_uri "http://#{ENV["FOOD2FORK_SERVER_AND_PORT"] || 'www.food2fork.com'}/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for(keyword)
    get('/search', query: { q: keyword })['recipes']
  end
end
