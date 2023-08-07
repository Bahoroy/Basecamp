class AndersController < ApplicationController
  before_action :set_ander, only: %i[ show edit update destroy ]

  # GET /anders or /anders.json
  def index
    @anders = Ander.all
  end

  # GET /anders/1 or /anders/1.json
  def show
  end

  # GET /anders/new
  def new
    @ander = Ander.new
  end

  # GET /anders/1/edit
  def edit
  end

  # POST /anders or /anders.json
  def create
    @ander = Ander.new(ander_params)

    respond_to do |format|
      if @ander.save
        format.html { redirect_to project_andr_path(@ander.andr.project,@ander.andr), notice: "Message was successfully created." }
        format.json { render :show, status: :created, location: @ander }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ander.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anders/1 or /anders/1.json
  def update
    respond_to do |format|
      if @ander.update(ander_params)
        format.html { redirect_to ander_url(@ander), notice: "Ander was successfully updated." }
        format.json { render :show, status: :ok, location: @ander }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ander.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anders/1 or /anders/1.json
  def destroy
    @ander.destroy

    respond_to do |format|
      format.html { redirect_to project_andr_path(@ander.andr.project,@ander.andr), notice: "Message was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ander
      @ander = Ander.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ander_params
      params.require(:ander).permit(:comment, :andr_id)
    end
end
