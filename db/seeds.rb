# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t = TeamMember.create(name: 'Shea', title: 'like a boss', photo_url: 'https://scontent-ord.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11150484_10204278335862435_8430420190725809863_n.jpg?oh=077cdc9bd9c9481f97e7ef526315fe09&oe=55D2324D', bio: 'To avoid this problem, refrain from the following:
Do not clean your ears with bobby pins, twisted napkin corners, or other long pointed objects.
Do not use cotton swabs. They will merely push the wax deeper into the ear canal, causing a blockage.
Do not use ear candles.')

taylor = TeamMember.create(name: 'Taylor', title: 'like a boss', photo_url: 'https://scontent-ord.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11150484_10204278335862435_8430420190725809863_n.jpg?oh=077cdc9bd9c9481f97e7ef526315fe09&oe=55D2324D', bio: 'To avoid this problem, refrain from the following:
Do not clean your ears with bobby pins, twisted napkin corners, or other long pointed objects.
Do not use cotton swabs. They will merely push the wax deeper into the ear canal, causing a blockage.
Do not use ear candles.')

cat = ["shelter", "community centers", "housing laws", "homeless laws", "pantries", "soup kitchens", "free medical centers", "low income community medical clinics", "mental health and addiction services", "other" ]

cat.each do |category|
	category
	2.times do CommunityResource.create(name: Faker::Lorem.sentence, phone: Faker::PhoneNumber.phone_number, url: Faker::Internet.url, address: Faker::Address.street_address, category: category, description: Faker::Lorem.paragraph)
	end
end