class VendorsController < ApplicationController


    def index 
        render json: Vendor.all
    end

    def show
        vendor = Vendor.find(params[:id])
        render json: format_associated_data(vendor)
    end

    private

    def format_associated_data(vendor)
        vendor_sweet_data = []
        vendor.vendor_sweets.each do |vendor_sweet|
            data_hash = {}
            data_hash["id"] = vendor_sweet.id
            data_hash["name"] = vendor_sweet.sweet.name
            data_hash["price"] = vendor_sweet.price
            vendor_sweet_data << data_hash
        end
            return { id: vendor.id,
                name: vendor.name,
                vendor_sweets: vendor_sweet_data
        }

    end


end
