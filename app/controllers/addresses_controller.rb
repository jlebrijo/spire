class AddressesController < ApplicationController
  before_action :set_address, only: %i[ show edit update destroy ]

  # GET /addresses
  def index
    @addresses = Address.all
  end

  # GET /addresses/1
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to address_url(@address), notice: "Address was successfully created."
    else
      render :new, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /addresses/1
  def update
    if @address.update(address_params)
      redirect_to address_url(@address), notice: "Address was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /addresses/1
  def destroy
    @address.destroy

    redirect_to addresses_url, notice: "Address was successfully destroyed." 
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end
    
    def address_params
      params.require(:address).permit(:firm_name, :address1, :address2, :city, :state, :urbanization, :zip5, :zip4)
    end
end
