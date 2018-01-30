# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Books.create!({
  title: "Guide to Wireless Commincations",
  price: 121.90,
  published: 01/01/2016,
  ISBN: "9781305958531"
},
{
  title: "Security +",
  price: 50.00,
  published: 11/01/2014,
  ISBN: "9780789753335"
}
  })
Authors.create!({
  fName: "Jorge",
  lName: "Olenewa",
  genre: "Information Technology",
  dobirth: 00/00/00,
  dodeath: 00/00/00
}
  {
    fName: "Pearson Education",
    lName: "INC",
    genre: "Cert Guide",
    dobirth: 00/00/00,
    dodeath: 00/00/00

    })
Publishers.create!({
  title:"Guide to Wireless Commincations",
  city: "Boston",
  state: "MA"
  }
  {
    title:"Security +",
    city: "Indianapolis",
    state: "IN"
  }
  })
  Categories.create!({
    title:"Information Technology",
  }
  {
    title:"Cert Guide",
    })
