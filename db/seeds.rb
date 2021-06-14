# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

medical_center_type = MedicalCenterType.create([{ name: 'Hospital' }, { name: 'Clínica' }, { name: 'Sanatorio' }, { name: 'Dispensario' }, { name: 'Salita' }])
worker_type = WorkerType.create([{ name: 'Médico' }, { name: 'Enfermero' }, { name: 'Chofer' }])
worker = Worker.create(first_name: 'Monica', last_name: 'Fernandez', email: 'monica@gmail.com', phone_number: 74845111657)
worker = Worker.create(first_name: 'Juan', last_name: 'Mnedez', email: 'juan@gmail.com', phone_number: 1652449872)
worker = Worker.create(first_name: 'Ana', last_name: 'Bargas', email: 'ana@gmail.com', phone_number: 3416220284)
worker = Worker.create(first_name: 'Ian', last_name: 'Almiron', email: 'ian@gmail.com', phone_number: 4982556107)
worker = Worker.create(first_name: 'Patricia', last_name: 'Tribbia', email: 'patricia@gmail.com', phone_number: 7436558912)
worker = Worker.create(first_name: 'Mariana', last_name: 'Garcia', email: 'mariana@gmail.com', phone_number: 4859781243)
medical_center_official = MedicalCenterOfficial.create([{ name: 'Sanatorio'}, { name: 'Clinica'}, { name: 'San martin'}, { name: 'Hospital San Roque'}])
