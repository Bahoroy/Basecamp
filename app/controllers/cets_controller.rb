class CetsController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_cet, only: %i[ show edit update destroy ]

  # GET /cets or /cets.json
  def index
    @attachments = Cet.where(project: @project)
    @attachment = @project.cets.new
  end

  # GET /cets/1 or /cets/1.json
  def show
  end

  # GET /cets/new
  def new
    @cet = Cet.new
  end

  # GET /cets/1/edit
  def edit
  end

  # POST /cets or /cets.json
  def create
    @cet = Cet.new(cet_params)

    respond_to do |format|
      if @cet.save
        format.html { redirect_to project_cets_path(@cet.project), notice: "Attachment was successfully uploaded." }
        format.json { render :show, status: :created, location: @cet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cets/1 or /cets/1.json
  def update
    respond_to do |format|
      if @cet.update(cet_params)
        format.html { redirect_to cet_url(@cet), notice: "Cet was successfully updated." }
        format.json { render :show, status: :ok, location: @cet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cets/1 or /cets/1.json
  def destroy
    @cet.destroy

    respond_to do |format|
      format.html { redirect_to project_cets_path(@cet.project), notice: "Attachment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_project
    @project= Project.find(params[:project_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_cet
      @cet = Cet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cet_params
      params.require(:cet).permit(:project_id, :file)
    end
end
