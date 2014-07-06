class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update]

  # GET /sales
  def index
    @client = Client.find(params[:client_id])
    @sales = @client.sales
  end

  # GET /sales/1
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  def create
    @sale = Sale.new(sale_params.merge(client_id: params[:client_id]))

    if @sale.save
      redirect_to client_sale_path(@sale.client, @sale), notice: 'Sale was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sales/1
  def update
    if @sale.update(sale_params)
      redirect_to client_sale_path(@sale.client, @sale), notice: 'Sale was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sale_params
      params.require(:sale).permit(:client, :client_id, :title, :description, :active, :expiration_date)
    end
end
