module Frontend
  class RelaxSoundImagesController < ApplicationController
    http_basic_authenticate_with :name => ENV['ADMIN_USERNAME'], :password => ENV['ADMIN_PASSWORD']
  
    def index
    end
  
    def create
      relax_sound_image = RelaxSoundImage.create!(alt: params[:alt], file: params[:file])
      session[:relax_sound_image_id] = relax_sound_image.id
      redirect_to relax_sound_image_path(relax_sound_image)
    end
  
    def show
      @relax_sound_image = RelaxSoundImage.find(params[:id])
    end
  
    def new
    end
  end
end  