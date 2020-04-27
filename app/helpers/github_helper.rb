module GithubHelper
	def pagination(results = nil, repo_name = '', per_page = 10, page = 1)
		navigation = ''

		if results.present?
			total_count = results[:total_count].to_i
			number_of_pages = (total_count / per_page.to_i).ceil
			page = page.to_i
			
			if page >= 2 
				navigation += "<a href='?repo_name=#{repo_name}&per_page=#{per_page}&page=#{page-1}'><< Previous</a> "
			else
				navigation += '<< Previous '
			end 

			navigation += "<a href='?repo_name=#{repo_name}&per_page=#{per_page}&page=#{page}'> #{page} </a> "

			if page < number_of_pages
	  		navigation += "<a href='?repo_name=#{repo_name}&per_page=#{per_page}&page=#{page+1}'>Next >></a> "
			else
				navigation += 'Next >>'
			end
		end

		navigation
	end
end
