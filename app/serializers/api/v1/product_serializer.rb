module Api
  module V1
    class ProductSerializer < Api::V1::BaseSerializer
      attributes :title, :description, :price, :currency
    end
  end
end
