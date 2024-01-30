class CompletedTrucksController < ApplicationController
    def complete
        completed_truck = CompletedTruck.find(params[:id])
    
        # Update the completed_time attribute
        # completed_truck.update(completed_time: Time.current, :registration_number, :date)
        completed_truck.update(completed_time: Time.current)
        # You might want to add additional logic here
    
        # Respond with a success status
        head :ok
      end

      def completed_trucks
        completed_trucks = Maintenance.where(status: 'completed')
        render json: completed_trucks
      end

      def index
        completedtrucks=CompletedTruck.all
        render json: completedtrucks
      end
      # def show
      #   completedtruck = CompletedTruck.find_by(id:params[:id])
      #   render json: completedtruck
      # end

      def show
        maintenances = CompletedTruck.where(status: 'completed')
        render json: maintenances
      end

    #   def destroy
    #     @finaltable = Finaltable.find(params[:id])
    #     if @finaltable.present?
    #       @finaltable.destroy
    #       head :no_content
    #       render json: {}
    #       return redirect_to (finaltables_path)
    #     end
    # end
    # end

      # def destroy
      #   @completedtruck=completedtruck.find_by(id:params[:id])
      #   @completedtruck.destroy
      #   head :no_content
      # end

      def destroy
        @completedtruck = CompletedTruck.find(params[:id])
        if @completedtruck.present?
          @completedtruck.destroy
          head :no_content
          render json: {}
          # return redirect_to (completed_trucks_path)
        end
        
    end
    
      def create
        completedtruck=CompletedTruck.create!(completedtruck_params)
        render json: completedtruck,status: :created
      end
      def update
        completedtruck = CompletedTruck.find_by(id: params[:id])
          if completedtruck
            completedtruck.update(completedtruck_params)
            render json: completedtruck,status: :created
          else
            render json: { error: "completedtruck not found"}, status: :not_found
          end
       end
      private
      def completedtruck_params
        # params.permit(completed_time: Time.current, :registration_number, :date)
        params.permit(completed_time: Time.current)
      end

end
