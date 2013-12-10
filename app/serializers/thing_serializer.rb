class ThingSerializer < ActiveModel::Serializer
  attributes :id, :number, :category, :date
end
