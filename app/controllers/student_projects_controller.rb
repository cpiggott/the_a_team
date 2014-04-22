class StudentProjectsController < ApplicationController
  before_action :set_student_project, only: [:show, :edit, :update, :destroy]

  # GET /student_projects
  # GET /student_projects.json
  def index
    @student_projects = StudentProject.all
  end

  # GET /student_projects/1
  # GET /student_projects/1.json
  def show
  end

  # GET /student_projects/new
  def new
    @student_project = StudentProject.new
  end

  # GET /student_projects/1/edit
  def edit
  end

  # POST /student_projects
  # POST /student_projects.json
  def create
    @student_project = StudentProject.new(student_project_params)

    respond_to do |format|
      if @student_project.save
        format.html { redirect_to @student_project, notice: 'Student project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @student_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_projects/1
  # PATCH/PUT /student_projects/1.json
  def update
    respond_to do |format|
      if @student_project.update(student_project_params)
        format.html { redirect_to @student_project, notice: 'Student project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_projects/1
  # DELETE /student_projects/1.json
  def destroy
    @student_project.destroy
    respond_to do |format|
      format.html { redirect_to student_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_project
      @student_project = StudentProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_project_params
      params.require(:student_project).permit(:student, :time, :topic, :description)
    end
end
