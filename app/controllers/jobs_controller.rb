class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render 'index'
    end
    def get
        render json: Job.all
        
    end
    def show 
        render json: Job.where({id: params[:id]})
    end
    def create
        render json: Job.create(url: params[:url], employer_name: params[:employer_name], employer_description: params[:employer_description], job_title: params[:job_title], job_description: params[:job_description], year_of_experience: params[:year_of_experience], education_requirement: params[:education_requirement], industry: params[:industry], base_salary: params[:base_salary], employment_type_id: params[:employment_type_id])
    end
end
