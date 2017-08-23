#créer les catégories
#créer les tags
#créer un ou 2 users
#créer des documents


Document.destroy_all
Tag.destroy_all
Category.destroy_all

User.destroy_all



categories = ["Personel", "Auto", "Finance", "Emploi", "Medical", "Habitation", "Education"]
tags =


documents = {
  "Personel" => {
    identity: "",
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

personnel = Category.create(name: "Personnel")
auto = Category.create(name: "Auto")
finance = Category.create(name: "Finance")
emploi = Category.create(name: "Emploi")
medical = Category.create(name: "Medical")
habitation = Category.create(name: "Habitation")
education = Category.create(name: "Education")

puts "7 catégories créées"
puts "-------------------"

t1 = Tag.create(name: "Carte d'identité", category: personnel, validity: 10*365, number_of_uploads: 1)
t2 = Tag.create(name: "passport", category: personnel, validity: 10*365, number_of_uploads: 1)
t3 = Tag.create(name: "Permis de conduire", category: auto, validity: 10*365, number_of_uploads: 1)
t4 = Tag.create(name: "Carte grise", category: auto, validity: 10*365, number_of_uploads: 1)
t5 = Tag.create(name: "RIB", category: finance, validity: 10*365, number_of_uploads: 1)
t6 = Tag.create(name: "Relevé bancaire", category: finance, validity: 10)
t7 = Tag.create(name: "Bulletin de salaire", category: emploi, validity: 10*365, number_of_uploads: 1)
t8 = Tag.create(name: "Contrat de travail", category: emploi, validity: 10*365, number_of_uploads: 1)
t9 = Tag.create(name: "Carnet de santé", category: medical, validity: 10*365, number_of_uploads: 1)
t10 = Tag.create(name: "Carte vital", category: medical, validity: 5*365, number_of_uploads: 1)
t11 = Tag.create(name: "Justificatif de domicile", category: habitation, validity: 60, number_of_uploads: 1)
t12 = Tag.create(name: "Quittance de loyer", category: habitation, validity: 10*365, number_of_uploads: 1)
t13 = Tag.create(name: "Certificat de scolarité", category: education, validity: 10*365, number_of_uploads: 1)
t14 = Tag.create(name: "Diplomes", category: education, validity: 10*365, number_of_uploads: 1)

puts "14 tags créés"
puts "-------------"

user = User.create(email: "test@gmail.com", password: "password")

puts "1 user créé !"
puts "-------------"


Document.create(user: user, tag: t1, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t2, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t3, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t4, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t5, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t6, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t7, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t8, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t9, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t10, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t11, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t12, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t13, document_date: Date.today - rand(10..10000))
Document.create(user: user, tag: t14, document_date: Date.today - rand(10..10000))

puts "14 documents créés"
