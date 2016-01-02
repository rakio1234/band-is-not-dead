class SearchController < ApplicationController

  # GET /serarch
  def index
    @genres = Band.tag_counts_on(:genres).order('count DESC')

    if params[:id].present?
      @bands = Band.tagged_with(params[:id])
    end
  end
end
