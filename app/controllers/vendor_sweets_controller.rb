class VendorSweetsController < ApplicationController


    def create
        vendor_sweet = VendorSweet.create!(appearance_params)
        data_hash = {"price": vendor_sweet.price,
                    "name": vendor_sweet.sweet.name,
                    "id": vendor_sweet.id}
        render json: data_hash.to_json,  status: :created
    end


    def destroy
        vendor_sweet = VendorSweet.find(params[:id])
        vendor_sweet.destroy
        head :no_content
    end

    private

    def appearance_params
        params.permit(:name, :price, :vendor_id, :sweet_id)
    end

end
