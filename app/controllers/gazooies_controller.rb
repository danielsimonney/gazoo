class GazooiesController < ApplicationController
  before_action :set_gazooie, only: [:show, :edit, :update, :destroy]

  # GET /gazooies
  # GET /gazooies.json
  def index
    @gazooies = Gazooie.all
  end

  # GET /gazooies/1
  # GET /gazooies/1.json
  def show
  end

  # GET /gazooies/new
  def new
    @gazooie = Gazooie.new
  end

  # GET /gazooies/1/edit
  def edit
  end

  # POST /gazooies
  # POST /gazooies.json
  def create
    @gazooie = Gazooie.new(gazooie_params)

    respond_to do |format|
      if @gazooie.save
        format.html { redirect_to @gazooie, notice: 'Gazooie was successfully created.' }
        format.json { render :show, status: :created, location: @gazooie }
      else
        format.html { render :new }
        format.json { render json: @gazooie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gazooies/1
  # PATCH/PUT /gazooies/1.json
  def update
    respond_to do |format|
      if @gazooie.update(gazooie_params)
        format.html { redirect_to @gazooie, notice: 'Gazooie was successfully updated.' }
        format.json { render :show, status: :ok, location: @gazooie }
      else
        format.html { render :edit }
        format.json { render json: @gazooie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gazooies/1
  # DELETE /gazooies/1.json
  def destroy
    @gazooie.destroy
    respond_to do |format|
      format.html { redirect_to gazooies_url, notice: 'Gazooie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gazooie
      @gazooie = Gazooie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gazooie_params
      params.require(:gazooie).permit(:user_id, :text, :reply_to_id)
    end
end
