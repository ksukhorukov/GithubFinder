require 'octokit'

class GithubService
	attr_reader :repo_name, :page, :per_page, :client

	def initalize(repo_name, page = 1, per_page = 10)
		@client = Octokit::Client.new
		@repo_name = repo_name
		@per_page = per_page
		@page = page
	end

	def search
		client.search_repos(repo_name, { per_page: per_page, page: page })
	end

	def pagination
	end
end

