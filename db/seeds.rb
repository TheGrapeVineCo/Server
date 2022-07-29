# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
  User.create(email: "testadmin@test.com", password: "adminpw1", password_confirmation: "adminpw1", admin: true)
end

if WineListing.count == 0
  WineListing.create(
    brand: "Torbreck",
    grape_variety: "Shiraz",
    year: 2019,
    category: "Red",
    country: "Australia",
    region: "Barossa Valley",
    description: "Torbreck's Woodcutter's Shiraz is produced from hand-tended low-yielding vines. Bold and hearty it shows ripe sweet fruit flavours with supple tannins. Has quickly become a firm favourite of all the full-bodied Barossa red wine lovers out there.",
  )
  WineListing.create(
    brand: "Two Hands",
    grape_variety: "Shiraz",
    year: 2020,
    category: "Red",
    country: "Australia",
    region: "Barossa Valley",
    description: "So drinkable, this wine jumps out of the glass and leaps down your through. Seamless with a clean finish, the acid, fruit and tannins work together to deliver the perfectly balance Barossa Shiraz.",
  )
  WineListing.create(
    brand: "Frogmore Creek",
    grape_variety: "Pinot Noir Chardonnay",
    year: 2017,
    category: "Sparkling",
    country: "Australia",
    region: "Tasmania",
    description: "Light beads, subtle, fresh and delicate. Beautiful wine.",
  )
  WineListing.create(
    brand: "Chapel Hill",
    grape_variety: "Sangiovese",
    year: 2021,
    category: "Rose",
    country: "Australia",
    region: "Adelaide Hills",
    description: "A dry and textured style which capitalises on Sangiovese’s delicious 'sweet' core of sour cherry fruit. The Sangiovese Rosé is brimming with cranberry and pomegranate aromas. The palate explodes with the flavours of fresh juicy raspberries and sour cherries, culminating with a spicy tannin finish.",
  )
  WineListing.create(
    brand: "Tolpuddle",
    grape_variety: "Sangiovese",
    year: 2013,
    category: "White",
    country: "Australia",
    region: "Tasmania",
    description: "Tolpuddle Vineyard Chardonnay reflects the cool maritime climate of Tasmania's Coal River Valley. The result is fine and precise Chardonnay with a backbone of firm acidity, and a combination of lightness of texture and intensity of flavour.",
  )
end
