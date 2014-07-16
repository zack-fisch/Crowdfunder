class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])

	rescue ActiveRecord::RecordNotFound
		redirect_to :action => 'index'
	end
end
