require_relative 'controller'

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
      puts "2. Wanna know it ALL"
      puts "3. Wanna hide some stuff"
      puts "4. Wanna leave the app"
      puts "Your answer ?"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
      	puts ""
        puts "You chose to gossip" 
        puts ""
        	@controller.create_gossip

      when 2
      	puts ""
      	puts "Wanna know everything ? Here you go(ssip):"
      	puts ""
      		@controller.index_gossips
      	puts ""

      when 3
      	puts ""
      	puts "Wanna bury secrets hey ? You got it boss"
      	puts ""
      		@controller.destroy_gossip
      when 4
      	puts ""
        puts "See ya !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.

      else
        puts "Not an option, try again" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)

      end
    end
  end
end
