# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Influencer.destroy_all

puts "Creating Influencers..."

influencer_full_name = ['Anna Griffin', 'Melissa Peterson', 'Kathryn Smith', 'Patricia Rios', 'Joan Robertson', 'Sharon Hopkins', 'Hannah Ross', 'Emily White', 'Olivia Wagner']
influencer_instagram_username = ['anna_griffin_123', 'melissa_peterson', 'kat_smith', 'patricia_rios_1993', 'j_robertson_lol', 'sharon_hopkins234', 'hross64346', 'emwhite', 'olivia_wagner_official']
influencer_instagram_profile_image = ['https://randomuser.me/api/portraits/women/6.jpg', 'https://randomuser.me/api/portraits/women/84.jpg', 'https://randomuser.me/api/portraits/women/71.jpg', 'https://randomuser.me/api/portraits/women/49.jpg', 'https://randomuser.me/api/portraits/women/26.jpg', 'https://randomuser.me/api/portraits/women/44.jpg', 'https://randomuser.me/api/portraits/women/62.jpg', 'https://randomuser.me/api/portraits/women/14.jpg', 'https://randomuser.me/api/portraits/women/29.jpg' ]
statistics_followers = [21231, 5122, 7161, 91100, 16013, 37300, 3300, 13500, 1000]
statistics_engagement = [6.84, 5.23, 2.36, 1.61, 6.28, 4.73, 4.73, 1.05, 2.0]

i = 0
until i >= influencer_full_name.length
  Influencer.create!(
    'influencer_full_name': influencer_full_name[i],
    'influencer_instagram_username': influencer_instagram_username[i],
    "influencer_instagram_profile_image": influencer_instagram_profile_image[i],
    "statistics_followers": statistics_followers[i],
    "statistics_engagement": statistics_engagement[i]
  )
  i += 1
end
