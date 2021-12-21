puts "seed create..."

r1 = Role.create(character_name: "Kwan")
r2 = Role.create(character_name: "Craig")
r1 = Role.create(character_name: "Rebekah")
r1 = Role.create(character_name: "Joshua")

a1 = Audition.create(
    role_id: r1.id,
    actor: "Kwan",
    location: "NYC",
    phone: 9292878271,
    hired: false
)