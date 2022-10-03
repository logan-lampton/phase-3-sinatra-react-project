puts "🌱 Seeding spices..."

# Seed your database here

Member.create(character_name: "Scoots McCool", player_name: "Logan", class_name: "Bard", race: "Kenku", level: 11, alignment: "Chaotic Neutral", party_id: 1)
Member.create(character_name: "Sir CodesALot", player_name: "Min", class_name: "Wizard", race: "Half-Elf", level: 12, alignment: "Chaotic Good", party_id: 1)

Party.create(name: "The Full Stack", campaign: "Sinatra's Shadow", DM: "Dr. Ruby", description: "On a quest to defeat the evil sorcerer Sinatra, our adventurers travel through a land of riches and rubys reacting to the foul plots of their foe.", user_id: 1)
Party.create(name: "The Full Stack", campaign: "Sinatra's Shadow", DM: "Dr. Ruby", description: "On a quest to defeat the evil sorcerer Sinatra, our adventurers travel through a land of riches and rubys reacting to the foul plots of their foe.", user_id: 2)

User.create(name: "Logan", email: "logan@example.com", password: "Logan12345")
User.create(name: "Min", email: "min@example.com", password: "Min12345")

puts "✅ Done seeding!"
