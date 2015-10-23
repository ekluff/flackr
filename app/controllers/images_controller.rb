class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  def index
    @images = Image.all
  end

  # GET /images/1
  def show
  end

  # GET /images/new
  def new
    # @user = current_user
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
    # @user = current_user
  end

  # POST /images
  def create
    @image = current_user.images.new(image_params)
    # @image = Image.new(image_params)

    if @image.save
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /images/1
  def update
    # binding.pry
    if params[:tag] != nil
      @image.tag_list.add(params[:tag])
      if @image.save
        render :edit
      else
        redirect_to @image
      end
    else
      if @image.update(image_params)
        redirect_to @image, notice: 'Image was successfully updated.'
      else
        render :edit
      end
    end
  end

  # DELETE /images/1
  def destroy
    @image.asset = nil
    @image.save

    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit(:caption, :title, :asset, :tag_list, :image )
    end
end
