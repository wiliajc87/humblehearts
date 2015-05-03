module EventsHelper
	def albums
		flickr = Flickr.new(ENV["FLICKR_KEY"]) 
    user = flickr.users('humbleheartsorg@yahoo.com')
    list = user.photos.first(50)
    array_one, array_two = *list.group_by { |x| x[:title] }.map(&:last)
	end
end
