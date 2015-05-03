module EventsHelper
	def photos
		flickr = Flickr.new(ENV["FLICKR_KEY"]) 
    user = flickr.users('humbleheartsorg@yahoo.com')
    list = user.photos
    photos = []
    list.each do |hash|
      photos.push({
      	id: hash.id,
        src: "https://farm#{hash["farm"]}.staticflickr.com/#{hash["server"]}/#{hash["id"]}_#{hash["secret"]}.jpg",
        title: hash.title,
        desc: hash.description
      })
    end
    photos
	end
end
