class CreatureTypesController < ApplicationController
  before_action :redirect_to_index, only: [:edit, :update, :destroy, :new]
  before_action :set_creature_type, only: [:show, :edit, :update, :destroy]

  # GET /creature_types
  # GET /creature_types.json
  def index
    @creature_types = CreatureType.all
  end

  # GET /creature_types/1
  # GET /creature_types/1.json
  def show
  end

  # GET /creature_types/new
  def new
    @creature_type = CreatureType.new
  end

  # GET /creature_types/1/edit
  def edit
  end

  # POST /creature_types
  # POST /creature_types.json
  def create
    @creature_type = CreatureType.new(creature_type_params)

    respond_to do |format|
      if @creature_type.save
        format.html { redirect_to @creature_type, notice: 'Creature type was successfully created.' }
        format.json { render :show, status: :created, location: @creature_type }
      else
        format.html { render :new }
        format.json { render json: @creature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creature_types/1
  # PATCH/PUT /creature_types/1.json
  def update
    respond_to do |format|
      if @creature_type.update(creature_type_params)
        format.html { redirect_to @creature_type, notice: 'Creature type was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature_type }
      else
        format.html { render :edit }
        format.json { render json: @creature_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creature_types/1
  # DELETE /creature_types/1.json
  def destroy
    @creature_type.destroy
    respond_to do |format|
      format.html { redirect_to creature_types_url, notice: 'Creature type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature_type
      @creature_type = CreatureType.find(params[:id])
    end

    def redirect_to_index
      unless current_user.game_master?
        redirect_to creature_types_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_type_params
      params.require(:creature_type).permit(:name)
    end
end
