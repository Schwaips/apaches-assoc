# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "--Destroying current data--"
  Actor.destroy_all
  Event.destroy_all

puts "--data destroyed--"

puts "--starting seed---"
puts "--Creating Actors-- "

puts "-Creating Tibo-"
  tibo = Actor.new(first_name:"Thibaud", last_name:"Boursier",
    email:"thibaud.boursier@gmail.com", role:"Acteur",
    description:"Après deux années consacrées à la technique,
    Thibaud débute sa formation d'acteur en 2009 au conservatoire de la ville d'Angers où il suit l'enseignement de Catherine Gandois.
    Avec son soutien, il se rend à Paris deux ans plus tard pour y poursuivre son apprentissage auprès de Marc Ernotte au conservatoire
    du huitième arrondissement et y obtient son certificat d’étude Théâtrale pour sa première mise en scène d’Hamlet
    (W. Shakespeare) et de la Mouette (A. Tchekhov). L'année suivante, il travaille en collaboration avec le centre Wallonie-Bruxelles
    sur des textes de Jean-Marie Piemme, Henri Michaux et Henri Bauchau, puis en région avec Les Rencontres Imaginaires de Jean Guichard
    et la compagnie Les Arthurs. Suite à cette année dédiée aux projets professionnels, il intègre la promotion IX de l'École Supérieure
    d'Art Dramatique du TNB à Rennes de 2015 à 2018, avec laquelle il jouera, durant le festival TNB, la reprise de leur spectacle
    « hors les murs : Constellation II, création collective menée par Eric Lacascade. Fort de son parcours, il revient dans sa ville natale
    pour y installer sa compagnie : APACHES.")

    tibopic = URI.open('https://res.cloudinary.com/cb-dev/image/upload/v1615457567/apaches/profil-pic-thibaud-C-Dan_Ramaen.jpg')
    tibo.photo.attach(io: tibopic, filename: 'tibo-avatar.jpg', content_type: 'image/jpg')
  tibo.save!
puts "--Tibo created!--"

puts "-Creating Valentin-"
    val = Actor.new(first_name:"Valentin", last_name:"Rolland",
      email:"val49@hotmail.fr", role:"Acteur",
      description:"Valentin entre au conservatoire régional d’Angers en 2009 sous la direction de Catherine Gandois.
       Il est accepté à l'école nationale d’art dramatique de Montpellier ( La maison Louis Jouvet) en 2011 dirigée par
       Ariel Garcia Valdès. Il a travaillé avec plusieurs metteurs en scène comme George Lavaudan, André Wilms, Evelyne DIDI,
       Cyril Teste, Laurent Gutman, Dag Jeanneret, Jacques Allaire... Il a interprété des rôles comme celui d'Hamlet, Platonov,
       Britannicus... En 2014 il intègre la Comédie Française en tant qu'élève comédien.
       Il travaille notamment avec Corsetti, Guillaume Gallienne, Laurent Lafitte, Denis Podalydès….
       En 2015, il travaille avec Jacques Allaire sur le spectacle « Le dernier contingent » et entame une tournée nationale de 2 ans.
       Dans le cadre d’un festival de théâtre, il crée en août 2018 sa première comédie musicale « Une fois ».
       En 2018, il travaille sur la nouvelle création de Katia Ferreira « Virgin Suicide » à la MC2 de Grenoble.
       Il crée avec son ami Thibaud Boursier le premier spectacle de la Compagnie APACHES « Sans ascenseur »
       fin 2018 et programme une tournée pour 2019.")
      valpic = URI.open('https://res.cloudinary.com/cb-dev/image/upload/v1615457567/apaches/profil-pic-valentin.jpg')
      val.photo.attach(io: valpic, filename: 'val-avatar.jpg', content_type: 'image/jpg')
    val.save!
puts "--Valentin created"

puts "--Creating Charlie-"
    charlie = Actor.new(first_name:"Charlie", last_name:"Bertrand",
      email:"charlie.bertrand49@laposte.net", role:"Président",
      description:"Lorem Ipsum is simply dummy text of the printing
      and typesetting industry. Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s, when an unknown printer
      took a galley of type and scrambled it to make a type specimen book")
      charliepic = URI.open('https://res.cloudinary.com/cb-dev/image/upload/v1616524472/apaches/profil-pic-charlie.png')
      charlie.photo.attach(io: charliepic, filename: 'charlie-avatar.jpg', content_type: 'image/jpg')
    charlie.save!
puts "-Charlie created"


puts "--Creation Florian pagès"
      flo = Actor.new(first_name: "Florian", last_name: "Pagès", email:"pagesflorian@hotmail.com", role:"Créateur lumière", description: "
          Formé à l’art dramatique par Gilles Guérin à l’EMAD à Castres à partir de 2006, Florian Pagés intègre le Théâtre École d’Aquitaine en 2007, où il joue entre autre le Capitaine des pompiers dans la « Cantatrice Chauve »(Ionesco), Enjolras dans «Les Misérables» (Hugo), Christian dans «Cyrano de Bergerac» (Rostand).
          A partir de 2010, il travaille avec Fi-Théâtre pour le spectacle Ulysse d'autre-part et dans le collectif Le Thyase avec lequel il joue Les extraordinaires et fabuleuses aventures du «Baron de Munchausen» mis en scène par Marin Assassi. Parallèlement, il se forme au métier de technicien lumière.
          En juin 2013 il crée les lumières de «Don Giovanni», mise en scène Emmanuel Gardeil")
      flopic = URI.open('https://res.cloudinary.com/cb-dev/image/upload/v1616605638/apaches/florian-pages-225x300.jpg')
      flo.photo.attach(io: flopic, filename: 'florian-avatar.jpg', content_type: 'image/jpg')
      flo.save!
puts "--Florian created--"


puts "---SEED END---"
