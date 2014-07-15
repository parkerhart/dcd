class DirectionsController <ApplicationController

  def show
    get_stations
  end

  private

  def get_stations
    @stations = HTTParty.get("http://www.capitalbikeshare.com/data/stations/bikeStations.xml")
  end

end