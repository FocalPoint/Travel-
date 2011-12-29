# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Deal.destroy_all
Deal.create(
:title => "Fall in Boston: low rates at luxurious W hotel -- from $191",
:zipcode => "02116",
:address => "1101 4th Ave",
:city => "Seattle",
:state => "Washington",
:country => "United States",
:valid_dates => "Now-December 30, 2011",
:from_price => "151.00",
:to_price => "151.00",
:price_qualification_code => "per night",
:airport_id => "SEA",
:encoded_id => "2jrvfawk2klsymdhxp6d",
:expiration_date => 11/30/2011,
:go_live_date => 11/01/2011,
:image_url => "http://ak-static.travel-ticker.com/static/images/652501-47x47.jpg",
:url => "www.travel-ticker.com/Vertical/Hotels?vert=H&destination=SEA&pdits=21&tts=00&encId=2jrvfawk2klsymdhxp6d&sid=S298&bid=B311402",
:details => "Set your sights on Seattle and save 20%. Thanks to Orbitz, you can stay at the 4-star Hotel Monaco Seattle from $151, now-December 30. We found the $151 rate November 27-30, but other dates are available from $30 more.",
:supplier_name => "Orbitz.com"    

)