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

userRoom1 = UserRoom.create(user: caroline, room: tent, complete?: false, characterSpoken?: false, cluesFound?: false)

shelf = Location.create(name: "shelf", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594916954/Room1/601-6012270_bookcase-clipart-transparent-book-shelf-vector-png_cbclpc.png")
footprints = Location.create(name: "footprints", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594916847/Room1/footsteps_lslhwm.png")
chest = Location.create(name: "chest", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594936185/Room1/Screen_Shot_2020-07-16_at_12.10.27_PM_git3gj.png")
hookah = Location.create(name: "hookah", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594915670/Room1/hookah-clipart-vectorportal_pbrghh.png")


book1 = Item.create(name: "archaeology book", location: shelf, description: "Just the history of the study of archaeology... nothing to see here", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.44_PM_nncx01.png")
book2 = Item.create(name: "bookmarked book", location: shelf, description: "A clue!", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.01.43_PM_lkhuzn.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.33_PM_ifmvym.png")
book3 = Item.create(name: "pharaoh book", location: shelf, description: "A book on our current understanding of pharaohs", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937477/Room1/Screen_Shot_2020-07-16_at_6.10.03_PM_bcqzid.png")

# Character

guide = Character.create(name: "Atif", room: tent, description: "Atif is the Egyptian guide that has been helping your team make its way through the sands burying the lost tomb of Hatshepsut.")

guidechat1 = Chat.create(character: guide, response: "Did you hear about the stolen bracelet??")

chatOption1 = ChatOption.create(chat_id:guidechat1.id, text: "Wow, sucks to suck")
chatOption2 = ChatOption.create(chat_id:guidechat1.id, text: "Why would anyone do that?")
chatOption3 = ChatOption.create(chat_id:guidechat1.id, text: "Do we have any leads on who it might have been?")
chatOption4 = ChatOption.create(chat_id:guidechat1.id, text: "You took it right? You can tell me if you did. ")
chatOption5 = ChatOption.create(chat_id:guidechat1.id, text: "Let's work together to find it!")