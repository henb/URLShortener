class StaticPagesController < ApplicationController
  respond_to :html, :js, only: :random

  def home
    @url = Url.new
  end

  def api
  end

  def random
    @url = Url.published.sample
    respond_with @url
  end
end
