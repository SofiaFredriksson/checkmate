class BillSerializer < ActiveModel::Serializer
  has_one :customer
  attributes :id, :restaurant_name, :total_price, :service_charge, :customer
end

