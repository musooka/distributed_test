class ProductsController < ApplicationController

    def show
        initial_index = params[:page] ? (params[:page].to_i - 1)*params[:per_page].to_i : 1
        length = params[:per_page] ? params[:per_page].to_i  : 10
        products_by_name_or_description = Product.by_name(get_product_params[:name]).by_description(get_product_params[:description])
        if get_product_params[:order_by_price]
            products_by_name_or_description = products_by_name_or_description.order_by_price(asc: get_product_params[:order_by_price_asc])
        end
        if get_product_params[:order_by_created_at]
            products_by_name_or_description = products_by_name_or_description.order_by_created_at(asc: get_product_params[:order_by_created_at_asc])
        end
        render json: products_by_name_or_description[initial_index, length].to_json, status:200
    end

    private

    def get_product_params
        params.require(:product).permit(:name, :description, :order_by_price, :order_by_price_asc, :order_by_created_at, :order_by_created_at_asc)
    end
end
