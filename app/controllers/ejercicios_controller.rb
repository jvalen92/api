class EjerciciosController < ApplicationController

	
  before_action :set_ejercicio, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @ejercicios = Ejercicio.all
    json_response(@ejercicios)
  end

  # POST /todos
  def create
    @ejercicio = Ejercicio.create!(ejercicio_params)
    json_response(@ejercicio, :created)
  end

  # GET /todos/:id
  def show
    json_response(@ejercicio)
  end

  # PUT /todos/:id
  def update
    @ejercicio.update(ejercicio_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @ejercicio.destroy
    head :no_content
  end

  private

  def ejercicio_params
    # whitelist params
    params.permit(:nombre, :musculo)
  end

  def set_ejercicio
    @ejercicio = Ejercicio.find(params[:id])
  end
end

