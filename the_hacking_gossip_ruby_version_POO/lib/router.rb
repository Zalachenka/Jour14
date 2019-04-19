require 'controller'
require 'csv'

class Router

#On veut qu'un "Router.new" lancé par app.rb, crée automatique une instance "@controller"
  def initialize
    @controller =  Controller.new
  end 

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    puts "WELCOME TO THE GOSSIP PROJECT"

    while true

      #on affiche le menu
      puts "Whatcha doin' ?"
      puts "1. Wanna gossip"
      puts "2. Wanna know EVERYTHING"
      puts "4. Wanna leave the app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts "You chose to gossip" 
        	@controller.create_gossip

      when 2
      	puts "Wanna know it all huh ? Let's see:"
      		@controller.gossip_list

      when 4
        puts "See ya !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Not an option, try again" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end