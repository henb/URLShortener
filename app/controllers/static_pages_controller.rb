class StaticPagesController < ApplicationController
  def home
  	@url = Url.new
  end

  def api
  end

  def random
    @url = Url.where(:public=>true).sample

    respond_to do |format|
      format.js
      format.json
      format.html
    end
  end

end
