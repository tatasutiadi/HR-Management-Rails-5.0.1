class DepartementsController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = Departement.all
  end

  def show
    @model = Departement.find(params[:id])
  end

  def new
    @model = Departement.new
  end

  def delete
    @model = Departement.find(params[:id])
    @model.destroy
    redirect_to action: 'index'
  end

  def edit
    @model = Departement.find(params[:id])
  end

  def update
    @model = set_departement
    if @model.update(departement_params)
      redirect_to action: 'index'
    else
      redirect_to action:'edit'
    end
  end

  def create
    @model = Departement.new(departement_params)
    if @model.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def set_departement
    @Departement = Departement.find(params[:id])
  end

  def departement_params
    params.require(:departement).permit(:departement_code,:departement_name)
  end
end
