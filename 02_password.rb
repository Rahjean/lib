require "io/console"
def signup
	puts "Veuillez entrez un mot de passe svp"
	
	md = STDIN.noecho(&:gets).chomp
	puts "Mot de passe sauvez"
	return md
end

def login
	md = signup
	
	puts "Veuillez saisir votre mot de passe svp"
	
	login = STDIN.noecho(&:gets).chomp
	

    if login != md
    	puts "Mot de passe incorect"

    else
      puts "Bienvenu :D"
    end
    return login
end

login