class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:food, :drink, :casual, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday, :area, :img_url, :yelp_url, :users, :location
end
