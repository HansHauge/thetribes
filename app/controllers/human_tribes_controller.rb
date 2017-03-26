class HumanTribesController < ApplicationController
  before_action :set_human_tribe, only: [:show, :edit, :update, :destroy]
  before_action :redirect_to_index, only: [:edit, :update, :destroy, :new]
  before_action :set_geographic_area, only: [:edit, :new, :create]

  # GET /human_tribes
  # GET /human_tribes.json
  def index
    @human_tribes = HumanTribe.all
  end

  # GET /human_tribes/1
  # GET /human_tribes/1.json
  def show
  end

  # GET /human_tribes/new
  def new
    @human_tribe = HumanTribe.new
  end

  # GET /human_tribes/1/edit
  def edit
  end

  # POST /human_tribes
  # POST /human_tribes.json
  def create
    @human_tribe = HumanTribe.new(human_tribe_params)

    respond_to do |format|
      if @human_tribe.save
        format.html { redirect_to @human_tribe, notice: 'Human tribe was successfully created.' }
        format.json { render :show, status: :created, location: @human_tribe }
      else
        format.html { render :new }
        format.json { render json: @human_tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /human_tribes/1
  # PATCH/PUT /human_tribes/1.json
  def update
    respond_to do |format|
      if @human_tribe.update(human_tribe_params)
        format.html { redirect_to @human_tribe, notice: 'Human tribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @human_tribe }
      else
        format.html { render :edit }
        format.json { render json: @human_tribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /human_tribes/1
  # DELETE /human_tribes/1.json
  def destroy
    @human_tribe.destroy
    respond_to do |format|
      format.html { redirect_to human_tribes_url, notice: 'Human tribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_geographic_area
      @geographic_areas = GeographicArea.all
    end

    def redirect_to_index
      unless current_user.game_master?
        redirect_to human_tribes_url
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_human_tribe
      @human_tribe = HumanTribe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def human_tribe_params
      params.require(:human_tribe).permit(:name, :abilities, :history_and_culture, :geographic_area_id, :skills_and_professions, :appearance, :alliances, :enemies, :trade_and_commerce, :political_structure, :notes)
    end
end
