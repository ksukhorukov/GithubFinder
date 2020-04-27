class GithubController < ApplicationController
	def index
		@result  = GithubService.new(github_params).search.to_json
	end

	private

	def github_params
		params.permit(:repo_name, :per_page, :page)
	end
end
