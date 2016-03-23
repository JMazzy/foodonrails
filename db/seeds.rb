# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def allVendors
  vendors = []
  json_response = HTTParty.get("http://data.streetfoodapp.com/1.1/vendors").body

  response = JSON.parse(json_response)

  response.keys.each do |key|
    name = response[key]['name']

    if response[key]['last'] && response[key]['last']['latitude'] && response[key]['last']['longitude']
      latitude = response[key]['last']['latitude']
      longitude = response[key]['last']['longitude']

      truck = { name: name, latitude: latitude, longitude: longitude }
      vendors << truck
    else
      p "blah nil"
    end
  end

  return vendors
end

vendors = allVendors

vendors.each do |vendor|

  FoodTruck.create( name: vendor[:name],
  latitude: vendor[:latitude],
  longitude: vendor[:longitude])

end
