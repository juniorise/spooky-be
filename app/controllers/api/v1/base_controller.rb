module Api
  module V1
    class BaseController < ApplicationController
      def page
        params[:page] || 1
      end
    end
  end
end