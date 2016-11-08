
class Wealther 

  def self.weather
    current_nyc = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=newyork,usa&appid=86f8e2033de83c66a83994d20b5c99b8&units=imperial")
    @weather = JSON.parse(current_nyc)

    @show_me = Weather.new(high_temp: @weather["main"]["temp_max"].to_s, low_temp: @weather["main"]["temp_min"].to_s, date_of_weather: Date.today)
    @show_me.save
    # wind_chill: @weather["main"]["wind"]
  end 

end 