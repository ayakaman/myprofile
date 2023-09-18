class ListworksController < ApplicationController

  def index
    @lists = List.all
  end

end
