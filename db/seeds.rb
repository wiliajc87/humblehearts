#team seeds

taylor = TeamMember.create(name: 'Taylor', title: 'like a boss', photo_url: 'https://scontent-ord.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11150484_10204278335862435_8430420190725809863_n.jpg?oh=077cdc9bd9c9481f97e7ef526315fe09&oe=55D2324D', bio: 'To avoid this problem, refrain from the following:
Do not clean your ears with bobby pins, twisted napkin corners, or other long pointed objects.
Do not use cotton swabs. They will merely push the wax deeper into the ear canal, causing a blockage.
Do not use ear candles.')


#event seeds

Event.create(title: "Annual Holiday Christmas Party", frequency: "Annually", description: "Wraping gifts and showing love to the homeless by filling shoe boxes with all kinds of treats such as socks, hygiene products, snacks, gloves, scarves and other miscellaneous items to pass out during the holiday" , album_link: "" )

Event.create(title: "Free Coat, Clothing, and Toy Giveaway", frequency: "Annually" , description: "Showing kindness and love by providing a hot meal, warm clothing, and new toys to children", album_link: "" )

Event.create(title: "Free Prom and Graduation Dress Giveaway" , frequency: "Annually" , description: "Giving low income girls a free dress to prom or their graduation along with shoes, makeup, and accessories", album_link: "")

Event.create(title: "Center on Halsted Youth LGBTQ Coat and Clothing Giveaway Dinner", frequency: "Annually" , description: "Collecting coats, warm clothing, and hygiene products for homeless teens", album_link: "" )

Event.create(title: "Back to School Summer Kids Fest" , frequency: "Annually", description: "Details to come in the spring of 2015", album_link: "" )

Event.create(title: "Winter Scarf Making Event", frequency: "Annually" , description: "Getting ready for the hoildays by making homemade scarves for children in need", album_link: "" )

Event.create(title: "Baby Shower", frequency: "Annually", description: "Our giant baby shower to show support to low income mothers who can shop for free on all of our baby items", album_link: "" )

cat = ["shelter", "community centers", "housing laws", "homeless laws", "pantries", "soup kitchens", "free medical centers", "low income community medical clinics", "mental health and addiction services", "other" ]

#Community Resource Seed
cat.each do |category|
	category
	2.times do CommunityResource.create(name: "bloop", phone: "000-999-3333", url: "http://www.fakeu.com", address: "111.fakey drive chicago il 22222", category: category, description: "this is a great resource you should use")
	end
end
