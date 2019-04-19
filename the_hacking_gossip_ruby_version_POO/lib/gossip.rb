require 'csv'

class Gossip
	attr_reader :author, :content

	def initialize(author, content)
 		 @content = content
  		 @author = author
	end

	def save
			CSV.open("./db/gossip.csv", "ab") do |row| #saves every array that includes a name and a gossip in rows
  			row << [@author, @content]
			end
	end

	def self.all
 		all_gossips = [] # 1)création d'un array vide qui s'appelle all_gossips

 		CSV.foreach("./db/gossip.csv") do |row|# 2)chaque ligne de ton CSV.each do |ligne|
    	all_gossips << row
    	

    	end
    	puts all_gossips
	end
end