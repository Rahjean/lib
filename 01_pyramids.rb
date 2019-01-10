def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i
	puts "Voici la pyramide :"

	for i in 1..etage
		diez = '#'*i
		espace = ' '*(etage-i)
	puts "#{espace}#{diez}"
	end
end

def full_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i
	puts "Voici la pyramide :"

	for i in 1..etage
		j = 2*i-1
		diez = '#'*j
		espace = ' '*(etage-i)
	puts "#{espace}#{diez}"
    end
end

def wtf_pyramide
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	etage = gets.chomp.to_i

	while etage.even?
		puts "Pas de nombre paire s'il vous plait!"
		print "> "
		etage = gets.chomp.to_i
	end

    puts "Voici la pyramide :"

for c in 1..etage

	if c > (etage/2)
	   break
	end

	j = 2*c-1
	
	diez = '#'*j
	espace = ' '*(etage-c)

    puts "#{espace}#{diez}"
end

d = (etage/2)+1

	while d > 0
		j = 2*d - 1
		
		diez = '#'*j
		espace = ' '*(etage-d)
		
		puts "#{espace}#{diez}"
		d -= 1
	end
end


puts "Quelle sorte de pyramide voulez-vous voir? \n 1.half_pyramid \n 2.full_pyramide \n 3.wtf_pyramide"

choix = gets.chomp.to_i
if choix == 1
half_pyramid
elsif choix == 2
full_pyramide
elsif choix == 3
wtf_pyramide
else puts "Erreur, veuillez choisir un de ces chiffres!"
end