class GifsController < ApplicationController
  before_action :set_gif, only: [:show, :edit, :update, :destroy]
  # validates_format_of :image_url, :with => %r{\.(gif)$}i, :message => "We only share things in .gif format"


  # GET /gifs
  # GET /gifs.json
  def index
    @gifs = Gif.all.order("created_at DESC")
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  # GET /gifs/1
  # GET /gifs/1.json
  def show
    @gif = Gif.find(params[:id])
    render layout: false
  end

  # GET /gifs/new
  def new
    @gif = Gif.new
    respond_to do |format|
      format.js {}
    end
  end

  # POST /gifs
  # POST /gifs.json
  def create
    @gif = Gif.new(gif_params)

    respond_to do |format|
      if @gif.save
        format.html { redirect_to @gif, notice: 'Gif was successfully created.' }
        format.js {}
      else
        format.js {render :new }
      end
    end
  end

  # DELETE /gifs/1
  # DELETE /gifs/1.json
  def destroy
    @gif.destroy
    respond_to do |format|
      format.html { redirect_to gifs_url, notice: 'Gif was successfully destroyed.' }
      format.js {}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gif
      @gif = Gif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gif_params
      params.require(:gif).permit( :url, :user_id, :file)
    end
end
