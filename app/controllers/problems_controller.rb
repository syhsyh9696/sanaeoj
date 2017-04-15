class ProblemsController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @problems = Problem.all 
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def new
    @problem = Problem.new
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def create
    @problem = Problem.new(problem_params)
    if @problem.save
      redirect_to @problem, notice: 'Problem was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update(problem_params)
      redirect_to @problem, notice: 'Problem was successfully updated.' 
    else
      render action: 'edit'
    end
  end

  def destroy
    @problem = Problem.find(params[:id])
    if @problem.destroy
      redirect_to action:'index', notice: 'Problem was successfully deleted.'
    end
  end
  private
  def problem_params
      params.require(:problem).permit(
        :id, 
        :title, 
        :description, 
        :input, 
        :output, 
        :samplein,
        :sampleout,
        :hint, 
        :source, 
        :memlimit,
        :timelimit, 
        :ptype,
        :sjcode)
    end
end
