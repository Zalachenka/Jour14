require_relative 'gossip'
require_relative 'view'

class Controller

	def initialize
		@view = View.new # when app.rb will be launched, with the help of View.new, it will automatically create an instance @view
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params[:author], params[:content]) #creates a gossip, with the author's name and the content of the gossip
		gossip.save
	end

	def index_gossips
		gossips = Gossip.all
	end

	def destroy_gossip

		all_gossips = [] 

 		CSV.foreach("./db/gossip.csv") do |row|

		puts "What do you wanna hide ?"
		all_gossips.select
		table = CSV.table(@csvfile)

		table.delete_if do |row|
  		row[:foo] == 'true'
		end

		File.open(@csvfile, 'w') do |f|
  		f.write(table.to_csv)
		end
	end
	end
end

