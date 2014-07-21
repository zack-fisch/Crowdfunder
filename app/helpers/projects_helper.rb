module ProjectsHelper
	def wording(project)
		if project.pledging_ends_on > Time.now
			content_tag(:strong, time_ago_in_words(project.pledging_ends_on) + " from now") 
		else 
			content_tag(:strong, 'Project Funding Finished')
		end
	end

	def image(project)
		if project.image_file_name.blank?
			image_tag 'placeholder.jpg', size: '100'
		else
			image_tag project.image_file_name, size: '100'
		end
	end
end
