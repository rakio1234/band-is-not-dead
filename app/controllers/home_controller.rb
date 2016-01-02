class HomeController < ApplicationController
  def index
    @bands = Band.page(params[:page])
  end
end
