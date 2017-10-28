class UsuariosController < ApplicationController


  before_action :set_ejercicio
  before_action :set_ejercicio_usuario, only: [:show, :update, :destroy]

  # GET /todos/:todo_id/items
  def index
    json_response(@ejercicio.usuarios)
  end

  # GET /todos/:todo_id/items/:id
  def show
    json_response(@usuario)
  end

  # POST /todos/:todo_id/items
  def create
    @ejercicio.usuarios.create!(usuario_params)
    json_response(@ejercicio, :created)
  end

  # PUT /todos/:todo_id/items/:id
  def update
    @usuario.update(usuario_params)
    head :no_content
  end

  # DELETE /todos/:todo_id/items/:id
  def destroy
    @usuario.destroy
    head :no_content
  end

  private

  def usuario_params
    params.permit(:nombre, :password)
  end

  def set_ejercicio
    @ejercicio = Ejercicio.find(params[:ejercicio_id])
  end

  def set_ejercicio_usuario
    @usuario = @ejercicio.usuarios.find_by!(id: params[:id]) if @ejercicio
  end
end
