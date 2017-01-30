class EmployeeTrainingController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = EmployeeTraining.all
  end

  def show
    @model = EmployeeTraining.find(params[:id])
  end

  def new
    @model = EmployeeTraining.new
    @model.employee_id = params[:idemp]
    render :layout => 'noiframe'
  end

  def delete
    @model = set_training
    @model.destroy
    redirect_to "/employee/#{params[:idemp]}"
  end

  def edit
    @model = EmployeeTraining.find(params[:id])
  end

  def update
    @model = set_training
    if @model.update(training_params)
      redirect_to "/employee/#{@model.employee_id}"
    else
      redirect_to "/employee/#{@model.employee_id}"
    end
  end

  def create
    @model = EmployeeTraining.new(training_params)
    if @model.save
      redirect_to "/employee/#{@model.employee_id}"
    else
      redirect_to "/employee/#{@model.employee_id}"
    end
  end

  private

  def set_training
    @historyEducation = EmployeeTraining.find(params[:id])
  end

  def training_params
    params.require(:employee_training).permit(:employee_id,:training_date,:training_topic,:organizer,:training_result)
  end
end
