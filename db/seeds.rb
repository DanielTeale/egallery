# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

token = ArtsyService.new
artist_list = ['andy-warhol','pablo-picasso']

artist_list.each do |slug|
  artist_hash = token.search_artist(slug).parsed_response
  artist = Artist.new
  artist.name = artist_hash['name']
  artist.password = 'a'
  artist.biography = artist_hash['biography']
  artist.save
end

