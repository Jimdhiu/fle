#créer les catégories
#créer les tags
#créer un ou 2 users
#créer des documents
Document.destroy_all
Category.destroy_all
Tag.destroy_all
User.destroy_all


categories = ["Pièces d'identité", "Auto",
 "Finance", "Emploi", "Médical", "Habitation", "Éducation"]

tags = ["Carte d'identité", "Passport", "Permis de conduire", "Numéro de sécurité social",
  "Bulletin de paie", "Justificatif de domicile", "Avis d'imposition", "Relevé de compte bancaire"]

categories.each do |category|
  Category.create(name: category)
end

puts "Catégories créées .... "
puts "-----------------------"



tags.each do |tag|
  Tag.create(name: tag)
end

puts "Tags crées ...."
puts "---------------"

user = User.create(email: "test@gmail.com", password: "password")

puts "1 user créé !"


Document.create(verified: true, document_date: Date.new(2017,3,8),
  expiration_date: Date.new(2017,3,8) + 200, user: user,
  category: Category.first,
  tag: Tag.first)

Document.create(verified: true, document_date: Date.new(2017,3,8),
  expiration_date: Date.new(2017,3,8) + 200, user: user,
  category: Category.,
  tag: Tag.all.sample)

Document.create(verified: true, document_date: Date.new(2017,3,8),
  expiration_date: Date.new(2017,3,8) + 200, user: user,
  category: Category.all.sample,
  tag: Tag.all.sample)



