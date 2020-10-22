class Weather < ApplicationRecord

require "openweather2"

  Openweather2.configure do |config|
  config.endpoint = 'http://api.openweathermap.org/data/2.5/weather'
  config.apikey = '5aa8d49373866bd6724eceb3e20469c3'
  end

  @openweather = Openweather2.get_weather(lat: 35, lon: 139)

end
