class PlantsController < ApplicationController
  before_action :set_plant, only: :show
  before_action :authenticate_user, only: [:create, :edit, :update, :destroy]


  # GET /plants
  # GET /plants.json
  def index
    # @plants = Plant.all
    # search = params[:search]
    if params[:search].present?
      search = params[:search]
      @plants = Plant.where("name LIKE ?", "%#{search}%")
    else
      @plants = Plant.all
    end
  end

  # GET /plants/1
  # GET /plants/1.json
  def show
    # @plants = Plant.all
  end

  # GET /plants/new
  def new
    @plant = Plant.new
    @location = Location.new
  end

  # GET /plants/1/edit
  def edit
    @plant = Plant.find(params[:id])
  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)
    # @pizza = Pizza.new(params.require(:pizza).permit(:name, :topping_ids => []))
    if params[:site_name].present?
      @location = Location.create(site_name: params[:site_name])
      @plant.locations << @location
    end

    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    @plant = Plant.find(params[:id])
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:image, :name, :latin_name, :family, :other_name, :origin, :physical_char, :flavour_profile, :medical_properties, :thrives_in, :location_ids => [])
    end

end
