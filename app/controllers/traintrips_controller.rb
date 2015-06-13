class TraintripsController < ApplicationController
  def create
    @station = Station.find(params[:station_id])
    @station.traintrips.create(traintrip_params)
    redirect_to station_path(@station)
  end
 
  private
  def traintrip_params
    params.require(:traintrip).permit(:train_leaves_at)
  end
end
