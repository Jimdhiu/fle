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

t1 = Tag.create(name: "Carte d'identité", category: personnel, number_of_uploads: 1)
t2 = Tag.create(name: "Passeport", category: personnel, number_of_uploads: 1)
t3 = Tag.create(name: "Permis de conduire", category: auto, number_of_uploads: 1)
t4 = Tag.create(name: "Carte grise", category: auto, number_of_uploads: 1)
t5 = Tag.create(name: "RIB", category: finance, number_of_uploads: 1)
t6 = Tag.create(name: "Relevé bancaire", category: finance, number_of_uploads: 1)
t7 = Tag.create(name: "Bulletin de salaire", category: emploi, number_of_uploads: 1)
t8 = Tag.create(name: "Contrat de travail", category: emploi, number_of_uploads: 1)
t9 = Tag.create(name: "Carnet de santé", category: medical, number_of_uploads: 1)
t10 = Tag.create(name: "Carte vital", category: medical, number_of_uploads: 1)
t11 = Tag.create(name: "Justificatif de domicile", category: habitation, number_of_uploads: 1)
t12 = Tag.create(name: "Quittance de loyer", category: habitation, number_of_uploads: 1)
t13 = Tag.create(name: "Certificat de scolarité", category: education, number_of_uploads: 1)
t14 = Tag.create(name: "Diplomes", category: education, number_of_uploads: 1)

puts "14 tags créés"
puts "-------------"

user = User.create(email: "test@gmail.com", password: "password")

puts "1 user créé !"
puts "-------------"


Document.create(user: user, tag: t1)
Document.create(user: user, tag: t2)
Document.create(user: user, tag: t3)
Document.create(user: user, tag: t4)
Document.create(user: user, tag: t5)
Document.create(user: user, tag: t6)
Document.create(user: user, tag: t7)
Document.create(user: user, tag: t8)
Document.create(user: user, tag: t9)
Document.create(user: user, tag: t10)
Document.create(user: user, tag: t11)
Document.create(user: user, tag: t12)
Document.create(user: user, tag: t13)
Document.create(user: user, tag: t14)

puts "14 documents créés"
