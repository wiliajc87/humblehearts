module EventsHelper
	def albums
		flickr = Flickr.new(ENV["FLICKR_KEY"]) 
    user = flickr.users('humbleheartsorg@yahoo.com')
    list = user.photos
    arr_one, arr_two, arr_three, arr_four, arr_five = *list.group_by { |x| x[:title] }.map(&:last)
	end
end
