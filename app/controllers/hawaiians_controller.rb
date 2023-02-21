class HawaiiansController < ApplicationController
    before_action :authenticate_user!
    def index
        if params[:search] != nil && params[:search] != ''
            search = params[:search]
            @hawaiians = Hawaiian.where('country LIKE ? OR city LIKE ?',"%#{search}%", "%#{search}%")
          else
            @hawaiians= Hawaiian.all
        end

    end
    def new
        @hawaiian = Hawaiian.new
      end
    
      def create
        @hawaiian = Hawaiian.new(hawaiian_params)
        @hawaiian.user_id = current_user.id 
        if @hawaiian.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      def show
        @hawaiian = Hawaiian.find(params[:id])
      end

      def edit
        @hawaiian = Hawaiian.find(params[:id])
      end
      def update
        hawaiian = Hawaiian.find(params[:id])
        if hawaiian.update(hawaiian_params)
          redirect_to :action => "show", :id => hawaiian.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        hawaiian = Hawaiian.find(params[:id])
        hawaiian.destroy
        redirect_to action: :index
      end
      private
      def hawaiian_params
        params.require(:hawaiian).permit(:name, :country, :city, :about, :more, :image, :lat, :lng, :overall, :level, :price, :where, :image2)
      end
     
end

