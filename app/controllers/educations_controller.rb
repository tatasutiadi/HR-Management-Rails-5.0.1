class EducationsController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = Education.all
  end

  def show
    @model = Education.find(params[:id])
  end

  def new
    @model = Education.new
  end

  def delete
    @model = Education.find(params[:id])
    @model.destroy
      redirect_to action: 'index'
  end

  def edit
    @model = Education.find(params[:id])
  end

  def update
    @model = set_education
    if @model.update(education_params)
      redirect_to action: 'index'
    else
      redirect_to action:'edit'
    end
  end

  def create
    @model = Education.new(education_params)
    if @model.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def set_education
    @education = Education.find(params[:id])
  end

  def education_params
    params.require(:education).permit(:education_name)
  end
end
