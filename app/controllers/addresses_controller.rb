class AddressesController < ApplicationController
  helper AddressesHelper
  before_action :set_user, only:[:index, :new, :edit, :create, :update]
  before_action :set_address, only:[:edit, :update]

  def index
    @addresses = @user.addresses.all
  end

  def create 
    address = Address.new(address_params)
    if address.current == 1
      intTypeAddress = address.type_address == 'work' ? 1 : 0
      Address.where('type_address = ? AND id <> ?', intTypeAddress, params[:id]).update_all( current: 0)
    end
    @address = @user.addresses.new(address_params)
    if @address.save!
      flash[:success] = "Address saved successfully!"
      redirect_to user_addresses_path(@user)
    else
      flash[:danger] = "Unable to saved address!"
      redirect_to @address
    end
  end

  def new
    @address = Address.new
  end

  def edit 
  end

  def destroy
  end

  def update
    address = Address.new(address_params)
    if address.current == 1
      intTypeAddress = address.type_address == 'work' ? 1 : 0
      Address.where('type_address = ? AND id <> ?', intTypeAddress, params[:id]).update_all(current: 0)
    end
    @address.update_attributes(address_params)
    if @address.save
      flash[:success] = "Address updated successfully!"
      redirect_to user_addresses_path(@user)
    else
      flash[:danger] = "Unable to update address!"
      redirect_to @address
    end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_address
      @address = @user.addresses.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:street_1, :street_2, :city, :state, :zip_code, :current, :type_address)
    end

end
