class ReligionsController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = Religion.all
  end

  def show
    @model = Religion.find(params[:id])
  end

  def new
    @model = Religion.new
  end

  def delete
    @model = Religion.find(params[:id])
    @model.destroy
    redirect_to action: 'index'
  end

  def edit
    @model = Religion.find(params[:id])
  end

  def update
    @model = set_religion
    if @model.update(religion_params)
      redirect_to action: 'index'
    else
      redirect_to action:'edit'
    end
  end

  def create
    @model = Religion.new(religion_params)
    if @model.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def set_religion
    @Religion = Religion.find(params[:id])
  end

  def religion_params
    params.require(:religion).permit(:religion_name)
  end
end
