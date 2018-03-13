class ListaClientesController < ApplicationController
  before_action :set_lista_cliente, only: [:show, :edit, :update, :destroy]

  # GET /lista_clientes
  # GET /lista_clientes.json
  def index
    @lista_clientes = ListaCliente.all
  end

  # GET /lista_clientes/1
  # GET /lista_clientes/1.json
  def show
  end

  # GET /lista_clientes/new
  def new
    @listum = Listum.find(params[:listum_id])
    @lista_cliente = @listum.lista_cliente.new
  end

  # GET /lista_clientes/1/edit
  def edit
  end

  # POST /lista_clientes
  # POST /lista_clientes.json
  def create
    @listum = Listum.find(params[:listum_id])
    @lista_cliente = @listum.lista_cliente.new(lista_cliente_params)

    respond_to do |format|
      if @lista_cliente.save
        format.html { redirect_to @lista_cliente, notice: 'Lista cliente was successfully created.' }
        format.json { render :show, status: :created, location: @lista_cliente }
      else
        format.html { render :new }
        format.json { render json: @lista_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_clientes/1
  # PATCH/PUT /lista_clientes/1.json
  def update
    respond_to do |format|
      if @lista_cliente.update(lista_cliente_params)
        format.html { redirect_to @lista_cliente, notice: 'Lista cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_cliente }
      else
        format.html { render :edit }
        format.json { render json: @lista_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_clientes/1
  # DELETE /lista_clientes/1.json
  def destroy
    @lista_cliente.destroy
    respond_to do |format|
      format.html { redirect_to lista_clientes_url, notice: 'Lista cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_cliente
      @lista_cliente = ListaCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_cliente_params
      params.require(:lista_cliente).permit(:cliente, :correo)
    end
end
