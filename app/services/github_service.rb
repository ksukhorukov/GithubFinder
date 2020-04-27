require 'octokit'

class GithubService
	attr_reader :repo_name, :page, :per_page, :client, :results

	def initialize(params = {})
		@repo_name = params.fetch(:repo_name, '')
		@per_page = params.fetch(:per_page, 100)
		@page = params.fetch(:page, 1)

		@client = Octokit::Client.new
	end

	def search
		begin
			@results ||= client.search_repos(repo_name, { per_page: per_page, page: page })	
		rescue Exception => e 
			@results = []
		end
		byebug
	end
end

