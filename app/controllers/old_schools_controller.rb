class OldSchoolsController < ApplicationController
  before_action :set_old_school, only: %i[ show edit update destroy ]

  # GET /old_schools or /old_schools.json
  def index
    @old_schools = OldSchool.all
  end

  # GET /old_schools/1 or /old_schools/1.json
  def show
  end

  # GET /old_schools/new
  def new
    @old_school = OldSchool.new
  end

  # GET /old_schools/1/edit
  def edit
  end

  # POST /old_schools or /old_schools.json
  def create
    @old_school = OldSchool.new(old_school_params)

    respond_to do |format|
      if @old_school.save
        format.html { redirect_to @old_school, notice: "Old school was successfully created." }
        format.json { render :show, status: :created, location: @old_school }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @old_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /old_schools/1 or /old_schools/1.json
  def update
    respond_to do |format|
      if @old_school.update(old_school_params)
        format.html { redirect_to @old_school, notice: "Old school was successfully updated." }
        format.json { render :show, status: :ok, location: @old_school }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @old_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /old_schools/1 or /old_schools/1.json
  def destroy
    @old_school.destroy!

    respond_to do |format|
      format.html { redirect_to old_schools_path, status: :see_other, notice: "Old school was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_old_school
      @old_school = OldSchool.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def old_school_params
      params.expect(old_school: [ :title, :description, :age ])
    end
end
