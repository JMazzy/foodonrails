class MapsController < ApplicationController
  def index

    if signed_in_user?
      @user = current_user
    else
      redirect_to new_user_path
    end

    @trucks = JSON.generate(FoodTruck.all.map do |truck|
      { title: truck.name, lat: truck.latitude, lng: truck.longitude }
    end).to_json.html_safe

  end
end
