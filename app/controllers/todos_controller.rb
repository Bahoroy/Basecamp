class TodosController < ApplicationController
    before_action :set_project, only: [:index, :new ]
    before_action :set_todo, only: [:show, :edit, :update, :destroy]
  
    def index
      @todos = Todo.where(project: @project)
    end
  
    def show
    end
  
    def new
      @todo = @project.todos.new
    end
  
    def create
      @todo = Todo.new(todo_params)
  
      if @todo.save
        redirect_to project_todos_path(@todo.project), notice: 'Todo was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @todo.update(todo_params)
        redirect_to project_todo_path(@todo.project, @todo), notice: 'Todo was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @todo.destroy
      redirect_to project_todos_path(@todo.project), notice: 'Todo was successfully destroyed.'
    end
  
    private
  
    def set_project
        @project = Project.find(params[:project_id])
    end

    def set_todo
      @todo = Todo.find(params[:id])
    end
  
    def todo_params
      params.require(:todo).permit(:title, :description, :completed, :project_id)
    end
  end
  