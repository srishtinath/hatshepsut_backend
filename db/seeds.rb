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

puts "Loading Rooms"

# tent = Room.create(name: "tent", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594929784/Room1/Screen_Shot_2020-07-16_at_12.37.17_PM_stmsht.png")

puts "Loading Room 1 Content"
# Guide
    tent = Room.create(name: "tent", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536073/Room1/Screen_Shot_2020-07-22_at_1.58.37_PM_ubwide.png",
        description: "Looks like this was Tess's tent. Click around and see if you can find any clues.")

    table = Location.create(name: "table", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595427993/Room1/arabic-coffee-table-ethnic-traditional-moroccan-vector-24182980_oav30i.png", positionX: 23, positionY: 20, size: 10)
    hookah = Item.create(name: "Hookah", location: table, description: "Looks like there are some lipstick marks on the tip", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595695487/Room1/Hookah_image_wtstux.png")
    book = Item.create(name: "Tess's Journal", location: table, description: "This looks like Tess's journal. It looks like she was recording developments in the dig in it", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Journal_jmylcq.png")
    catStatue = Item.create(name: "Cat statue", location: table, description: "You know the Egyptians used to worship cats. They were believed to be magical creatures that brought luck to the people that housed them.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595433225/Room1/Cat_statue_rjk9ka.png")

    luggage = Location.create(name: "suitcase", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595425642/Room1/old-brown-traveler-suitcase-vintage-leather-bag-vector-23609530_sl3skk.png", positionX: 90, positionY: 2, size: 15)
    footprints = Item.create(name: "Medium-ish footprints", location: luggage, description: "The print size definitely looks like it belongs to a woman", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704104/Items/Footsteps2_ybjc78.png")
    pillow = Item.create(name: "Plush velvet pillow", location: luggage, description: "Does this pillow feel warm to you?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595425602/Room1/blue-velvet-pillow-with-gold-rope-and-tassels-vector-illustration_ndforl.png")
    purse = Item.create(name: "Tess's wallet", location: luggage, description: "Tess's suitcase is fully packed and her wallet is full of money. Was she planning on going somewhere?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595432930/Room1/Screen_Shot_2020-07-22_at_11.09.53_AM_vl0hcn.png")
    
    lantern = Location.create(name: "lantern", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595425539/Room1/islamic-style-colored-lantern-design-vector-20967979_k3gb7h.png", positionX: 68, positionY:75 , size: 5)
    note = Item.create(name: "A note! Hidden in the lantern! What does it say?", location: lantern, description: "It just says... 'The priest did it'", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/SecretNote_wtrodv.png")
    
    teapot = Location.create(name: "I'm a little teapot short and stout", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Teapot_pxdme5.png", positionX: 50, positionY: 17, size: 5)
    dessert1 = Item.create(name: "Dessert1", location: teapot, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert1_yson3l.png")
    dessert2 = Item.create(name: "Dessert2", location: teapot, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert3_pw5rtq.png")
    dessert3 = Item.create(name: "Dessert3", location: teapot, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert2_hhdhm3.png")
    wine = Item.create(name: "Alcohol", location: teapot, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Alcohol3_l1tudl.png")

    scarab = Location.create(name: "scarab brooch", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Scarab_statue_atiep5.png", positionX: 87, positionY: 80, size: 10)

# shelf = Location.create(name: "shelf", room: home, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595425469/Room1/800px_COLOURBOX6860246_jjj47r.png", positionX: 20, positionY: 65, size: 17 )
# book1 = Item.create(name: "Evidential Reasoning in Archaeology", location: shelf, description: "Just the history of the study of archaeology... nothing to see here", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.44_PM_nncx01.png")
# book2 = Item.create(name: "The Woman Who Would Be King", location: shelf, description: "Is there a page bookmarked in here? Looks like Tess wanted to remember something about Queen Hatshepsut's mother", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.10_PM_mp38iv.png")
# book3 = Item.create(name: "Ancient Egyptian Rulers", location: shelf, description: "A book on our current understanding of pharaohs", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937477/Room1/Screen_Shot_2020-07-16_at_6.10.03_PM_bcqzid.png")

puts "Loading Room 2 Content"
# Actress
    entrance = Room.create(name: "outside", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536296/Hatshepsut/Post_Dig_Site_uoyr8j.png",
        description: "")

    palmtree = Location.create(name: "Palm Trees", room: entrance, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698648/Items/Palm_Tree_lxhbtr.png", positionX: 85, positionY: 44, size: 15)
    camelRider = Location.create(name: "Camel-riding guide", room: entrance, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Guide_on_Camel_fjmbn5.png", positionX: 35, positionY: 40, size: 8)
# Character

puts "Loading Room 3 Content"
# Colleague
    digsite = Room.create(name: "dig", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536317/Hatshepsut/Dig_Site_opzbkl.png",
        description: "")
    pickaxeboy = Location.create(name: "Nathaniel Digger", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704079/Items/Arch_boy_anwynk.png", positionX: 85, positionY: -10, size: 30)
    camel = Location.create(name: "A beautiful camel", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704088/Items/Camel_b2djbw.png", positionX: 30, positionY: 29, size: 70)
    obelisk = Location.create(name: "Obelisk", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Obelisk_um1mzj.png", positionX: 3, positionY: 25, size: 6)

puts "Loading Room 4 Content"
# Husband
pyramidroom1 = Room.create(name: "PyramidRoom1", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536171/Hatshepsut/Pyramid_Room_3_vux5nr.png",
    description: "")
    mysterychest = Location.create(name: "Mysterious Chest", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Mysterious_Chest_zqavph.png", positionX: 80, positionY: 30, size: 15 )
    jewels = Item.create(name: "Some fancy jewels", location: mysterychest, description: "These are some very very expensive gems!", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698643/Items/Gems_uokpvx.png")
    burialMask = Item.create(name: "Burial Mask", location: mysterychest, description: "Burial Mask", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Burial_Mask_j6xpth.png" )
    
    # firething = Location.create(name: "Fire thing", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Torch_hetnmj.png", positionX: 85, positionY: 15, size: 10)

    satchel = Location.create(name: "Satchel", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Satchel_oxvmsx.png", positionX: 2, positionY: 3, size: 10)
    papyrus = Item.create(name: "Papyrus", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Papyrus3_ovhmfs.png")
    books = Item.create(name: "Some books?", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Book2_pcmv1n.png")
    canopicJar2 = Item.create(name: "Canopic jar containing organs", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Remains2_pfsk8c.png")
    ankh = Item.create(name: "Ankh", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595625907/Items/Ankh-complete_choj5m.png")
     
    vasesOnTable = Location.create(name:"Fancy Vases wow", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/FancyVasesOnTable_xbdxuu.png", positionX: 40, positionY: 20, size: 17)
    whips = Item.create(name: "Watch me whip", location: vasesOnTable, description: "Watch me nay nay", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789632/Items/Whip_iuvjux.png")
    money = Item.create(name: "Gold! You're rich!!", location: vasesOnTable, description: "Not that you weren't already", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Treasure2_n9zpdn.png")

    tablet = Location.create(name: "Tablet", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Tablet_dwozlv.png", positionX: 85, positionY: 85, size: 3)
 
puts "Loading Room 5 Content"
dreamSequence = Room.create(name: "dream", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536198/Hatshepsut/Dream_Sequence_h09eb3.png",
    description: "")
    
puts "Loading Room 6 Content"
pyramidroom2 = Room.create(name: "PyramidRoom2", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536125/Hatshepsut/Pyramid_Room_2_zqepmy.png",
    description: "")
    # Wife
    horus = Location.create(name: "Horus Glyph", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Horus_wpg4nd.png", positionX: 75, positionY: 50, size: 3 )
    
    wallglyphs = Location.create(name: "Wall Glyphs", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595806276/Items/Heiroglyphblendcolor_xvp8cf.png", positionX: 25, positionY: 43, size: 10 )
    theCrowning = Item.create(name: "Papyrus of the Ascension", location: wallglyphs, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Papyrus1_dde7sa.png")
    
    wallglyphs2 = Location.create(name: "Some More Wall Glyphs!", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595806276/Items/Heiroglyphblendcolor_xvp8cf.png", positionX: 15, positionY: 66, size: 18 )
    
    
    # vase2 = Location.create(name: "Fancy vase", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704103/Items/Fancy_Vase_sojrly.png", positionX: 0, positionY: 0, size: 55)
    
    
puts "Loading Room 7 Content"
pyramidroom3 = Room.create(name: "PyramidRoom3", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536232/Hatshepsut/Pyramid_Room_1_slnppz.png",
    description: "")
        #Museum
    
    vase1 = Location.create(name: "Simple black vase", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698652/Items/Vase_wfrsjm.png", positionX: 72, positionY: -5, size: 8)
    inkpot = Item.create(name: "A pot of ink", location: vase1, description: "Strange place to find some ink, don't you think?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Inkpot_zuljfu.png" )
    vial = Item.create(name: "A vial? Could it be poison?", location: vase1, description: "Vial of mysterious stuff", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789631/Items/Vial_p7kow5.png" )
    
    
    anotherChest = Location.create(name: "Chest", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789631/Items/TreasureChest_hqjrog.png", positionX: 40, positionY: 4, size: 10)
    mummy = Item.create(name: "Mummy!", location: anotherChest, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789629/Items/Mummy_moywwo.png")
    goldpieces = Item.create(name: "Gold pieces", location: anotherChest, description: "GOLD", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Treasure_qbhj3b.png" )
    falconStatue = Item.create(name: "Falcon", location: anotherChest, description: "Falcon", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Falconstatue_bh4nuk.png" )
    # Egyptian Book of the Dead
    # Cursed Amulet
    # Furniture
    # Food
    # Ushabti figurines
    # Boat / chariot
    # Oils / ointments
    # Weapons - vial of poison found
    # Baset / Senet - game
    # live cat
    # Burial mask
    # Anubis statue - ferried souls to the afterlife
    # Fan
    # Perfume
    #Karnak depcition
    # "    The crook (heka) and flail (nekhakha) are symbols used in Ancient Egyptian society. They were originally the attributes of the deity Osiris that became insignia of pharaonic authority.[1] The shepherd's crook stood for kingship and the flail for the fertility of the land.[1]"
    
puts "Loading Room 8 Content"
treasureroom = Room.create(name: "TreasureRoom", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595542897/Hatshepsut/Treasure_Room_2_ebnfpv.png",
    description: "")
    canopicJar = Location.create(name: "Organs of the deceased", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Remains3_spgynp.png", positionX: 50, positionY: -5, size: 6)
    goldGoblet = Location.create(name: "It's pure GOLD", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Goblet2_vyp0nc.png", positionX: 30, positionY: 10, size: 7)
        
    journeyScroll = Location.create(name: "Journey to Punt", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/SecretNote_wtrodv.png", positionX: 78, positionY: 8, size: 8)
    fancyScroll = Item.create(name: "Journey to Pun", location: journeyScroll, description: "Fancy scroll wow", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/JourneytoPuntScroll_qq639z.png" )
    chariot = Item.create(name: "Chariot", location: journeyScroll, description: "Chariot", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Chariot_a0qpq7.png" )

    treasureWow = Location.create(name: "Wow gold!", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Treasure_qbhj3b.png", positionX: 40, positionY: 0, size: 10)
    snek = Item.create(name: "Snek", location: treasureWow, description: "SNEKKKKKKK", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Snek_gkdnpn.png" )
    
    catStatueAgain = Location.create(name: "They really liked cats ok?", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Cat_l8ubfo.png", positionX: 30, positionY: 0, size: 4)

    puts "Loading Guide and Chat"
guide = Character.create(name: "Atif Mostafa", room: tent, 
        description: "Atif is the Egyptian guide that has been helping your team make its way through the sands 
        burying the lost tomb of Hatshepsut.", 
        image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595703992/Characters/Arabicman_hhy5oh.png", 
        display: true)
# GUIDE CHAT

    guidechat1 = Chat.create(character: guide, response: "It's such a pity to lose such a great woman. She was like a mother to me....I have to know who did it. Since you and her were, you know, an 'item', I feel like you could have some really helpful insight. Will you help me?")
    guidechat2 = Chat.create(character: guide, response: "Are you sure there's nothing I can do to convince you? Clearly someone in our camp is at fault. And as someone affiliated with her, your life might be in danger.")
    guidechat3 = Chat.create(character: guide, response: "Thank you so much, Professor!")
    guidechat4 = Chat.create(character: guide, response: "That's because the creator of our story couldn't find a picture of me looking sad. She likes the cut of my jib apparently.")
    guidechat5 = Chat.create(character: guide, response: "She's not much of an artist, herself. But she does want to help us figure out who killed Tess.")
    guidechat6 = Chat.create(character: guide, response: "She was basically my adoptive mother. I worked with her in Cairo University and she helped advise on my thesis.")
    guidechat7 = Chat.create(character: guide, response: "Well, I realized I didn't want to take on the crazy hours that research entails. I'm more of an outdoorsman myself, and really, what can beat this view?")
    guidechat8 = Chat.create(character: guide, response: "I take it that you're not a huge fan. What brought you out here in the first place?")
    guidechat9 = Chat.create(character: guide, response: "Do you notice that over there... it looks like some footprints leading away from Tess's tent!")
    guidechat10 = Chat.create(character: guide, response: "Not big enough for a man... there are some women amongst our colleagues who could match that footprint. Maybe you could find some clues around that might give some more clues?")
    guidechat11 = Chat.create(character: guide, response: "I'm sure you'll be able to do so once we discover the burial chamber of Hatshepsut's pyramid.")
    guidechat12 = Chat.create(character: guide, response: "I hope this is adventure enough for you, Professor. And I hope your explorations can help us figure out who killed Tess.")
    guidechat13 = Chat.create(character: guide, response: "I think the suicide note next to her body was clearly doctored. She was a vivacious, ambitious woman, and in our line of business, that can attract a lot of unwanted attention, if you know what I mean.")
    guidechat14 = Chat.create(character: guide, response: "That's the spirit, Professor. We have to bring the killer to justice.")
    guidechat15 = Chat.create(character: guide, response: "It looks like she had a heart attack... but I found a suicide note next to her.")
    guidechat16 = Chat.create(character: guide, response: "I believe she was in Great Britain recently. I assumed that she had gone to receive all of the members of our party since you all arrived around the same time.")
    guidechat17 = Chat.create(character: guide, response: "That sounds suspicious, doesn't it? What was she doing in London then?")
    guidechat18 = Chat.create(character: guide, response: "That sounds very romantic. Did she seem suspicious of anyone or anything?")
    guidechat19 = Chat.create(character: guide, response: "We have gotten quite far haven't we? And with the help of so many renowned Brits such as yourself.")
    guidechat20 = Chat.create(character: guide, response: "I'm surprised that an archaeologist such as yourself would be so concerned with the result of our efforts. I dare say we've won a few accolades with just the finding of the tomb itself.")
    guidechat21 = Chat.create(character: guide, response: "Maybe some of them will know something about Tess? If I remember correctly, I heard her arguing with one of the men about something a few nights ago.")
    guidechat22 = Chat.create(character: guide, response: "I can't think of anyone that would have wanted to harm her so badly that they would kill her, to be honest. She was born a wealthy young woman, but she gave generously to charities and funded a lot of construction projects.")

    guidechat1.chat_options.create(text: "I really don't think I should get involved...", nextResponse_id: guidechat2.id)
    guidechat1.chat_options.create(text: "Absolutely! Anything I can do to help... she was a lovely woman.", nextResponse_id: guidechat3.id)

    guidechat2.chat_options.create(text: "Nah, I'm good")
    guidechat2.chat_options.create(text: "Hmm, I guess I can help out.", nextResponse_id: guidechat3.id)

    guidechat3.chat_options.create(text: "I want to know who killed Tess. I have a question, though. You don't look particularly broken up by her death.", nextResponse_id: guidechat4.id)

    guidechat4.chat_options.create(text: "Sounds lazy, but ok.", nextResponse_id: guidechat5.id)
    guidechat4.chat_options.create(text: "Ah, well, that makes sense.", nextResponse_id: guidechat5.id)

    guidechat5.chat_options.create(text: "That's fair. Back to the murder at hand... Can you tell me how you knew Tess?", nextResponse_id: guidechat6.id)

    guidechat6.chat_options.create(text: "It's interesting that you're working as a guide when you've got such a distinguished PhD isn't it?", nextResponse_id: guidechat7.id)

    guidechat7.chat_options.create(text: "That is true! It's beautiful out here!", nextResponse_id: guidechat9.id)
    guidechat7.chat_options.create(text: "You mean.. all this... sand?", nextResponse_id: guidechat8.id)

    guidechat8.chat_options.create(text: "The honor was bestowed on me by Her Royal Highness. I get to bring fame and wealth to Great Britain after all.", nextResponse_id: guidechat11.id)
    guidechat8.chat_options.create(text: "I've been raring for adventure for a few years! The desk job was starting to bore me after my high octane years spent helping the Ramses expedition.", nextResponse_id: guidechat12.id)

    guidechat9.chat_options.create(text: "Wow they look big!", nextResponse_id: guidechat10.id)

    guidechat10.chat_options.create(text: "Sure, let me look around and see what I find")

    guidechat11.chat_options.create(text: "We've already made some great progress, haven't we? I'm proud that we were able to clear out the two entrance chambers at least.", nextResponse_id: guidechat19.id)
    guidechat11.chat_options.create(text: "We need to find the mummy and sarcophagus. Without them, I won't be able to return to England.", nextResponse_id: guidechat20.id)
    guidechat11.chat_options.create(text: "I'm surprised we get anything done with the number of people that seem to be here just to bask in the sun.", nextResponse_id: guidechat21.id)

    guidechat12.chat_options.create(text: "That's a good point... how do we know she was killed?", nextResponse_id: guidechat13.id)
    guidechat12.chat_options.create(text: "The killer better watch out! They're not going to get away with this!", nextResponse_id: guidechat14.id)

    guidechat13.chat_options.create(text: "Do you know if she travelled anywhere recently?", nextResponse_id: guidechat16.id)
    guidechat13.chat_options.create(text: "Do you know if there was anyone that wanted to harm her?", nextResponse_id: guidechat22.id)

    guidechat14.chat_options.create(text: "Do you know how she died?", nextResponse_id: guidechat15.id)

    guidechat15.chat_options.create(text: "That's horrifying. Do you know if she was traveling anywhere?", nextResponse_id: guidechat16.id)

    guidechat16.chat_options.create(text: "That's weird.. I didn't meet her until we all gathered in Cairo.", nextResponse_id: guidechat17.id)
    guidechat16.chat_options.create(text: "Oh yeah, we all met up and took the boat over from London. It wasn't that long of a journey, and that's how we met.", nextResponse_id: guidechat18.id)

    guidechat17.chat_options.create(text: "Maybe someone else will know. Let me ask around.")

    guidechat18.chat_options.create(text: "Not that I remember... maybe someone else in our party will know something?")

    guidechat19.chat_options.create(text: "Why, thank you. I don't think we could have done it without the help of all of the members of our camp.", nextResponse_id: guidechat21.id)

    guidechat20.chat_options.create(text: "You might be right. Although some of our cohort might want to take more than their fair share, if you know what I mean.", nextResponse_id: guidechat21.id)

    guidechat21.chat_options.create(text: "I can ask around.")

    guidechat22.chat_options.create(text: "Do you know anything about her recent whereabouts?", nextResponse_id: guidechat16.id)

husband = Character.create(name: "Lord Kit Sharp" , room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704027/Characters/Arch_husband_i4uijx.png", display: true)
husbandchat = Chat.create(character: husband, response: "Well, hello, darling, how are you doing on this fine day?")

wife = Character.create(name: "Lady Amelia Sharp", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704028/Characters/Arch_woman_qcqvpd.png", display: true)
wifechat = Chat.create(character: wife, response: "Well, hello, darling, how are you doing on this fine day?")

colleague = Character.create(name: "Gael Vergara", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698701/Characters/Colleague_vndk7k.png", display: true)
colleaguechat = Chat.create(character: colleague, response: "Well, hello, darling, how are you doing on this fine day?")


puts "Loading Actress"
actress = Character.create(name: "Isra Hassan", room: entrance, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595702957/Characters/Actress2_bwsb9q.png", display: true)
actresschat1 = Chat.create(character: actress, response: "Well, hello, darling, how are you doing on this fine day?")

museumhead = Character.create(name: "Riccardo Bonardi", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698706/Characters/Gentleman2_swo28q.png", display: true)
museumheadchat1 = Chat.create(character: museumhead, response: "Well, hello, darling, how are you doing on this fine day?")

hatshepsutGhost = Character.create(name: "Queen Hatshepsut" , room: dreamSequence, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595266742/Hatshepsut/Screen_Shot_2020-07-20_at_1.37.59_PM_rhw9xf.png", display: false)
ghostchat1 = Chat.create(character: hatshepsutGhost, response: "Well, hello, darling, how are you doing on this fine day?")

hatshepsutGhost2 = Character.create(name: "Queen Hatshepsut" , room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698738/Characters/Queen2_oiftmd.png", display: false)
ghostchat1 = Chat.create(character: hatshepsutGhost2, response: "Well, hello, darling, how are you doing on this fine day?")

victim = Character.create(name: "Tess Ali" , room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704284/Characters/Woman_holding_vase_olcj3r.png", display: true)
victimchat = Chat.create(character: victim, response: "Well, hello, darling, how are you doing on this fine day?")
