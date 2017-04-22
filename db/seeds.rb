# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create([

{title: "test",
author: "test",
genre: "test",
image: "test", 
publication_date: "test",
publisher: "test",
synopsis: "test",},
{title: "test2",
author:"test2",
genre: "test2",
image: "test2", 
publication_date: "test2",
publisher: "test2",
synopsis: "test2",},
{title: "test3",
author: "test3",
genre: "test3",
image: "test3", 
publication_date: "test3",
publisher: "test3",
synopsis: "test3",}
])

Movie.create([
  {
title: "test",
cast: "test",
image: "test",
genre: "test",
director: "test",
premier: "test",
language: "test",
summary: "test"
  },
    {
title: "test2",
cast: "test2",
image: "test2",
genre: "test2",
director: "test2",
premier: "test2",
language: "test2",
summary: "test2"
  },
    {
title: "test3",
cast: "test3",
image: "test3",
genre: "test3",
director: "test3",
premier: "test3",
language: "test3",
summary: "test3"
  }
])

Show.create([
{
title: "test",
genre: "test",
image: "test",
premier: "test",
summary: "test"
},
{
title: "test2",
genre: "test2",
image: "test2",
premier: "test2",
summary: "test2"
},
{
title: "test3",
genre: "test3",
image: "test3",
premier: "test3",
summary: "test3"
}
])