class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    @client = Client.find(params[:client_id])
    @sale = Sale.find(params[:sale_id])
    if @sale.client == @client
      @items = @sale.items
    else

    end
  end

  # GET /items/1
  def show
  end

  # GET /clients/:client_id/sales/:sale_id/items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to client_sale_item_path(id: @item), notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to client_sale_item_path(id: @item), notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:sale_id, :picture, :title, :description, :initial_price, :currency)
    end
end
