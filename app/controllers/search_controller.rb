class SearchController < ApplicationController

  # GET /serarch
  def index
    @genres = Band.tag_counts_on(:genres).order('count DESC')
  end
end
