class HackathonsController < ApplicationController
  before_action :set_hackathon, only: [ :show, :edit, :update, :destroy]

  # GET /hackathons
  # GET /hackathons.json
  def index
    @hackathons = Hackathon.all
    # @hackathons = Hackathon.find(params[:id])
    @hackathons = if params[:term]
      Hackathon.where('name LIKE ?', "%#{params[:term]}%")
    else
     Hackathon.all
    end
  end


  # GET /hackathons/1
  # GET /hackathons/1.json
  def show
    @hackathon_teams = @hackathon.teams
    @team_member = TeamMember.new
  end

  # GET /hackathons/new
  def new
    @hackathon = Hackathon.new
  end

  # GET /hackathons/1/edit
  def edit
  end

  # POST /hackathons
  # POST /hackathons.json
  def create
    @hackathon = Hackathon.new(hackathon_params)
    @hackathon.user_id = current_user
    @hackathon.profile_id = current_user.profile.id

    respond_to do |format|
    if @hackathon.save
        format.html { redirect_to new_hackathon_team_path(@hackathon.id), notice: "Hackathon #{@hackathon.name unless @hackathon.name.blank?} was successfully created." }
        format.json { render :show, status: :created, location: @hackathon }
      else
        format.html { render :new }
        format.json { render json: @hackathon.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /hackathons/1
  # PATCH/PUT /hackathons/1.json
  def update
    respond_to do |format|
      if @hackathon.update(hackathon_params)
        format.html { redirect_to @hackathon, notice: 'Hackathon was successfully updated.' }
        format.json { render :show, status: :ok, location: @hackathon }
      else
        format.html { render :edit }
        format.json { render json: @hackathon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hackathons/1
  # DELETE /hackathons/1.json
  def destroy
    @hackathon.destroy
    respond_to do |format|
      format.html { redirect_to hackathons_url, notice: 'Hackathon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_hackathon
      @hackathon = Hackathon.find(params[:id])
    end

    # def set_hackathon
    #   if params[:hackathons_id].present?
    #     id = params[:hackathons_id]
    #   elsif params[:id].present?
    #     id = params[:id]
    #   end
    #   @hackathon = Hackathon.find(:id)
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hackathon_params
      params.require(:hackathon).permit(:avatar, :name, :description, :reward, :max_team_count, :date_end, :user_id, :term, :address)
    end

end
