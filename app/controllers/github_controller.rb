class GithubController < ApplicationController
	def index
		@results  = GithubService.new(github_params).search
	end

	private

	def github_params
		params.permit(:repo_name, :per_page, :page)
	end
end
