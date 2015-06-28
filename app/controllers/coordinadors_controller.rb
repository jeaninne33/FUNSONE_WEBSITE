class CoordinadorsController < ApplicationController
  before_action :set_coordinador, only: [:show, :edit, :update, :destroy]

  # GET /coordinadors
  # GET /coordinadors.json
  def index
    @coordinadors = Coordinador.all
  end

  # GET /coordinadors/1
  # GET /coordinadors/1.json
  def show
  end

  # GET /coordinadors/new
  def new
    @coordinador = Coordinador.new
  end

  # GET /coordinadors/1/edit
  def edit
  end

  # POST /coordinadors
  # POST /coordinadors.json
  def create
    @coordinador = Coordinador.new(coordinador_params)

    respond_to do |format|
      if @coordinador.save
        format.html { redirect_to @coordinador, notice: 'Coordinador was successfully created.' }
        format.json { render :show, status: :created, location: @coordinador }
      else
        format.html { render :new }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordinadors/1
  # PATCH/PUT /coordinadors/1.json
  def update
    respond_to do |format|
      if @coordinador.update(coordinador_params)
        format.html { redirect_to @coordinador, notice: 'Coordinador was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordinador }
      else
        format.html { render :edit }
        format.json { render json: @coordinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinadors/1
  # DELETE /coordinadors/1.json
  def destroy
    @coordinador.destroy
    respond_to do |format|
      format.html { redirect_to coordinadors_url, notice: 'Coordinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordinador
      @coordinador = Coordinador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coordinador_params
      params.require(:coordinador).permit(:nombre, :apellido, :foto, :twitter, :facebook, :correo, :linkd)
    end
end
