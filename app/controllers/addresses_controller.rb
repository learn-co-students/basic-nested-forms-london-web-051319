class AddressesController < ApplicationController
   before_action :set_address, only: [:show, :edit, :update, :destroy]

   def index
      @addresses = Address.all
   end

   def show
      @address = Address.find(params[:id])
   end

   def new
   end

   def create
      address = Address.create(address_params(:street_address_1, :street_address_2, :city, :state, :zipcode, :address_type))
      if address.valid?
         redirect_to address_path(address)
      else
         render :new
      end
   end

   def edit
   end

   def update
   end

   def destroy
   end

private

def address_params(*args)
   params.require(:address).permit(args)
end

private

def set_address
   @address = Address.find(params[:id])
end


end
