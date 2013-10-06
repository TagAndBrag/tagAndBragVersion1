require 'rubygems'
require'google_drive'

class ProfileController < ActionController::Base
  #include 'PopluateData'
 
 def index
  @level_point = current_points
  @points = @level_point%100
  @next_level_points = points_to_next_level(@points)
  @belt_number = belt_colour+1
  if @level_point < 200 
    @level = "Experienced"
  else
    @level = "Skilled"
  end
  #PopluateData.populate()
  
  #count++


  #end
  
 

# #ws[2, 3] = 'Test1'
# ws.save()

 end


 def current_points
   points = DealInfo.current_points
 end

 def points_to_next_level(current_points)
   next_level = current_points/100 + 1
   next_level_points = (next_level*100) - (current_points)
 end

 def belt_colour
   colour = DealInfo.get_belt
 end

 #def suggestion_for_next_level
 #  suggestion = [ "Buy a new deal",
 #    "share status of deal on facebook and twitter",
 #    "refer a friend for groupon",
 #    "give feedback for groupon deals",
 #    "download groupon app",
 #    "feedback for groupon app"
 #  ]
 #end
end