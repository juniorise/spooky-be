module Frontend
  class RelaxSoundsController < ApplicationController
    before_action :set_relax_sound, only: %i[ show edit update destroy ]

    # GET /relax_sounds or /relax_sounds.json
    def index
      @relax_sounds = RelaxSound.all
    end

    # GET /relax_sounds/1 or /relax_sounds/1.json
    def show
    end

    # GET /relax_sounds/new
    def new
      @relax_sound = RelaxSound.new
    end

    # GET /relax_sounds/1/edit
    def edit
    end

    # POST /relax_sounds or /relax_sounds.json
    def create
      @relax_sound = RelaxSound.new(relax_sound_params)

      respond_to do |format|
        if @relax_sound.save
          format.html { redirect_to relax_sound_url(@relax_sound), notice: "Relax sound was successfully created." }
          format.json { render :show, status: :created, location: @relax_sound }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @relax_sound.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /relax_sounds/1 or /relax_sounds/1.json
    def update
      respond_to do |format|
        if @relax_sound.update(relax_sound_params)
          format.html { redirect_to relax_sound_url(@relax_sound), notice: "Relax sound was successfully updated." }
          format.json { render :show, status: :ok, location: @relax_sound }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @relax_sound.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /relax_sounds/1 or /relax_sounds/1.json
    def destroy
      @relax_sound.destroy

      respond_to do |format|
        format.html { redirect_to relax_sounds_url, notice: "Relax sound was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_relax_sound
      @relax_sound = RelaxSound.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relax_sound_params
      params.require(:relax_sound).permit(:relax_sound_category_id, :relax_sound_author_id, :icon, :license, :color_of_day, :downloadable_url, :active)
    end
  end
end
