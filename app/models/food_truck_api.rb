class FoodTruckAPI

  def self.foodTruckRegionsList
    HTTParty.get('http://data.streetfoodapp.com/1.1/regions')
  end

  def self.scheduleByCity(city)
    HTTParty.get("http://data.streetfoodapp.com/1.1/schedule/#{city}")
  end

  def self.scheduleByFoodTruck(food_truck)
    HTTParty.get("http://data.streetfoodapp.com/1.1/vendors/#{food_truck}")
  end

  def self.foodTruckHistory(city, food_truck)
    HTTParty.get("http://data.streetfoodapp.com/1.1/locations/#{city}/#{food_truck}")
  end

end
