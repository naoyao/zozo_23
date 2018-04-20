class StocksController < ApplicationController
  before_action :set_stock, only:[:edit, :update]
  before_action :set_product, only:[:index, :new, :edit]

  def index
        @product = Product.find(params[:product_id])
    @stocks = @product.stocks
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end


  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock.update(stock_params)
    redirect_to action: 'index'
  end

  private
  def stock_params
    params.require(:stock).permit(:color, :size, :stock, :stock_limit).merge(product_id: params[:product_id])
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
