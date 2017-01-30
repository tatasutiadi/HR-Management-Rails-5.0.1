class EmployeeController < ApplicationController

  before_action :beforeAction,:set_locale, only: [:index,:create,:update,:new,:edit,:show,:delete]

  def index
    @emp = Employee.all
  end

  def new
    @emp = Employee.new
  end

  def show
    @emp = Employee.find(params[:id])
    @his_employee = HistoryEducation.where(:employee_id => @emp.employee_id)
    @training = EmployeeTraining.where(:employee_id => @emp.employee_id)

      #(@emp.employee_id)
  end

  def edit
    @emp = Employee.find(params[:id])
    @user = User.find(@emp.user_id)
  end

  def create

    Employee.transaction do
      begin
        @user = User.create(:username =>params[:employee][:username],
                            :password=>params[:employee][:password]
        )
        @emp = Employee.new(allowed_params)
        if @user
          last_id = User.last
          # replaced using paperclip
          # uploaded_io = params[:person][:picture]
          # uploaded_io = params[:employee][:photo]
          # File.open(Rails.root.join('public', 'image', uploaded_io.original_filename), 'wb') do |file|
          #   file.write(uploaded_io.read)
          # end
          @emp.user_id = last_id.user_id

        end

        if @emp.save
          employee_last = Employee.last
          redirect_to "/employee/#{employee_last.id}"
        else
          redirect_to "/create-employee"
        end

        # puts "bn"
      rescue Exception => e
        e.message
        puts e.inspect
        # puts "sl"
      end
    end

  end

  def update
    @emp = Employee.find(params[:id])
    Employee.transaction do
      begin

        if @emp.update_attributes(allowed_params)
          redirect_to "/employee/#{@emp.employee_id}"
        else
          redirect_to "/employee/#{params[:id]}/edit"
        end
          # puts "bn"
      rescue Exception => e
        e.message
        puts e.inspect
        # puts "sl"
      end
    end
  end

  def delete
    @emp = Employee.find(params[:id])
    @user = User.find(@emp.user_id)
    @user.destroy
    @emp.destroy
    redirect_to '/employee'
  end
  # @product = Product.find(params[:id])
  # if @product.update_attributes(allowed_params)
  #   flash[:notice] = "Successfully updated product."
  #   redirect_to @product
  # else
  #   render :edit
  # end

  private

  def emp_params
    params.require(:employee).permit(:NIP,:employee_name,:placeofbirth,:dateofbirth,:gender,:email,:address,:dateofentry,:departement_id,
    :position_id,:user_id,:phonenumber,:mobilenumber,:NPWP,:religion_id,:ktpnumber,:accountnumber,:bank_id,:marital_id,:statusemployee_id)
  end

  def allowed_params
    params.require(:employee).permit!
  end
end
