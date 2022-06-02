module Api
  module V1
    class ProductSerializer
      include JSONAPI::Serializer
      attributes :title, :description, :price, :currency
    end
  end
end
