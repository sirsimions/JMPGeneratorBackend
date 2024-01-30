class FinaltablesController < ApplicationController
    # wrap_parameters format: []
    def index
        finaltables=Finaltable.all
        render json: finaltables
      end
      def show
        finaltable = Finaltable.find_by(id:params[:id])
        render json: finaltable
      end
      # def destroy
      #   @finaltable=finaltable.find_by(id:params[:id])
      #   @finaltable.destroy
      #   head :no_content
      # end

      def destroy
        @finaltable = Finaltable.find(params[:id])
        if @finaltable.present?
          @finaltable.destroy
          head :no_content
          render json: {}
          return redirect_to (finaltables_path)
        end
        
    end
    
      def create
        finaltable=Finaltable.create!(finaltable_params)
        render json: finaltable,status: :created
      end
      def update
        finaltable = Finaltable.find_by(id: params[:id])
          if finaltable
            finaltable.update(finaltable_params)
            render json: finaltable,status: :created
          else
            render json: { error: "finaltable not found"}, status: :not_found
          end
       end
      private
      def finaltable_params
        params.permit(:startPosition, :startTime, :endLocation, :startLocation1, :startLocation2, :startLocation3, :startLocation4, :startLocation5, :startLocation6,	:startLocation7, :startLocation8,	:startLocation9, :startLocation10, :startLocation11, :startLocation12, :startLocation13, :startLocation14, :startLocation15, :startLocation16, :startLocation17, :startLocation18, :endLocation1, :endLocation2, :endLocation3, :endLocation4, :endLocation5, :endLocation6, :endLocation7, :endLocation8, :endLocation9, :endLocation10, :endLocation11, :endLocation12, :endLocation13, :endLocation14, :endLocation15, :endLocation16, :endLocation17, :endLocation18, :startTime1, :startTime2, :startTime3, :startTime4, :startTime5, :startTime6, :startTime7, :startTime8, :startTime9, :startTime10, :startTime11, :startTime12, :startTime13, :startTime14, :startTime15, :startTime16, :startTime17, :startTime18, :endTime1, :endTime2, :endTime3, :endTime4, :endTime5, :endTime6, :endTime7, :endTime8, :endTime9, :endTime10, :endTime11, :endTime12, :endTime13, :endTime14, :endTime15, :endTime16, :endTime17, :endTime18, :driveTime1, :driveTime2, :driveTime3, :driveTime4, :driveTime5, :driveTime6, :driveTime7, :driveTime8, :driveTime9, :driveTime10, :driveTime11, :driveTime12, :driveTime13, :driveTime14, :driveTime15, :driveTime16, :driveTime17, :driveTime18, :event1, :event2, :event3, :event4, :event5, :event6, :event7, :event8, :event9, :event10, :event11, :event12, :event13, :event14, :event15, :event16, :event17, :event18, :distance1, :distance2, :distance3, :distance4, :distance5, :distance6, :distance7, :distance8, :distance9, :distance10, :distance11, :distance12, :distance13, :distance14, :distance15, :distance16, :distance17, :distance18)
      end
end
