class PlacesController < ApplicationController

  def index
    @places = Place.all.order(:name)
    @places = Kaminari.paginate_array(@places).page(params[:page]).per(5)
  end
end
