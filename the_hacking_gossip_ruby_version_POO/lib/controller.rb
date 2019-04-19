require 'gossip'
require 'view'
require 'csv'

class Controller

	def initialize
		@view = View.new # when app.rb will be launched, with the help of View.new, it will automatically create an instance @view
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content]) #creates a gossip, with the writer's name and the content of the gossip
		gossip.save
	end

	def gossip_list
		gossips = Gossip.all #index of all the gossips
	end

	def destroy_gossip
	end
end