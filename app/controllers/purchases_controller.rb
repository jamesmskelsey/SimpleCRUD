class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
    respond_to do |format|
      format.html
      format.json { render json: @purchases }
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @purchase }
    end
  end

  def new
    @purchase = Purchase.new
    
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to purchases_path
    else
      render 'new'
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])
    @purchase.update_attributes(purchase_params)
    if @purchase.save
      redirect_to @purchase
    else
      redirect_to 'edit'
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy
    redirect_to purchases_path
  end

  private

  def purchase_params
    params.require(:purchase).permit(:name, :price)
  end
end
