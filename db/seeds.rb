# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
mogli = Artist.create!(name: "Mogli")
maps = Artist.create!(name: "Maps")

maps.songs.create!(title: "Aint no body got enough time!")
maps.songs.create!(title: "Why does the sun hurt so good?")
mogli.songs.create!(title: "Fire in tha valley")
mogli.songs.create!(title: "Fermented Apple Water")
# clickbait = Category.create!(name: "Motivation")
# clickbait.posts.create!(title: "10 Ways You Are Already Awesome")
# clickbait.posts.create!(title: "This Yoga Stretch Cures Procrastination, Maybe")
# clickbait.posts.create!(title: "The Power of Positive Thinking and 100 Gallons of Coffee")
