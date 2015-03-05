class TasksController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all

    def index
        @tasks = current_user.tasks
        render json: @tasks
    end

    def create
        params[:task] = JSON.parse(params[:task]) if params[:task].class == String
        @task= @company.tasks.new(params[:task])
        @task.user_id = current_user.id
        if @task.save
          render json: @task, status: :created
        else
          render json: @task.errors, status: :unprocessable_entity
        end
    end

    def update
        @task= current_user.company.tasks.find(params[:id])

        if @task.update_attributes(params[:task])
          render json: @task, status: :ok
        else
          render json: @task.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy

        render json: @task, head: :no_content
    end

    def search
        unless params[:q].empty?
            @tasks = Task.search params[:q], :with => {:company_id => current_user.company_id}
        else
            @tasks = Task.where(:company_id => current_user.company_id)
        end
    end
end
