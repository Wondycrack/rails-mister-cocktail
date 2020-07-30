class ApplicationController < ActionController::Base
    before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
      @cocktails = Cocktail.all
    end.
  
    def show
  
    end
  
  
    def new
      # get a blank cocktail record
      @cocktail = Cocktail.new
    end
  
    def create
      # @cocktail = cocktail.new(name: params[:name], address: params[:address], rating: params[:rating])
      # new record with values from form
      @cocktail = Cocktail.new(cocktail_params)
  
      #save record
      @cocktail.save
  
      #redirect to another page
      redirect_to cocktail_path(@cocktail)
  
    end
  
    def edit
      # form with cocktail info filled out
      # @cocktail = cocktail.find(params[:id])
    end
  
  
    def update
      @cocktail.update(cocktail_params)
      # redirect to the show page
      redirect_to @cocktail
    end
  
  
    def destroy
      @restaurant.destroy
      redirect_to cocktails_path
    end
  
    private
  
    def set_restaurant
      @cocktail = Cocktail.find(params[:id])
    end
  
#     def restaurant_params
#       # params[:restaurant] => { name: params[:name].... }
#       params.require(:cocktail).permit(:name, :ingredient, :dose)
#     end
  
#     def edit_restaurant_params
#       params.require(:restaurant).permit(:)
#     end
#   end
end
