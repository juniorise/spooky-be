module Api
  module V1
    class ProductsController < Api::V1::BaseController
      def collection
        Product.all
      end

      def collection_serializer
        Api::V1::ProductSerializer
      end

      def resource
        Product.find(params[:id])
      end

      def resource_serializer
        Api::V1::ProductSerializer
      end
    end
  end
end