# @author Gustavo Bazan
# MineResources controller
class MineResourcesController < ApplicationController
  before_action :set_mine_resource, only: [:show, :edit, :update, :destroy]

  # GET /mine_resources/1
  # GET /mine_resources/1.json
  def show
  end

  # GET /mines/:mine_id/mine_resources/new
  def new
    @mine_resource = MineResource.new
    @mine = Mine.find(params[:mine_id])
  end

  # GET /mine_resources/1/edit
  def edit
  end

  # POST /mine_resources
  # POST /mine_resources.json
  def create
    @mine_resource = MineResource.new(mine_resource_params)
    @mine = Mine.find(params[:mine_id])
    @mine_resource.mine = @mine
    respond_to do |format|
      if @mine_resource.save
        format.html { redirect_to @mine_resource, notice: 'Recurso minero creado.' }
        format.json { render action: 'show', status: :created, location: @mine_resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @mine_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mine_resources/1
  # PATCH/PUT /mine_resources/1.json
  def update
    respond_to do |format|
      if @mine_resource.update(mine_resource_params)
        format.html { redirect_to @mine_resource, notice: 'Recurso minero actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mine_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mine_resources/1
  # DELETE /mine_resources/1.json
  def destroy
    @mine = @mine_resource.mine
    @mine_resource.destroy
    respond_to do |format|
      format.html { redirect_to @mine }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mine_resource
      @mine_resource = MineResource.includes(:mine, :mineral).find(params[:id])
      # @mine = Mine.find(params[:mine_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mine_resource_params
      params.require(:mine_resource).permit(:mine_id, :mineral_id, :conditions, :daily_capacity, :monthly_capacity)
    end
end
