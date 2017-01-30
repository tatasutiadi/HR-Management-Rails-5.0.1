class HistoryEducationController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = HistoryEducation.all
  end

  def show
    @model = HistoryEducation.find(params[:id])
  end

  def new
    @model = HistoryEducation.new
    @model.employee_id = params[:idemp]
    render :layout => 'noiframe'
  end

  def delete
    @model = set_education
    @model.destroy
    redirect_to "/employee/#{params[:idemp]}"
  end

  def edit
    @model = HistoryEducation.find(params[:id])
  end

  def update
    @model = set_education
    if @model.update(education_params)
      redirect_to "/employee/#{@model.employee_id}"
    else
      redirect_to "/employee/#{@model.employee_id}"
    end
  end

  def create
    @model = HistoryEducation.new(education_params)
    if @model.save
      redirect_to "/employee/#{@model.employee_id}"
    else
      redirect_to "/employee/#{@model.employee_id}"
    end
  end

  private

  def set_education
    @historyEducation = HistoryEducation.find(params[:id])
  end

  def education_params
    params.require(:history_education).permit(:employee_id,:start_year,:end_year,:placeeducation)
  end
end
