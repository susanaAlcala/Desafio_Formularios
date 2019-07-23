class SalesController < ApplicationController
  def new
  end

  def create
      sale = Sale.new
      sale.detail = params[:sale][:detail]
      sale.value = params[:sale][:value]
      sale.category = params[:sale][:category]
      sale.total = params[:sale][:value].to_f * (1 - params[:sale][:discount]/100)
      sale.discount = params[:sale][:discount]
      
      if params[:sail][:tax] !='1'
        sale.total = sale.total * 1.19
        sale.tax = 19
      end

      if sale.save
        redirect_to sales_done_path
      end
  end
  
  def done
    @last_sale = Sale.last      
  end
  
end
