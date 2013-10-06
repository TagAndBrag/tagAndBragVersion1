require 'rubygems'
require'google_drive'

class BuyDealController < ActionController::Base

  def index
    #debugger
    # DealInfo.create(:title => 'Royalty Lifestyles Limousine', :price =>"", :description => '1. Pull up Groupon with our mobile app (or print it out). Online order required, visit http://gr.pn/jRyJuH or http://gr.pn/14OpC3E (mobile orders). Sign in or create an account, then click \"Order Now\" at the top of the site & enter the redemption code found in the middle of your Groupon into the Promo Code field.',
    # :imageLink => "https://img.grouponcdn.com/deal/aQTwiHiPzZyN3yUbinyL/to-440x267/v1/t100x100.jpg", :sitelink =>'http://www.papajohns.com', :date =>'06/15/2013')
    Location.create(:lng=>-33.950,  :lat=>151.259)
    DealInfo.create(:title =>'Royalty Lifestyles Limousine',:price =>'115',:description =>'Limit 1 per person, may buy 1 additional as a gift. Limit 1 per visit. Reservation required. 4-day cancellation notice required or fee up to Groupon price may apply at appointment. 20% fee required. Valid in Cook and Will counties.',:imageLink => 'https://img.grouponcdn.com/deal/sbX53Ghn1aKCSjLNgXyr/1E-440x267/v1/t440x300.jpg',:sitelink =>'http://www.royaltylifestyles.com/',:date =>'1/27/2013');
    #Location.create(:lng=>-33.923036,  :lat=>151.259052)
    #Location.create(:lng=>-34.028249,  :lat=>151.157507)
    #Location.create(:lng=>-33.80010128657071,  :lat=>151.28747820854187)

    session = GoogleDrive.login("GeekOn.chennai@gmail.com","GeekOnChennai" )
       ws = session.spreadsheet_by_title('Copy of TimelineJS Template').worksheets[0]
       count = 6;

       row = DealInfo.last


       
       ws[count,1] = row.date
       ws[count,3] = row.title
       ws[count,4] = row.description
       ws[count,5] = row.imageLink
       ws[count,6] = "$#{row.price}"
       ws[count,7] = "<a href=#{row.sitelink} target=\"_blank\">Deal Link</a>"
       ws[count,8] = row.imageLink
       



     ws.save()
end
end