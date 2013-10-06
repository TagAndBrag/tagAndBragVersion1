class ViewTimelineController < ActionController::Base
  def index
 #      @location = [
 #  [-33.890542, 151.274856],
 #  [-33.923036, 151.259052],
 #  [-34.028249, 151.157507],
 #  [-33.80010128657071, 151.28747820854187],
 #  [-33.950198, 151.259302]
 #]

    loc = Location.find(:all,:select => 'lng, lat')
   @location = loc.map do |lo|
                na = []
                na << lo.lng
                na << lo.lat
             end
    end
end