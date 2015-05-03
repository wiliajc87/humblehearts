CSV.foreach("../content/test.csv") do |row|
  if row[0] == ","
    next
  CommunityResource.create(row)
end


t = TeamMember.create(name: 'Shea', title: 'like a boss', photo_url: 'https://scontent-ord.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11150484_10204278335862435_8430420190725809863_n.jpg?oh=077cdc9bd9c9481f97e7ef526315fe09&oe=55D2324D', bio: 'To avoid this problem, refrain from the following:
Do not clean your ears with bobby pins, twisted napkin corners, or other long pointed objects.
Do not use cotton swabs. They will merely push the wax deeper into the ear canal, causing a blockage.
Do not use ear candles.')

