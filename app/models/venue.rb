class Venue
  attr_reader :foursquare_id, :name, :image_url

  def initialize(params = {})
    @foursquare_id = params[:id]
    @name = params[:name]
    best_photo = params[:bestPhoto]
    @image_url = best_photo[:prefix] + best_photo[:width].to_s + 'x' + best_photo[:height].to_s + best_photo[:suffix]
  end

  def self.find(foursquare_id)
    foursquare_venue = Foursquare.new.venue(foursquare_id)
    Venue.new(foursquare_venue)
  end
end
