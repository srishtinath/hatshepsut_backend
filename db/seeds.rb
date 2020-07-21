# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroying character"
Character.destroy_all 
puts "destroying Chat"
Chat.destroy_all 
puts "destroying chat options"
ChatOption.destroy_all 
puts "destroying ClueList"
ClueList.destroy_all 
puts "destroying ItemClueList"
ItemClueList.destroy_all 
puts "destroying Item"
Item.destroy_all 
puts "destroying Location"
Location.destroy_all 
puts "destroying Room"
Room.destroy_all 
puts "destroying Story"
Story.destroy_all 
puts "destroying UserCharacter"
UserCharacter.destroy_all 
puts "destroying UserLocation"
UserLocation.destroy_all 
puts "destroying UserRoom"
UserRoom.destroy_all 
puts "destroying UserStory"
UserStory.destroy_all 
puts "destroying User"
User.destroy_all 


# users

caroline = User.create(name: "Caroline", password: "abc123")
cluelist1 = ClueList.create(user: caroline)


hatshepsut = Story.create

userstory1 = UserStory.create(user: caroline, story: hatshepsut, progress: "0")

#Room1

tent = Room.create(name: "tent", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594929784/Room1/Screen_Shot_2020-07-16_at_12.37.17_PM_stmsht.png")
home = Room.create(name: "home", story: hatshepsut)

userRoom1 = UserRoom.create(user: caroline, room: tent, complete?: false, characterSpoken?: false, cluesFound?: false)

shelf = Location.create(name: "shelf", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595352641/Room1/book-shelf-template-color-vector-21267974_rbu6gh.png", positionX: 65, positionY: 55, size: 30 )
footprints = Location.create(name: "footprints", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594916847/Room1/footsteps_lslhwm.png", positionX: 85, positionY: 1, size: 30)
chest = Location.create(name: "chest", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594936185/Room1/Screen_Shot_2020-07-16_at_12.10.27_PM_git3gj.png", positionX: 20, positionY: 5, size: 15)
hookah = Location.create(name: "hookah", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594915670/Room1/hookah-clipart-vectorportal_pbrghh.png", positionX: 60, positionY: 2, size: 25)

homeLocation = home.locations.create(name: "home")

book1 = Item.create(name: "archaeology book", location: shelf, description: "Just the history of the study of archaeology... nothing to see here", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.44_PM_nncx01.png")
book2 = Item.create(name: "bookmarked book", location: shelf, description: "A clue!", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.01.43_PM_lkhuzn.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.33_PM_ifmvym.png")
book3 = Item.create(name: "pharaoh book", location: shelf, description: "A book on our current understanding of pharaohs", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937477/Room1/Screen_Shot_2020-07-16_at_6.10.03_PM_bcqzid.png")

firstClue = homeLocation.items.create(name: "Looks like there are some footprints over there...")
cluelist1.items.create(name: "Looks like there are some footprints over there...", location_id: Location.find_by(name: "home"))
# Character

guide = Character.create(name: "Atif", room: tent, description: "Atif is the Egyptian guide that has been helping your team make its way through the sands burying the lost tomb of Hatshepsut.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595298441/Room1/Screen_Shot_2020-07-20_at_10.24.52_PM_q99q5s.png")

guidechat1 = Chat.create(character: guide, response: "It's such a pity to lose such a great woman. The police are going to be here tomorrow but I doubt they're going to do anything to find the culprit. Wull you help me find out who did this?")

guidechat2 = Chat.create(character: guide, response: "Are you sure there's nothing I can do to convince you? I have reason to believe your life might be in danger if we don't find them...")
guidechat3 = Chat.create(character: guide, response: "Thank you so much! Here's what I know so far - there were footsteps leading away from the body when I arrived at the scene.")

chatOption1 = ChatOption.create(chat:guidechat1, text: "Absolutely! You can count on me.", prevResponse_id: guidechat1.id, nextResponse_id: guidechat3.id)
chatOption2 = ChatOption.create(chat:guidechat1, text: "I don't think I should get involved...",prevResponse_id: guidechat1.id, nextResponse_id: guidechat2.id)

chatOption3 = ChatOption.create(chat: guidechat3, text: "That's weird... do you know who they belonged to?", prevResponse_id: guidechat3.id)
chatOption4 = ChatOption.create(chat: guidechat3, text: "It could've just been a coincidence...", prevResponse_id: guidechat3.id)

chatOption5 = ChatOption.create(chat: guidechat2, text: "Hmm, I'll try and help I guess", prevResponse_id: guidechat2.id, nextResponse_id: guidechat3.id)