class StationsController <ApplicationController

  def index
    @stations = HTTParty.get("http://www.capitalbikeshare.com/data/stations/bikeStations.xml")
    render xml: @stations
  end

end

