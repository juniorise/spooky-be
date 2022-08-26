module Api
  module V1
    class ProductsController < Api::V1::ResourceController
      def collection
        Product.page(page)
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