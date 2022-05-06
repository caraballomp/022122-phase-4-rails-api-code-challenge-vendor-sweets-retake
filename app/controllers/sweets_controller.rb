class SweetsController < ApplicationController

 
    def index 
        render json: Sweet.all
    end
    
    def show
        sweet = Sweet.find(params[:id])
        render json: sweet, serializer: SweetSerializer
    end

end
