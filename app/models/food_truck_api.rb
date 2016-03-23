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

  def self.allVendors
    vendors = []
    json_response = HTTParty.get("http://data.streetfoodapp.com/1.1/vendors").body

    response = JSON.parse(json_response)

    # response.keys.each do |key|
    #   name = response[key]['name']
    #   location = response[key]['last']
    #   truck = { name: name, location: location }
    #   vendors << truck
    # end

    return response
  end

end
