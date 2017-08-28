#créer 2 procédure : credit immo et
#intégrer les tags requis par procédures
#créer tous les tags
#créer les catégories
#créer les tags

#créer un user
#créer des documents

RequestedTag.destroy_all
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
credit_immo = Procedure.create()

personnel = Category.create(name:'Personnel', icon: 'fa fa-user')
auto = Category.create(name: "Auto", icon: 'fa fa-car')
finance = Category.create(name: "Finance", icon: 'fa fa-university')
emploi = Category.create(name: "Emploi", icon: 'fa fa-briefcase')
medical = Category.create(name: "Medical", icon: 'fa fa-stethoscope')
habitation = Category.create(name: "Habitation", icon: 'fa fa-home')
education = Category.create(name: "Education", icon: 'fa fa-graduation-cap')

puts "7 catégories créées"
puts "-------------------"

identity_card = Tag.create(name: "Carte d'identité", category: personnel, validity: 10 * 365, number_of_uploads: 2)
family_book = Tag.create(name: "Livret de famille", category: personnel, validity: 100 * 365, number_of_uploads: 2)
responsability = Tag.create(name: "Attestation de responsabilité civile", category: personnel, validity: 1 * 365, number_of_uploads: 2)
passport = Tag.create(name: "Passeport", category: personnel, validity: 10 * 365, number_of_uploads: 1)

driver_license = Tag.create(name: "Permis de conduire", category: auto, validity: 15 * 365, number_of_uploads: 2)
gray_card = Tag.create(name: "Carte grise", category: auto, validity: 10 * 365, number_of_uploads: 1)
insurance = Tag.create(name: "Attestation d'assurance", category: auto, validity: 10 * 365, number_of_uploads: 1)
ct = Tag.create(name: "Controle technique", category: auto, validity: 2 * 365, number_of_uploads: 1)

rib = Tag.create(name: "RIB", category: finance, validity: 10 * 365, number_of_uploads: 1)
bank_statement = Tag.create(name: "Relevés bancaire", category: finance, validity: 5 * 365, number_of_uploads: 12)
tax_notice = Tag.create(name: "Avis d'imposition", category: finance, validity: 3 * 365, number_of_uploads: 3)
home_tax = Tag.create(name: "Taxe d'habitation", category: finance, validity: 1 * 365, number_of_uploads: 10)
life_insurance = Tag.create(name: "Contrat d'assurance vie", category: finance, validity: 10 * 365, number_of_uploads: 10)
mortgage = Tag.create(name: "Contrat de crédit immobilier", category: finance, validity: 2 * 365, number_of_uploads: 20)

job = Tag.create(name: "Bulletins de salaire", category: emploi, validity: 1 * 365, number_of_uploads: 12)
employment_contract = Tag.create(name: "Contrat de travail", category: emploi, validity: 10 * 365, number_of_uploads: 10)
employment_notice = Tag.create(name: "Attestation d'embauche", category: emploi, validity: 10 * 365, number_of_uploads: 1)
criminal_record = Tag.create(name: "Casier juficiaire", category: emploi, validity: 90, number_of_uploads: 1)

health_book = Tag.create(name: "Carnet de santé", category: medical, validity: 10*365, number_of_uploads: 30)
vital_card = Tag.create(name: "Carte vitale", category: medical, validity: 5*365, number_of_uploads: 1)
mutuelle_notice = Tag.create(name: "Attestation de mutuelle", category: medical, validity: 1 * 365, number_of_uploads: 1)
ordonnance = Tag.create(name: "Ordonnances", category: medical, validity: 1 * 365, number_of_uploads: 1)

proof_address = Tag.create(name: "Justificatif de domicile", category: habitation, validity: 90, number_of_uploads: 1)
rent_receipt = Tag.create(name: "Quittance de loyer", category: habitation, validity: 365, number_of_uploads: 3)
electric_bill = Tag.create(name: "Factures &lectricité", category: habitation, validity: 365, number_of_uploads: 12)
lease = Tag.create(name: "Compromis de vente", category: habitation, validity: 365, number_of_uploads: 3)

school_certificate = Tag.create(name: "Certificat de scolarité", category: education, validity: 10*365, number_of_uploads: 1)
diplomas = Tag.create(name: "Diplomes", category: education, validity: 10*365, number_of_uploads: 5)

puts "28 tags créés"
puts "-------------"

jimmy = User.create(first_name: "Jimmy", last_name: "Dhiu",email: "dhiu.jim@gmail.com", password: "password", address: "160 cours gambetta 33000 Bordeaux")

puts "1 Jimmy créé ! (client particulier)"
puts "-------------"

jorge = User.create(first_name: "Jorge", last_name: "Ruivinho",email: "djorge.ruivinho@me.com", password: "password", address: "35 rue de la paix 75000 Paris", company: "BNP", function: "Directeur des opérations financières", status: "pro")

puts "1 Jorge créé ! (professionnel)"
puts "-------------"



Document.create(user: jimmy, tag: identity_card, document_date: Date.new(2015,11,23), photo_urls: ["http://img.over-blog-kiwi.com/300x300/0/55/64/82/201308/ob_b58de8_photo-633881098554843750-2-1.jpg"])
Document.create(user: jimmy, tag: passport, document_date: Date.new(2007,04,05), photo_urls: ["http://www.vos-demarches.com/medias/img/source/Passeport/passeport_biometrique.jpg"])

puts " 1 carte d'identité créée"
puts "-------------------------"
puts " 1 passport créé"
puts "----------------"

mortgage_procedure = Procedure.create(name: "Crédit immobilier")
credit_procedure = Procedure.create(name: "Crédit à la consommation")
bank_account = Procedure.create(name: "Ouverture d'un compte bancaire")

puts "3 procedures créées"
puts "-------------------"

RequestedTag.create(procedure: mortgage_procedure, tag: identity_card)
RequestedTag.create(procedure: mortgage_procedure, tag: tax_notice)
RequestedTag.create(procedure: mortgage_procedure, tag: job)
RequestedTag.create(procedure: mortgage_procedure, tag: lease)
RequestedTag.create(procedure: mortgage_procedure, tag: proof_address)
RequestedTag.create(procedure: mortgage_procedure, tag: bank_statement)

puts "Documents requis pour credit immo créés"
puts "----------------"

RequestedTag.create(procedure: credit_procedure, tag: identity_card)
RequestedTag.create(procedure: credit_procedure, tag: rib)
RequestedTag.create(procedure: credit_procedure, tag: electric_bill)
RequestedTag.create(procedure: credit_procedure, tag: job)

puts "Documents requis pour crédit à la consommation créés"
puts "----------------"

RequestedTag.create(procedure: bank_account, tag: identity_card)
RequestedTag.create(procedure: bank_account, tag: proof_address)

puts "Documents requis pour l'ouverture d'un compte bancaire"
puts ""

ProcedureRequest.create(part: jimmy, pro: jorge, procedure: mortgage_procedure)



