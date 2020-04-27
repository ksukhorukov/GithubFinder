module GithubHelper
	def pagination(results = nil, repo_name = '', per_page = 10, page = 1)
		navigation = ''

		if results.present?
			total_count = results[:total_count].to_i
			number_of_pages = (total_count / per_page.to_i).ceil
			

			for i in 1..number_of_pages do
	  		navigation += "<a href='?repo_name=#{repo_name}&per_page=#{per_page}&page=#{i}'>#{i}</a> "
			end
		end

		navigation
	end
end
