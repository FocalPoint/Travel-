require 'net/http'
require "xmlsimple" #have to install the ruby gem, "xml-simple"

class PagesController < ApplicationController
  
  def home
    #raw_data = Net::HTTP.get(URI.parse("http://api.ean.com/ean-services/rs/hotel/v3?_wadl&type=xml&apiKey=am8ta2ky9mfa28tftbj9zjsu")) This doesn't work because of the _wadl
    raw_data = Net::HTTP.get(URI.parse("http://api.ean.com/ean-services/rs/hotel/v3/list?minorRev=5&apiKey=am8ta2ky9mfa28tftbj9zjsu&city=Chicago&cid=55505&numberOfResults=10&arrivalDate=12/12/2011&departureDate=12/16/2011&sort=DEFAULT&callback=displayHotelList&_type=json")) 
    @data = JSON.parse(raw_data)
  end
  
  def hotwire
    raw_data = Net::HTTP.get(URI.parse("http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&price=0~999&theme=20"))
    @data = XmlSimple.xml_in(raw_data)
  end
  
  def jeff
    raw_data = Net::HTTP.get(URI.parse("http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&price=0~999&theme=20"))
    @data = XmlSimple.xml_in(raw_data, :ForceArray => false)
    @deals = @data["Result"]["TravelTickerDeal"]
  end

end
# http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&destination=las&price=0~99&shouldbackfill=false
# http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&destination=mdw&price=400~*&theme=12

# http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&price=0~999&theme=20
# 
# Net::HTTP.get(URI.parse("http://api.hotwire.com/v1/deal/travel-ticker?apikey=svyrbz4zeujm5udyunv5fxwv&price=0~999&theme=20"))