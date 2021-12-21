puts "seed create..."
# Role.all.each do |role|
#     role.destroy
# end
Role.destroy_all
Audition.destroy_all

puts "create roles..."
5.times{Role.create(character_name: Faker::Name.name)}

puts "create auditions..."
25.times{Audition.create(role_id:rand(1..5),  actor: Faker::Name.name, location: Faker::Address.city, hired: false, phone: 9999999999)}


# r1 = Role.create(character_name: "Kwan")
# r2 = Role.create(character_name: "Craig")
# r1 = Role.create(character_name: "Rebekah")
# r1 = Role.create(character_name: "Joshua")

# a1 = Audition.create(
#     role_id: r1.id,
#     actor: "Kwan",
#     location: "NYC",
#     phone: 9292878271,
#     hired: false
# )