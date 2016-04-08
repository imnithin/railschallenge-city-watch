class Api::V1::EmergenciesController < Api::V1::BaseController

  def create
    emergency = Emergency.create(emergency_parameters)
    unless emergency.errors.any?
      render json: emergency
    else
      render json: emergency.errors.full_messages
    end
  end

  def show
    emergency =   Emergency.find_by_id(params[:id])
    if emergency
      render json: emergency
    else
      #todo: record not found
    end
  end

  private

  def emergency_parameters
    params.require(:emergency).permit(:fire_severity, :police_severity, :medical_severity)
  end
  
end
