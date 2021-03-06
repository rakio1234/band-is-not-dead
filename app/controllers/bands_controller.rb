class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]
  before_action :set_genre_tags_to_gon, only: [:edit]
  before_action :set_available_tags_to_gon

  # GET /bands
  # GET /bands.json
  def index
    if current_user.admin?
      @bands = Band.all
    else
      @bands = current_user.bands
    end
  end

  # GET /bands/1
  # GET /bands/1.json
  def show
  end

  # GET /bands/new
  def new
    @band = Band.new
    @images = @band.images.build
  end

  # GET /bands/1/edit
  def edit
    @images = @band.images
  end

  # POST /bands
  # POST /bands.json
  def create
    @band = current_user.bands.build(band_params)

    respond_to do |format|
      if @band.save
        format.html { redirect_to @band, notice: 'Band was successfully created.' }
        format.json { render :show, status: :created, location: @band }
      else
        format.html { render :new }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.json
  def update
    respond_to do |format|
      if @band.update(band_params)
        format.html { redirect_to @band, notice: 'Band was successfully updated.' }
        format.json { render :show, status: :ok, location: @band }
      else
        format.html { render :edit }
        format.json { render json: @band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bands/1
  # DELETE /bands/1.json
  def destroy
    @band.destroy
    respond_to do |format|
      format.html { redirect_to bands_url, notice: 'Band was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(
        :name,
        :member,
        :music,
        :image,
        :description,
        :image_cache,
        :remove_image,
        :genre_list,
        :prefecture,
        :start_year,
        :end_year,
        images_attributes: [:id, :attachment, :_destroy]
      )
    end

    def set_genre_tags_to_gon
      gon.genre_tags = @band.genre_list
    end

    def set_available_tags_to_gon
      gon.available_tags =  Band.tags_on(:genres).pluck(:name)
    end
end
