class PeliculapersonajesController < ApplicationController
  before_action :set_peliculapersonaje, only: %i[ show edit update destroy ]

  # GET /peliculapersonajes or /peliculapersonajes.json
  def index
    @peliculapersonajes = Peliculapersonaje.all
  end

  # GET /peliculapersonajes/1 or /peliculapersonajes/1.json
  def show
  end

  # GET /peliculapersonajes/new
  def new
    @peliculapersonaje = Peliculapersonaje.new
  end

  # GET /peliculapersonajes/1/edit
  def edit
  end

  # POST /peliculapersonajes or /peliculapersonajes.json
  def create
    @peliculapersonaje = Peliculapersonaje.new(peliculapersonaje_params)

    respond_to do |format|
      if @peliculapersonaje.save
        format.html { redirect_to peliculapersonaje_url(@peliculapersonaje), notice: "Peliculapersonaje was successfully created." }
        format.json { render :show, status: :created, location: @peliculapersonaje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @peliculapersonaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peliculapersonajes/1 or /peliculapersonajes/1.json
  def update
    respond_to do |format|
      if @peliculapersonaje.update(peliculapersonaje_params)
        format.html { redirect_to peliculapersonaje_url(@peliculapersonaje), notice: "Peliculapersonaje was successfully updated." }
        format.json { render :show, status: :ok, location: @peliculapersonaje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @peliculapersonaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculapersonajes/1 or /peliculapersonajes/1.json
  def destroy
    @peliculapersonaje.destroy

    respond_to do |format|
      format.html { redirect_to peliculapersonajes_url, notice: "Peliculapersonaje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peliculapersonaje
      @peliculapersonaje = Peliculapersonaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peliculapersonaje_params
      params.require(:peliculapersonaje).permit(:personaje_id, :pelicula_id)
    end
end
