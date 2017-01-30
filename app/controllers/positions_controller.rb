class PositionsController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = Position.all
  end

  def show
    @model = Position.find(params[:id])
  end

  def new
    @model = Position.new
  end

  def delete
    @model = Position.find(params[:id])
    @model.destroy
    redirect_to action: 'index'
  end

  def edit
    @model = Position.find(params[:id])
  end

  def update
    @model = set_position
    if @model.update(position_params)
      redirect_to action: 'index'
    else
      redirect_to action:'edit'
    end
  end

  def create
    @model = Position.new(position_params)
    if @model.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def set_position
    @Position = Position.find(params[:id])
  end

  def position_params
    params.require(:position).permit(:position_code,:position_name,:position_salary,:position_allowance)
  end
end
