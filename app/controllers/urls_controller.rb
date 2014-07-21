class UrlsController < ApplicationController
  before_action :set_url, only: [:show,:open_link]

  def index
    @urls = Url.where(:public=>true).paginate(:page => params[:page],:per_page => (params[:limit] ? params[:limit] : 10) )
  end

  def new
    @url = Url.new
  end


  def show
  end

  def open_link
    redirect_to @url.link
  end

  def create
    @url = Url.new(url_params)
    @url.alias = snake_ur(@url.alias)

    respond_to do |format|
      if @url.save
        format.html { redirect_to url_path(@url.alias), notice: 'Url was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private

  def set_url
    @url = Url.find_by(:alias=>params[:id])
  end

  def url_params
    params.require(:url).permit(:link,:alias,:public,:ip)
  end
end
