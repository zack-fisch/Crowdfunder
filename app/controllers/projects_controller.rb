class ProjectsController < ApplicationController

	def index
		@projects = ['Project 1', 'Project 2']
	end
end
