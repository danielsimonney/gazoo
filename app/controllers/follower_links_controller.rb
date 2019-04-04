class FollowerLinksController < ApplicationController
  before_action :set_follower_link, only: [:show, :edit, :update, :destroy]

  # GET /follower_links
  # GET /follower_links.json
  def index
    @follower_links = FollowerLink.all
  end

  # GET /follower_links/1
  # GET /follower_links/1.json
  def show
  end

  # GET /follower_links/new
  def new
    @follower_link = FollowerLink.new
  end

  # GET /follower_links/1/edit
  def edit
  end

  # POST /follower_links
  # POST /follower_links.json
  def create
    @follower_link = FollowerLink.new(follower_link_params)

    respond_to do |format|
      if @follower_link.save
        format.html { redirect_to @follower_link, notice: 'Follower link was successfully created.' }
        format.json { render :show, status: :created, location: @follower_link }
      else
        format.html { render :new }
        format.json { render json: @follower_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follower_links/1
  # PATCH/PUT /follower_links/1.json
  def update
    respond_to do |format|
      if @follower_link.update(follower_link_params)
        format.html { redirect_to @follower_link, notice: 'Follower link was successfully updated.' }
        format.json { render :show, status: :ok, location: @follower_link }
      else
        format.html { render :edit }
        format.json { render json: @follower_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follower_links/1
  # DELETE /follower_links/1.json
  def destroy
    @follower_link.destroy
    respond_to do |format|
      format.html { redirect_to follower_links_url, notice: 'Follower link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower_link
      @follower_link = FollowerLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follower_link_params
      params.require(:follower_link).permit(:follower_id, :followee_id)
    end
end
