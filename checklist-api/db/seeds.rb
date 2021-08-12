# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#20.times do 
#	nombre = Faker::Creature::Dog.name
#	creado_por = Faker::Name.unique.name
#	Checklist.create(nombre: nombre, creado_por: creado_por)
#end

5.times do |i|
	nombre = "Tarea #{i + 1}"
	hecho = Faker::Name.unique.name
	res = Checklist.find(i + 1)
	Task.create(nombre: nombre, hecho: hecho, checklist_id: res.id)
end
