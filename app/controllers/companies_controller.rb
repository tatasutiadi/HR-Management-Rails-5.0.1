class CompaniesController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @model = Company.all
  end

  def show
    @model = Company.find(params[:id])
  end

  def new
    @model = Company.new
  end

  def delete
    @model = Company.find(params[:id])
    @model.destroy
    redirect_to action: 'index'
  end

  def edit
    @model = Company.find(params[:id])
  end

  def update
    @model = set_company
    if @model.update(company_params)
      redirect_to action: 'index'
    else
      redirect_to action:'edit'
    end
  end

  def create
    @model = Company.new(company_params)
    if @model.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_name,:company_address,:company_profile,:company_taxidentification)
  end
end
