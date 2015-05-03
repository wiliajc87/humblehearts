#team seeds

taylor = TeamMember.create(name: 'Taylor', title: 'like a boss', photo_url: 'https://scontent-ord.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11150484_10204278335862435_8430420190725809863_n.jpg?oh=077cdc9bd9c9481f97e7ef526315fe09&oe=55D2324D', bio: 'To avoid this problem, refrain from the following:
Do not clean your ears with bobby pins, twisted napkin corners, or other long pointed objects.
Do not use cotton swabs. They will merely push the wax deeper into the ear canal, causing a blockage.
Do not use ear candles.')


#event seeds

Event.create(title: "Annual Holiday Christmas Party", frequency: "Annually", description: "Wraping gifts and showing love to the homeless by filling shoe boxes with all kinds of treats such as socks, hygiene products, snacks, gloves, scarves and other miscellaneous items to pass out during the holiday" , album_link: "", date_of_event: "January 1, 2015".to_date)

Event.create(title: "Free Coat, Clothing, and Toy Giveaway", frequency: "Annually" , description: "Showing kindness and love by providing a hot meal, warm clothing, and new toys to children", album_link: "", date_of_event: "March 1, 2015".to_date )

Event.create(title: "Free Prom and Graduation Dress Giveaway" , frequency: "Annually" , description: "Giving low income girls a free dress to prom or their graduation along with shoes, makeup, and accessories", album_link: "", date_of_event: "April 20, 2015".to_date)

Event.create(title: "Center on Halsted Youth LGBTQ Coat and Clothing Giveaway Dinner", frequency: "Annually" , description: "Collecting coats, warm clothing, and hygiene products for homeless teens", album_link: "", date_of_event: "November 23, 2015".to_date)

Event.create(title: "Back to School Summer Kids Fest" , frequency: "Annually", description: "Details to come in the spring of 2015", album_link: "", date_of_event: "October 31, 2015".to_date)

Event.create(title: "Winter Scarf Making Event", frequency: "Annually" , description: "Getting ready for the hoildays by making homemade scarves for children in need", album_link: "", date_of_event: "May 3, 2015".to_date)

Event.create(title: "Baby Shower", frequency: "Annually", description: "Our giant baby shower to show support to low income mothers who can shop for free on all of our baby items", album_link: "", date_of_event: "August 29, 2015".to_date)

cat = ["shelter", "community centers", "housing laws", "homeless laws", "pantries", "soup kitchens", "free medical centers", "low income community medical clinics", "mental health and addiction services", "other" ]

#Community Resource Seed
cat.each do |category|
	category
	2.times do CommunityResource.create(name: "bloop", phone: "000-999-3333", url: "http://www.fakeu.com", address: "111.fakey drive chicago il 22222", category: category, description: "this is a great resource you should use")
	end
end

Medium.create(:title => "Bookkeeper is Fearless Friend to the Homeless", :link => "https://slack-redir.net/link?url=http%3A%2F%2Fchicago.suntimes.com%2Fchicago-politics%2F7%2F71%2F153936%2Fbookkeeper-is-fearless-friend-to-the-homeless&v=3", :category => "article")
Medium.create(:title => "Humble Hearts Provides Limitless Charity to Chicago", :link => "https://slack-redir.net/link?url=http%3A%2F%2Fwww.windycitymediagroup.com%2Flgbt%2FHumble-Hearts-provides-limitless-charity-to-Chicago%2F48034.html&v=3", :category => "article")
Medium.create(:title => "Woman 'Means the World' to Homeless", :link => "https://slack-redir.net/link?url=http%3A%2F%2Fchronicleillinois.com%2Fnews%2Fcook-county-news%2Fwoman-means-world-homeless%2F&v=3", :category => "article")
Medium.create(:title => "Humble Hearts | Helping People in Need", :link => "https://www.youtube.com/watch?v=pRLVcdrQdnw", :category => "video")
Medium.create(:title => "Humble Hearts Organization", :link => "http://chicago.everyblock.com/kindness/jul18-humble-hearts-organization-6267613/", :category => "article")
Medium.create(:title => "Medicaid Users Wait for Budget Outcome", :link => "http://www.chicagotalks.org/2015/03/rauners-proposed-cuts-could-have-negative-impact-on-homeless-medicaid-users/", :category => "article")
Medium.create(:title => "Humble Hearts Surprises Linda", :link => "https://www.youtube.com/watch?v=EEidg8jN-vo", :category => "video")
Medium.create(:title =>"Humble Hearts Gives Homeless Man Free Wheel Chair", :link => "https://www.youtube.com/watch?v=TEdu-9aqCZk", :category => "video")
Medium.create(:title => "Humble Hearts Surprises Homeless Teen With Birthday Party", :link => "https://www.youtube.com/watch?v=y5AVb419Br8", :category => "video")
Medium.create(:title => "Humble Hearts Surprises Single Mom with Free Furniture", :link => "https://www.youtube.com/watch?v=97TWXVE_DZk", :category => "video")
Medium.create(:title => "Humble Hearts Helps Single Mom in Need of Baby Items", :link => "https://www.youtube.com/watch?v=GyUR6hv4EBk", :category => "video")