class GithubController < ApplicationController
	def index
		@results  = GithubService.new(github_params).search
		@repo_name = params.fetch(:repo_name, '')
		@per_page = params.fetch(:per_page, 10)
		@page = params.fetch(:page, 1)
	end

	private

	def github_params
		params.permit(:repo_name, :per_page, :page)
	end
end
