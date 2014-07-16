module ProjectsHelper
	def wording(project)
		if project.pledging_ends_on > Time.now
			content_tag(:strong, time_ago_in_words(project.pledging_ends_on) + " from now")
		else 
			content_tag(:strong, 'Project Funding Finished')
		end
	end
end
