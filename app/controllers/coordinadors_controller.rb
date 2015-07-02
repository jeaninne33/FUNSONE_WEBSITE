class CoordinadorsController < ApplicationController
  before_action :set_coordinador, only: [:show, :edit, :update, :destroy]
  layout "administracion"


  def index
    @coordinadors = Coordinador.all
  end

  def show
  end

  def new
    @coordinador = Coordinador.new
  end

  def edit
  end

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

  def destroy
    @coordinador.destroy
    respond_to do |format|
      format.html { redirect_to coordinadors_url, notice: 'Coordinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_coordinador
      @coordinador = Coordinador.find(params[:id])
    end

    def coordinador_params
      params.require(:coordinador).permit(:nombre, :apellido, :foto, :twitter, :facebook, :correo, :linkd,:image, :remote_image_url )
    end
end
