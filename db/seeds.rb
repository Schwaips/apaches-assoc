# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "--Destroying current data--"
  # only for developpement envrionnement.
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


puts "---creating events---"
puts "#{User.first}"
sa = Event.new(title: "Sans ascenseur",
  duration: "80",
  summary: "Qu’advient-il lorsque Monsieur n°1 croise  Monsieur n°2 lors d’une soirée organisée ?
    Chacun est venu de son coté. Seul. Ils s’efforcent de dialoguer et tentent de se lier d’amitié, d’oublier un moment leur solitude en commentant les petits tracas de la vie.
    Pour l’un et l’autre, ce n’est pas toujours simple. Mais cela donne une série de situations et de dialogues enlevés et percutants, qui oscillent entre l’absurde et le burlesque.",
  intention_note: "Le projet de mettre en scène le texte « Sans ascenseur » de Sébastien Thiéry est né d'un désir simple : mettre en mots et en corps la folie de deux comédiens, dans cet univers absurde et burlesque, avec un minimum de décors et d’accessoires, pour une forme tournable et économique qui puisse avant tout offrir un imaginaire riche et un large champ de projection pour le spectateur.
  Le format du texte, sous forme de sketchs, se prête parfaitement à cet exercice. Sa drôlerie et sa qualité d'écriture sont à même de répondre aux dites exigences mais aussi aux aspirations artistiques.
  L'idée principale étant de multiplier
  les situations de rencontres des deux protagonistes,
  au cours d'une même soirée, avec toutes les étapes
  qu'elle comporte (le dîner, la piste de danse, la pause cigarette sur le balcon, le karaoké, la fin de soirée éméchée, le lendemain difficile, etc...). La rencontre, l'échange, la parole, le geste, l'incompréhension sont autant de thèmes récurrents, d'éléments de situations propices aux ressorts comiques, mais qui délivrent un message à la fois doux et acide sur les rapports humains dans notre société. Deux hommes qui cherchent à se connaître eux-mêmes en risquant l'autre, qui se questionnent sur ce qui les entoure et sur la nature même de leurs échanges.",
  user: User.first )
  sapic = URI.open('https://res.cloudinary.com/cb-dev/image/upload/v1616519839/apaches/affiche-ascenceur-2021.jpg')
  sa.photo.attach(io: sapic, filename: 'sans-ascenseur-affiche.jpg', content_type: 'image/jpg' )
  sa.save!

  saactorstib = ActorEvent.new(event_id: sa.id, actor_id: tibo.id)
  saactorsval = ActorEvent.new(event_id: sa.id, actor_id: val.id)
  saactorstib.save!
  saactorsval.save!
  puts "--actors added to actor_events for Sans ascenseur"

  puts "--Sans ascenseur event saved--"
puts "---SEED END---"
