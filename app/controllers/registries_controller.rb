class RegistriesController < ApplicationController
    def index
      @registries = Registry.all
    end

    def create
      user = current_user
      homework = Homework.find(params[:id])
      @registry = Registry.new(carried_out: true, unrealized: false, user_id: user.id, homework_id: homework.id)
      user.homeworks << homework if user.present? && homework.present?
      if @registry.save
        homework.registries << @registry
        redirect_to root_path notice: 'La tarea fue completada'
      else
        redirect_to root_path notice: 'La tarea no fue completada'
      end
    end

    def show; end 

    def update
      user = current_user
      homework = Homework.find(params[:id])
      registry = Registry.search_registry(user, homework)
      if registry.present?
        registry.update(user_id: user.id, homework_id: homework.id, carried_out: false, unrealized: true)
      else
        redirect_to root_path flash:'El registro no se pudo actualizar correctamente'
      end
    end
end
