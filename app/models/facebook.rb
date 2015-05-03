class Facebook < ActiveRecord::Base
  # require "koala"
  require 'flickr.rb'

  # @@graph = Koala::Facebook::API.new([ENV["FACEBOOK_API_KEY"]])

  # def self.page_feed
  #   @@graph.get_connection("477172595731068", "posts")
  # end

  # def self.page_albums
  #   @@graph.get_connection("477172595731068", 
  #     "albums",
  #     {fields: ['id', 'name', 'link']})
  # end
  flickr = Flickr.new(ENV["FLICKR_KEY"]) 
  @@user = flickr.users('humbleheartsorg@yahoo.com')
      # list = @@user.photos
      # sources = []
      # list.each do |hash|
      #   sources.push({
      #     src: "https://farm#{hash["farm"]}.staticflickr.com/#{hash["server"]}/#{hash["id"]}_#{hash["secret"]}.jpg",
      #     title: hash.title,
      #     desc: hash.description
      #   })
      # end
      # render json: sources

  def self.flickr_photos
    @list = @@user.photos
    @list.each do |p|                     # get the last 100 public photos...
    File.open(p.filename, 'wb') do |f|
      p f.puts p.file('Square')
      # f.puts p.file('Square')                   # ...and save a local copy of their square thumbnail
    end
  end
  end

end
