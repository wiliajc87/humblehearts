module EventsHelper
	def albums
		flickr = Flickr.new(ENV["FLICKR_KEY"]) 
    user = flickr.users('humbleheartsorg@yahoo.com')
    list = user.photos.first(50)
    arr_one, arr_two, arr_three, arr_four, arr_five = *list.group_by { |x| x[:title] }.map(&:last)
    # titles = Set.new
    # albums = Array.new
    # list.each { |i| titles << i }
    # titles.each do |title|
    #   list.each do |album|
    #     albums << album#y if album["title"] == title
    #   end
    # end
    # albums
	end
end
