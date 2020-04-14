# Controller to handle methods from food creation, modification and deletion
class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /foods
  # GET /foods.json
  def index  #Calls all Food table data and stores in @foods
    @foods = Food.all
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new #Create new food item
    @food = Food.new
    @sections = Section.all
  end

  # GET /foods/1/edit
  def edit #Used in part to change existing food item
    @sections = Section.all
  end

  # POST /foods
  # POST /foods.json
  def create  #Create new food item
    @food = Food.new(food_params) #pass parameters to new to instantiate object

    respond_to do |format|
      if @food.save #Procedure for successful food creation
        format.html { redirect_to dashboard_food_path(@food), notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update #Change details of an existing food item
    respond_to do |format|
      if @food.update(food_params) #IF successful update
        format.html { redirect_to dashboard_food_path(@food), notice: 'Food was successfully updated.' } #confirmation
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy 
    @food.destroy #delete item
    respond_to do |format|
      format.html { redirect_to dashboard_foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :description, :allergens, :calories, :price, :active, :url, :section_id)
    end
end
