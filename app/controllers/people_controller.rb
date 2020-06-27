class PeopleController < ApplicationController
  before_action :set_person, only: %i[show edit update destroy]
  before_action :set_roles, only: %i[new edit update create]
  before_action :set_seniorities, only: %i[new edit update create]

  # GET /people
  # GET /people.json
  def index
    @people = Person
      .includes(:role, :seniority, :tags)
      .order("seniorities.sort_index desc, current_name")
      .all
  end

  # GET /people/1
  # GET /people/1.json
  def show; end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit; end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: "Person was successfully created." }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: "Person was successfully updated." }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: "Person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

private

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.includes(:role, :seniority, :tags).find(params[:id])
  end

  def set_roles
    @roles = Role.all
  end

  def set_seniorities
    @seniorities = Seniority.all
  end

  # Only allow a list of trusted parameters through.
  def person_params
    params.require(:person).permit(:current_name, :role_id, :seniority_id)
  end
end
