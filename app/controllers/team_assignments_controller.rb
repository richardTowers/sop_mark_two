class TeamAssignmentsController < ApplicationController
  before_action :set_team_assignment, only: %i[show edit update destroy]
  before_action :set_people, only: %i[new edit update create]
  before_action :set_teams, only: %i[new edit update create]

  # GET /team_assignments
  # GET /team_assignments.json
  def index
    @team_assignments = TeamAssignment
      .includes(:team, person: :seniority)
      .order("teams.name, seniorities.sort_index desc, people.current_name")
      .all
  end

  # GET /team_assignments/1
  # GET /team_assignments/1.json
  def show; end

  # GET /team_assignments/new
  def new
    @team_assignment = TeamAssignment.new
  end

  # GET /team_assignments/1/edit
  def edit; end

  # POST /team_assignments
  # POST /team_assignments.json
  def create
    @team_assignment = TeamAssignment.new(team_assignment_params)

    respond_to do |format|
      if @team_assignment.save
        format.html { redirect_to @team_assignment, notice: "Team assignment was successfully created." }
        format.json { render :show, status: :created, location: @team_assignment }
      else
        format.html { render :new }
        format.json { render json: @team_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_assignments/1
  # PATCH/PUT /team_assignments/1.json
  def update
    respond_to do |format|
      if @team_assignment.update(team_assignment_params)
        format.html { redirect_to @team_assignment, notice: "Team assignment was successfully updated." }
        format.json { render :show, status: :ok, location: @team_assignment }
      else
        format.html { render :edit }
        format.json { render json: @team_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_assignments/1
  # DELETE /team_assignments/1.json
  def destroy
    @team_assignment.destroy
    respond_to do |format|
      format.html { redirect_to team_assignments_url, notice: "Team assignment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

private

  # Use callbacks to share common setup or constraints between actions.
  def set_team_assignment
    @team_assignment = TeamAssignment.find(params[:id])
  end

  def set_teams
    @teams = Team.all.order(:name)
  end

  def set_people
    @people = Person.includes(:role, :seniority, :tags).all.order(:current_name)
  end

  # Only allow a list of trusted parameters through.
  def team_assignment_params
    params.require(:team_assignment).permit(:person_id, :team_id, :start_time, :end_time)
  end
end
