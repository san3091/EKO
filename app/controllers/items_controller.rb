class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    phase_id = get_phase_id(params[:id])
    project_id = get_project_id(phase_id)
    redirect_to(project_path(project_id))
  end


  # GET /items/new
  def new
    @item = Item.new
    get_project_id(params[:format])
    @project = Project.find(@project_id)
  end

  # GET /items/1/edit
  def edit
  end

  def get_project_id phase_id
    @project_id = Phase.find(phase_id).project_id
  end

  def get_phase_id item_id
    @phase_id = Item.find(item_id).phase_id
  end


  # POST /items
  # POST /items.json
  def create

    # p "*" * 1000
    # p item_params
    # p item_params[:url].split('/')[-1]
    # video_id = item_params[:url].split('/')[-1]
    # p item_params[:url] = video_id
    # p "*" * 1000

    # video_id = item_params[:url].split('/')[-1]
    # item_params[:url] = video_id
    
    @item = Item.new(item_params)

    @item.update(url: Item.get_video_id(@item))

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @project_id = @item.project_id
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to(project_path(@project_id))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      unless params[:id].nil?
        @item = Item.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:url, :phase_id, :name, :description, :project_id)
    end
end
