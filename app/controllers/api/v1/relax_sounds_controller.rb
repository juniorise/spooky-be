module Api
  module V1
    class RelaxSoundsController < Api::V1::ResourceController
      def collection
        RelaxSound.page(page)
      end

      def collection_serializer
        Api::V1::RelaxSoundSerializer
      end

      def resource
        RelaxSound.find(params[:id])
      end

      def resource_serializer
        Api::V1::RelaxSoundSerializer
      end
    end
  end
end