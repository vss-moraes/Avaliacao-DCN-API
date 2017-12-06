# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Avaliador.new(presidente: false, interno: true)
a.usuario = Usuario.new(nome_completo: "Avaliador", cpf: "12345678910", password: "123456", password_confirmation: "123456")
a.save

i = Inscritor.new()
i.usuario = Usuario.new(nome_completo: "Inscritor", cpf: "12345678911", password: "123456", password_confirmation: "123456")
i.save

Inscrito.create(nome: "Benedito", personagem: "Cruel", categoria: "Cosplay")
Inscrito.create(nome: "Florêncio", personagem: "Félix", categoria: "Cosplay")
Inscrito.create(nome: "Fernando", personagem: "Garfield", categoria: "Cosplay")
Inscrito.create(nome: "Florinda", personagem: "Gato de Botas", categoria: "Cosplay")
Inscrito.create(nome: "Florisbela", personagem: "Gato Guerreiro", categoria: "Cosplay")
Inscrito.create(nome: "Bigode", personagem: "Frajola", categoria: "Cospobre")
Inscrito.create(nome: "Pascoal", personagem: "Manda Chuva", categoria: "Cospobre")
Inscrito.create(nome: "Francisco", personagem: "Tom", categoria: "Cospobre")
Inscrito.create(nome: "Gabriela", personagem: "Batatinha", categoria: "Cospobre")
Inscrito.create(nome: "Mariana", personagem: "Hello Kitty", categoria: "Cospobre")
Inscrito.create(nome: "Lindinha", personagem: "Gato Risonho", categoria: "Cospobre")
