class StaticPagesController < ApplicationController
  respond_to :html, :js, only: :random

  def home
    @url = Url.new
  end

  def api
  end

  def random
    @url = Url.where(public: true).sample

    respond_with
  end
end
