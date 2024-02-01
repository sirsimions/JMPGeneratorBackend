class MaintenancesController < ApplicationController
  # before_action :set_truck, only: [:update]

    def index
        maintenances=Maintenance.all
        render json: maintenances
      end
      def show
        maintenances = Maintenance.where(status: 'Under Maintenance')
        render json: maintenances
      end
      # def destroy
      #   @maintenance=maintenance.find_by(id:params[:id])
      #   @maintenance.destroy
      #   head :no_content
      # end

      def destroy
        @maintenance = Maintenance.find(params[:id])
        if @maintenance.present?
          @maintenance.destroy
          head :no_content
          render json: {}
          return redirect_to (maintenances_path)
        end
        
    end
    
      def create
        maintenance=Maintenance.create!(maintenance_params)
        render json: maintenance,status: :created
        # Parse the received time to handle it correctly
        time = Time.parse(params[:time])
      end

      # def update
      #   @maintenance = Maintenance.find(params[:id])
      
      #   if @maintenance.update(status: 'completed')
      #     # Move the maintenance to the completed_trucks table
      #     completed_truck_data = {
      #       regnumber: @maintenance.regnumber,
      #       date: @maintenance.date,
      #       time: @maintenance.time,
      #       spare: @maintenance.spare,
      #       location: @maintenance.location,
      #       completed_at: Time.current
      #     }
      
      #     completed_truck = CompletedTruck.new(completed_truck_data)
      
      #     if completed_truck.valid?
      #       completed_truck.save
      #       render json: @maintenance
      #     else
      #       render json: { errors: completed_truck.errors.full_messages }, status: :unprocessable_entity
      #     end
      #   else
      #     render json: { errors: @maintenance.errors.full_messages }, status: :unprocessable_entity
      #   end
      # end
    

      def update
        @maintenance = Maintenance.find(params[:id])
      
        if @maintenance.update(status: 'completed')
          # Move the maintenance to the completed_trucks table
          completed_truck_data = {
            regnumber: @maintenance.regnumber,
            date: @maintenance.date,
            time: @maintenance.time,
            spare: @maintenance.spare,
            location: @maintenance.location,  # Make sure to include the location attribute
            # completed_at: Time.current
          }
      
          completed_truck = CompletedTruck.new(completed_truck_data)
      
          if completed_truck.valid?
            completed_truck.save
            render json: @maintenance
          else
            render json: { errors: completed_truck.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { errors: @maintenance.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
      private

  def maintenance_params
    params.require(:maintenance).permit(:regnumber, :date, :time, :spare, :status, :location)
    # Make sure to include the :location parameter if you've added it to your maintenance model
  end
end



