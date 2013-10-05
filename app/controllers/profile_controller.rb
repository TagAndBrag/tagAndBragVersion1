require 'rubygems'
require'google_drive'

class ProfileController < ActionController::Base
  #include 'PopluateData'
 
 def index
  @points = current_points
  @next_level_points = points_to_next_level(@points)
  @belt_number = belt_colour
  #PopluateData.populate()
#   session = GoogleDrive.login("GeekOn.chennai@gmail.com","GeekOnChennai" )
#   ws = session.spreadsheet_by_title('Copy of TimelineJS Template').worksheets[0]
#   count = 2;
#  debugger
#   pop = DealInfo.all
 
#   #pop.each do |row|
#   ws[count,1] = pop[0].created_at
#   #ws[count][2] = 
#   ws[count,3] = pop[0].title
#   ws[count,4] = pop[0].description
#   ws[count,5] = pop[0].imageLink
#   ws[count,6] = pop[0].price.to_i
#   ws[count,7] = pop[0].imageLink
#   ws[count,8] = pop[0].imageLink

#   #count++


#   #end
  
 

# #ws[2, 3] = 'Test1'
# ws.save()

 end


 def current_points
   points = DealInfo.current_points
 end

 def points_to_next_level(current_points)
   next_level = current_points/10 + 1
   next_level_points = (next_level * 100) - (current_points * 10)
 end

 def belt_colour
   colour = DealInfo.get_belt
 end

 def suggestion_for_next_level
   suggestion = [ "Buy a new deal",
     "share status of deal on facebook and twitter",
     "refer a friend for groupon",
     "give feedback for groupon deals",
     "download groupon app",
     "feedback for groupon app"
   ]
 end
end