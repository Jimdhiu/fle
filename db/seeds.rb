#créer les catégories
#créer les tags
#créer un ou 2 users
#créer des documents
Document.destroy_all
Category.destroy_all
Tag.destroy_all
User.destroy_all

documents = {
  "Personel" => {
    identity: "Carte d'identité",
    passport: "Passeport",

  },
  "Auto" => {
    driver_license: "Permis de conduire",
    gray_card: "Carte grise",

  },
  "Finance" => {
    rib: "RIB",
    bank_statement: "Relevé bancaire",
  },
  "Emploi" => {
    pay_slip: "Bulletin de salaire",
    employment_contract: "Contrat de travail"
  },
  "Medical" => {
    vital_card: "Carte vital",
    health_book: "Carnet de santé"
  },
  "Habitation" => {
    proof_address: "Justificatif de domicile",
    rent_receipt: "Quittance de loyer"
  },
  "Education" => {
    school_certificate: "Certificat de scolarité",
    diplomas: "Diplomes"
  }
}

categories = []
tags = []


documents.each do |category, tag_hash|
  category = Category.create(name: category)
  categories << category

  puts "Catégorie #{category.name} créée"
  puts "---------------------------"
  tag_hash.each do |key, tag|
    tag = Tag.create(name: tag)
    tags << tag
    puts "Tag #{tag.name} crée "
    puts "---------------"
  end
end


user = User.create(email: "test@gmail.com", password: "password")

puts "1 user créé !"

docs = []

categories.each_with_index do |category, index|
  2.times do |i|

    doc = Document.create(verified: true, document_date: Date.new(2017,3,8),
    expiration_date: Date.new(2017,3,8) + 200, user: user,
    category: category, tag: tags[i])
    tags.shift
  end
end

Document.last.destroy




