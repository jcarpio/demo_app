class AportacionsController < ApplicationController
  before_action :set_aportacion, only: [:show, :edit, :update, :destroy]

  # GET /aportacions
  # GET /aportacions.json
  def index
    @aportacions = Aportacion.all
  end

  # GET /aportacions/1
  # GET /aportacions/1.json
  def show
  end

  # GET /aportacions/new
  def new
    @aportacion = Aportacion.new
  end

  # GET /aportacions/1/edit
  def edit
  end

  # POST /aportacions
  # POST /aportacions.json
  def create
    @aportacion = Aportacion.new(aportacion_params)

    respond_to do |format|
      if @aportacion.save
        format.html { redirect_to @aportacion, notice: 'Aportacion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @aportacion }
      else
        format.html { render action: 'new' }
        format.json { render json: @aportacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aportacions/1
  # PATCH/PUT /aportacions/1.json
  def update
    respond_to do |format|
      if @aportacion.update(aportacion_params)
        format.html { redirect_to @aportacion, notice: 'Aportacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aportacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aportacions/1
  # DELETE /aportacions/1.json
  def destroy
    @aportacion.destroy
    respond_to do |format|
      format.html { redirect_to aportacions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aportacion
      @aportacion = Aportacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aportacion_params
      params.require(:aportacion).permit(:name, :email, :dni_cif, :dir1, :dir2, :cp, :localidad, :provincia, :telefono, :email, :cantidad, :en_mecenas, :certificado, :comprobado)
    end
end
