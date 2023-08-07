class AndrsController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_andr, only: %i[ show edit update destroy ]

  # GET /andrs or /andrs.json
  def index
    @andrs = Andr.where(project: @project)
  end

  # GET /andrs/1 or /andrs/1.json
  def show
    @message = @andr.anders.new
    @messages = @andr.anders
  end

  # GET /andrs/new
  def new
    @andr = @project.andrs.new
  end

  # GET /andrs/1/edit
  def edit
  end

  # POST /andrs or /andrs.json
  def create
    @andr = Andr.new(andr_params)

    respond_to do |format|
      if @andr.save
        format.html { redirect_to project_andr_path(@andr.project,@andr), notice: "Message Board was successfully created." }
        format.json { render :show, status: :created, location: @andr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @andr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /andrs/1 or /andrs/1.json
  def update
    respond_to do |format|
      if @andr.update(andr_params)
        format.html { redirect_to project_andr_path(@andr.project,@andr), notice: "Message Board was successfully updated." }
        format.json { render :show, status: :ok, location: @andr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @andr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /andrs/1 or /andrs/1.json
  def destroy
    @andr.destroy

    respond_to do |format|
      format.html { redirect_to project_andrs_path(@andr.project), notice: "Message Board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_project
      @project= Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_andr
      @andr = Andr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def andr_params
      params.require(:andr).permit(:title, :project_id)
    end
end
