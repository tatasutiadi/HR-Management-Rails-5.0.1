class BanksController < ApplicationController
  # require 'yaml'
  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @bank = Bank.all #select * from banks
    # @view = Bank.find(params[:id])
    #get url
    # @url = bank_url(Bank.first)
    #end get
  end


  def create
    @banks = Bank.new(bank_params)
    puts params[:bank_name].inspect
    # respond_to do |format|
      if @banks.save
        # format.html { redirect_to @banks, notice: 'Micropost was successfully created.' }
        redirect_to action:"index"
        # format.json { render :index, status: :created, location: @banks }
      else
        redirect_to action:"new"
      end
    # end

    # printf(params[:bank])
    # @bank = Bank.create(:bank_name =>params[:bank_name])
    # logger.debug(params[:bank_name].inspect)
    # @bank = Bank.new(params[:bank_name])
    # # logger.debug ""
    # # puts params.inspect
    # # abort @bank.inspect
    #
    # if(@bank.save)
    # # if(@bank)
    #   #Saved successfully; go to the index (or wherever)...
    #   redirect_to :action => :index
    # else
    #   #Validation failed; show the "new" form again...
    #   render :action => :new
    # end
  end

  def update
    # respond_to do |format|
      if @bank.update(bank_params)
        redirect_to action:"index"
      else
        redirect_to action:"new"
      end
    # end
  end

  def new
    @bank = Bank.new

  end

  def edit

  end
  def show
    @bank=Bank.find(params[:id])
    if @bank.blank?
      flash[:error] = 'The Post not found in the database'
      redirect_to :index
    end
  end
  def delete
    @bank = Bank.find(params[:id])
    @bank.destroy
      redirect_to action:"index"
  end
  private

  def set_bank
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit(:bank_name)
  end
end
