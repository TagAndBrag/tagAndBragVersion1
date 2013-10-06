require 'rubygems'
require'google_drive'

class BuyDealController < ActionController::Base

  def index
    #debugger
    #DealInfo.create(:title => 'One large specialty or up to five topping pizza', :price =>"14", :description => '1. Pull up Groupon with our mobile app (or print it out). Online order required, visit http://gr.pn/jRyJuH or http://gr.pn/14OpC3E (mobile orders). Sign in or create an account, then click \"Order Now\" at the top of the site & enter the redemption code found in the middle of your Groupon into the Promo Code field.',
    #:imageLink => "https://img.grouponcdn.com/deal/aQTwiHiPzZyN3yUbinyL/to-440x267/v1/t100x100.jpg", :sitelink =>'http://www.papajohns.com', :date =>'06/15/2013')
    #Location.create(:lng=>-33.890,  :lat=>151.274)
    #Location.create(:lng=>-33.923036,  :lat=>151.259052)
    #Location.create(:lng=>-34.028249,  :lat=>151.157507)
    #Location.create(:lng=>-33.80010128657071,  :lat=>151.28747820854187)

    session = GoogleDrive.login("GeekOn.chennai@gmail.com","GeekOnChennai" )
       ws = session.spreadsheet_by_title('Copy of TimelineJS Template').worksheets[0]
       count = 2;

       pop = DealInfo.all

       pop.each do |row|
       ws[count,1] = row.date
       ws[count,3] = row.title
       ws[count,4] = row.description
       ws[count,5] = row.imageLink
       ws[count,6] = "$#{row.price}"
       ws[count,7] = "<a href=#{row.sitelink} target=\"_blank\">Deal Link</a>"
       ws[count,8] = row.imageLink
       count = count+1
         end


    ws.save()
end
end