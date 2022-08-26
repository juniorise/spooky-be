module Api
  module V1
    module CollectionOptionsHelpers
      def collection_links(collection)
        {
          self: request.original_url,
          next: pagination_url(collection.next_page || collection.total_pages),
          prev: pagination_url(collection.prev_page || 1),
          last: pagination_url(collection.total_pages),
          first: pagination_url(1)
        }
      end

      def collection_meta(collection)
        {
          count: collection.size,
          total_count: collection.total_count,
          total_pages: collection.total_pages
        }
      end

      # TODO: support :format, :page, :per_page, :sort, :include, :fields, filter: {}
      def collection_permitted_params
        params.permit(:format, :page, :per_page)
      end

      private

      def pagination_url(page)
        url_for(collection_permitted_params.merge(page: page))
      end

      def collection_options(collection)
        {
          links: collection_links(collection),
          meta: collection_meta(collection),
        }
      end
    end
  end
end