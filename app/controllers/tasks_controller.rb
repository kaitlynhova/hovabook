class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    @user = User.find(session[:user_id])
    respond_to do |format|
      format.js 
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])
    @user = User.find(session[:user_id])
    respond_to do |format|
      format.html # show.html.erb
      format.js {}
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
    @task.gig_id = params[:gig_id]
    @user = User.find(session[:user_id])
    respond_to do |format|
      format.js 
      format.html
    end
  end

  # GET /tasks/1/edit
  def edit
    @user = User.find(session[:user_id])
    @task = Task.find(params[:id])
    respond_to do |format|
      format.js {}
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.create!(params[:task])
    @user = User.find(session[:user_id])
    @task.gig_id = params[:task][:gig_id]
    @task.user_id = session[:user_id]
    @task.save
    respond_to do |format|
      format.html{ redirect_to tasks_url }
      format.js
      format.json{}
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    
    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html {  }
        format.js # update.js.erb
      else
        format.html { render action: "edit" }
        format.js # update.js.erb
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
      format.js
    end
  end
end
