class HawaiisController < ApplicationController

    def index
        @hawaiis = Hawaii.all
    end
    def new
        @hawaii = Hawaii.new
      end
    
      def create
        hawaii = Hawaii.new(hawaii_params)
        if hawaii.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      def show
        @hawaii = Hawaii.find(params[:id])
      end

      private
      def hawaii_params
        params.require(:hawaii).permit(:country, :city, :about)
      end
end
