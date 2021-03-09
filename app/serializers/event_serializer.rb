class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :casual, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday, :area, :img_url, :location, :users
end
