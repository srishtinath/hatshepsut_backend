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

    tent = Room.create(name: "Tent", description: "Tess's Tent", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536073/Room1/Screen_Shot_2020-07-22_at_1.58.37_PM_ubwide.png", display: true)

    chest = Location.create(name: "chest of stuff", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Chest_mpsjpk.png", positionX: 15, positionY: 45, size: 20)
    catStatue = Item.create(name: "Cat statue", location: chest, description: "You know the Egyptians used to worship cats. They were believed to be magical creatures that brought luck to the people that housed them.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595433225/Room1/Cat_statue_rjk9ka.png")
    luggage = Item.create(name: "Suitcase", location: chest, description: "Looks like a fully packed suitcase", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595425642/Room1/old-brown-traveler-suitcase-vintage-leather-bag-vector-23609530_sl3skk.png")
    purse = Item.create(name: "Tess's wallet", location: chest, description: "Tess's suitcase is fully packed and her wallet is full of money. Was she planning on going somewhere?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595432930/Room1/Screen_Shot_2020-07-22_at_11.09.53_AM_vl0hcn.png")


    lantern = Location.create(name: "lantern", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Lantern_i3gso8.png", positionX: 48, positionY:-2, size: 5)
    note = Item.create(name: "A note! Hidden in the lantern! What does it say?", location: lantern, description: "It just says... 'The priest did it'", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/SecretNote_wtrodv.png")

    wallInset = Location.create(name: "wall inset", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1WallInset_hp4oov.png", positionX: 88, positionY:23, size: 7)
    book = Item.create(name: "Tess's Journal", location: wallInset, description: "This looks like Tess's journal. It looks like she was recording developments in the dig in it", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Journal_jmylcq.png")

    hookah = Location.create(name: "Hookah", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Hookah_e4fwnz.png", positionX: 36, positionY:39, size: 8)
    hookah = Item.create(name: "Hookah", location: hookah, description: "Looks like there are some lipstick marks on the tip", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Hookah_e4fwnz.png")


    table = Location.create(name: "table", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Table_aiaeva.png", positionX: 38, positionY: 50)
    dessert1 = Item.create(name: "Dessert1", location: table, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert1_yson3l.png")
    dessert2 = Item.create(name: "Dessert2", location: table, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert3_pw5rtq.png")
    dessert3 = Item.create(name: "Dessert3", location: table, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Dessert2_hhdhm3.png")
    wine = Item.create(name: "Alcohol", location: table, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Alcohol3_l1tudl.png")

    desk = Location.create(name: "desk", room: tent, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595951116/Room1-New/Room1Desk_wb0kqy.png", positionX: 80, positionY: 34, size: 80)
    scarab = Item.create(name: "scarab brooch", location: desk, description: "What a beautiful brooch", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Scarab_statue_atiep5.png")
    book1 = Item.create(name: "Evidential Reasoning in Archaeology", location: desk, description: "Just the history of the study of archaeology... nothing to see here", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.44_PM_nncx01.png")
    book2 = Item.create(name: "The Woman Who Would Be King", location: desk, description: "Is there a page bookmarked in here? Looks like Tess wanted to remember something about Queen Hatshepsut's mother", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.10_PM_mp38iv.png")
    book3 = Item.create(name: "Ancient Egyptian Rulers", location: desk, description: "A book on our current understanding of pharaohs", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937180/Room1/Screen_Shot_2020-07-16_at_6.02.01_PM_qjor5w.png", image_url2: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1594937477/Room1/Screen_Shot_2020-07-16_at_6.10.03_PM_bcqzid.png")

puts "Loading Room 5 Content"
dreamSequence = Room.create(name: "dream", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536198/Hatshepsut/Dream_Sequence_h09eb3.png",
    description: "", display: false)

puts "Loading Room 2 Content"
# Actress
    entrance = Room.create(name: "outside", description: "Path leading to Dig Site", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595994769/Hatshepsut/Screen_Shot_2020-07-28_at_11.37.33_PM_nbkgdj.png", display: true)

    palmtree = Location.create(name: "Palm Trees", room: entrance, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698648/Items/Palm_Tree_lxhbtr.png", positionX: 85, positionY: 44, size: 15)
    oasis = Item.create(name: "A beautiful spot for a romantic engagement, don't you think?", location: palmtree, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1596059262/Room2-New/Room2_Oasis_jcxx8m.png")

    camelRider = Location.create(name: "Camel-riding guide", room: entrance, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Guide_on_Camel_fjmbn5.png", positionX: 35, positionY: 40, size: 8)
    arabicboy = Item.create(name: "Camel rider's son", location: camelRider, description: "He tells you that the famous actress over there... she's been stealing things from the pyramid and giving them to his dad to sell", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1596059262/Room2-New/Room2Arabic_Boy_ylzqzg.png")
# Character

puts "Loading Room 3 Content"
# Colleague
    digsite = Room.create(name: "Digsite", description: "Expedition Dig Site", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536317/Hatshepsut/Dig_Site_opzbkl.png", display: true)
    # camel = Location.create(name: "A beautiful camel", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704088/Items/Camel_b2djbw.png", positionX: 30, positionY: 29, size: 70)

    pit = Location.create(name: "Dig", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595953196/Room3-New/Room3Dig_h9gvbm.png", positionX: 11, positionY: 47, size: 150 )
    pickaxeboy = Item.create(name: "Nathaniel Digger", location: pit, description: "Nathaniel has been your colleague's protege for many years. He tells you how jealous Gael has been of Tess's success in the field.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704079/Items/Arch_boy_anwynk.png")
    obelisk = Item.create(name: "Obelisk", location: pit, description: "A beautiful, ornately carved obelisk depicting Hatshepsut's accomplishments during her reign, including the temple complex at Deir el-Bahri", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Obelisk_um1mzj.png")
    
    skulls = Location.create(name: "Skulls", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595953196/Room3-New/Room3Skulls_lnwvqc.png", positionX: 81, positionY: 67, size: 20)
    pickaxe = Item.create(name: "Pickaxe", location: skulls, description: "A pickaxe. At a digsite.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Pickaxe_i4mdeh.png")

    rocks = Location.create(name: "Rocks", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595953196/Room3-New/Room3Rocks_h5a8zg.png", positionX: 69, positionY: 52, size: 8 )
    hiero1 = Location.create(name: "Hieroglyphs1", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595953196/Room3-New/Room3Heiro1_vidpey.png", positionX: 80, positionY: 52, size: 11 )
    hiero2 = Location.create(name: "Hieroglyphs2", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595953196/Room3-New/Room3Heiro2_fur5ti.png", positionX: 28, positionY: 54, size: 10 )
    translator = Item.create(name: "Translation glyphs", location: hiero2, description: "Could it help translate what else you find?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595805605/Items/HeiroGlyph1_dkatct.png")


puts "Loading Room 4 Content"
# Husband
pyramidroom1 = Room.create(name: "PyramidRoom1", description: "First Room Inside Pyramid", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595994857/Hatshepsut/Screen_Shot_2020-07-28_at_11.51.31_PM_gmbjnm.png", display: true)
    mysterychest = Location.create(name: "Mysterious Chest", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Mysterious_Chest_zqavph.png", positionX: 80, positionY: 45, size: 15 )
    jewels = Item.create(name: "Some fancy jewels", location: mysterychest, description: "These are some very very expensive gems!", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698643/Items/Gems_uokpvx.png")
    burialMask = Item.create(name: "Burial Mask", location: mysterychest, description: "Burial Mask", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Burial_Mask_j6xpth.png" )
    
    # firething = Location.create(name: "Fire thing", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Torch_hetnmj.png", positionX: 85, positionY: 15, size: 10)

    satchel = Location.create(name: "Satchel", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Satchel_oxvmsx.png", positionX: 2, positionY: 83, size: 10)
    papyrus = Item.create(name: "Papyrus", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Papyrus3_ovhmfs.png")
    books = Item.create(name: "Some books?", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Book2_pcmv1n.png")
    canopicJar2 = Item.create(name: "Canopic jar containing organs", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704176/Items/Remains2_pfsk8c.png")
    ankh = Item.create(name: "Ankh", location: satchel, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595625907/Items/Ankh-complete_choj5m.png")
     
    vasesOnTable = Location.create(name:"Fancy Vases wow", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/FancyVasesOnTable_xbdxuu.png", positionX: 40, positionY: 35, size: 17)
    whips = Item.create(name: "Watch me whip", location: vasesOnTable, description: "Watch me nay nay", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789632/Items/Whip_iuvjux.png")
    money = Item.create(name: "Gold! You're rich!!", location: vasesOnTable, description: "Not that you weren't already", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Treasure2_n9zpdn.png")

    tablet = Location.create(name: "Tablet", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Tablet_dwozlv.png", positionX: 85, positionY: 3, size: 3)
 

    
puts "Loading Room 6 Content"
pyramidroom2 = Room.create(name: "PyramidRoom2", description: "Second Room inside Pyramid", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536125/Hatshepsut/Pyramid_Room_2_zqepmy.png", display: true)
    # Wife
    # horus = Location.create(name: "Horus Glyph", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Horus_wpg4nd.png", positionX: 75, positionY: 30, size: 3 )
    
    wallglyphs = Location.create(name: "Wall Glyphs", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595806276/Items/Heiroglyphblendcolor_xvp8cf.png", positionX: 25, positionY: 43, size: 10 )
    theCrowning = Item.create(name: "Papyrus of the Ascension", location: wallglyphs, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Papyrus1_dde7sa.png")
    
    wallglyphs2 = Location.create(name: "Some More Wall Glyphs!", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595806276/Items/Heiroglyphblendcolor_xvp8cf.png", positionX: 15, positionY: 16, size: 18 )
    journeyPapyrus = Item.create(name: "Papyrus of the Journet", location: wallglyphs2, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Boat2_edi1mn.png")
    
    jar1 = Location.create(name: "Jackal Jar 1", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595954797/Room5-New/Room5Jar_yg6gif.png", positionX: 30, positionY: 54, size: 5 )
    bow = Item.create(name: "Bow", location: jar1, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789627/Items/Bow_jixcuj.png")

    jar2 = Location.create(name: "Jackal Jar 2", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595954797/Room5-New/Room5Jar2_ulhkmv.png", positionX: 52, positionY: 54, size: 5 )
    knife = Item.create(name: "Sharp knife", location: jar2, description: "In case, you know, someone comes for your life", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Knife_hsyoqx.png")
    
    sand = Location.create(name: "Sand", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595954797/Room5-New/Room5Sand_fklwe0.png", positionX: 18, positionY: 34, size: 9 )
    vialofstuff = Item.create(name: "Vial of stuff", location: sand, description: "Was someone trying to hide these?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Perfume1_ltoxbg.png")
    
    stairglyphs = Location.create(name: "Glyphs over staircase... what do they say?", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595954797/Room5-New/Room5Heiroglyphs_ieitww.png", positionX: 38, positionY: 20, size: 10 )
    journeyPapyrus = Item.create(name: "More glyphs", location: stairglyphs, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698644/Items/Papyrus3_ovhmfs.png")
    
    eye = Location.create(name: "EYE GLYPH", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595955582/Room5-New/Room5Eye_zq72n2.png", positionX: 70, positionY: 20, size: 2 )
    moreGlyphs = Item.create(name: "More glyphs", location: eye, description: "", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Horus_cnxrhu.png")
    
    
    
    
puts "Loading Room 7 Content"
pyramidroom3 = Room.create(name: "PyramidRoom3", description: "Tomb Antechamber", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595536232/Hatshepsut/Pyramid_Room_1_slnppz.png", display: true)
        #Museum
    anubisStatue = Location.create(name: "Anubis", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595956911/Room7-new/Room7Statue_h8cuxg.png", positionX: 27, positionY: 25, size: 9)

    treasure = Location.create(name: "Treasure", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595956911/Room7-new/Room7Treasure_zpgb9g.png", positionX: 15, positionY: 95, size: 150)
    goldpieces = Item.create(name: "Gold pieces", location: treasure, description: "GOLD", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Treasure_qbhj3b.png" )
    
    anotherChest = Location.create(name: "Chest", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595956911/Room7-new/Room7Chest_ipqkf2.png", positionX: 0, positionY: 84, size: 100)
    mummy = Item.create(name: "Mummy!", location: anotherChest, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789629/Items/Mummy_moywwo.png")
    falconStatue = Item.create(name: "Falcon", location: anotherChest, description: "Falcon", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Falconstatue_bh4nuk.png" )

    vase1 = Location.create(name: "Simple black vase", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595956911/Room7-new/Room7Vase_zwpurz.png", positionX: 28, positionY: 85, size: 8)
    inkpot = Item.create(name: "A pot of ink", location: vase1, description: "Strange place to find some ink, don't you think?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/Inkpot_zuljfu.png" )
    vial = Item.create(name: "A vial? Could it be poison?", location: vase1, description: "Vial of mysterious stuff", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789631/Items/Vial_p7kow5.png" )
    
    
    
puts "Loading Room 8 Content"
treasureroom = Room.create(name: "TreasureRoom", description: "Hatshepsut's Tomb", story: hatshepsut, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595542897/Hatshepsut/Treasure_Room_2_ebnfpv.png", display: true)
    canopicJar = Location.create(name: "Organs of the deceased", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8CanopicJar_yqummd.png", positionX: 50, positionY: 80, size: 5)
    lamp = Location.create(name: "Lamp", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8Lamp_gkq05m.png", positionX: 35, positionY: 83, size: 12)
    
    goldGoblet = Location.create(name: "It's pure GOLD", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Goblet2_vyp0nc.png", positionX: 30, positionY: 70, size: 7)
    scarabThing = Location.create(name: "Scarab Thing", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8Scarab_m6pzto.png", positionX: 45, positionY: 8, size: 8)
        
    journeyScroll = Location.create(name: "Journey to Punt", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8Note_szsom3.png", positionX: 78, positionY: 78, size: 10)
    fancyScroll = Item.create(name: "Journey to Punt", location: journeyScroll, description: "Fancy scroll wow", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704175/Items/JourneytoPuntScroll_qq639z.png" )
    chariot = Item.create(name: "Chariot", location: journeyScroll, description: "Chariot", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789628/Items/Chariot_a0qpq7.png" )

    # anubisStatueAgain = Location.create(name: "They really liked jackals ok?", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8AnubisStatue_iotb2b.png", positionX: 8, positionY: 45, size: 12)
    treasureWow = Location.create(name: "Wow gold!", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8Chest_h4zous.png", positionX: 12, positionY: 80, size: 15)
    snek = Item.create(name: "Snek", location: treasureWow, description: "SNEKKKKKKK", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595789630/Items/Snek_gkdnpn.png" )
    
    ooohVase = Location.create(name: "More vases", room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595957808/Room8New/Room8Vase_fnmuds.png", positionX: 70, positionY: 55, size: 3)

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

husband = Character.create(name: "Lord Kit Sharp" , description: "Lord Kit Sharp is a boisterous young man. His ticket into this expedition was definitely his very prominent last name, but he seems a jolly fellow overall.", room: pyramidroom1, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704027/Characters/Arch_husband_i4uijx.png", display: true)
husbandchat = Chat.create(character: husband, response: "Well, hello, darling, how are you doing on this fine day?")

wife = Character.create(name: "Lady Amelia Sharp", description: "Lady Amelia Sharp, Kit's wife, is pretty, flirty, good company. Who really needs anything else?", room: pyramidroom2, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704028/Characters/Arch_woman_qcqvpd.png", display: true)
# Wife Chat
    wifechat1 = Chat.create(character: wife, response: "Hail and well met professor!")
    wifechat2 = Chat.create(character: wife, response: "Isn't it so sad about Tess?")
    wifechat3 = Chat.create(character: wife, response: "I'm truly heartbroken.")
    wifechat4 = Chat.create(character: wife, response: "I mean, not really.")
    wifechat5 = Chat.create(character: wife, response: "I did once hear my husband talk about how Tess had reviewed one of Gael's publications, and had written some not very nice things about him.")
    wifechat6 = Chat.create(character: wife, response: "I can't imagine he'd want to share that information. He could have been looking to get revenge on Tess, y'know?")
    wifechat7 = Chat.create(character: wife, response: "Well, I don't particularly have a hand in the matter, so I don't know that I can help you any more.")
    wifechat8 = Chat.create(character: wife, response: "He's been especially disgruntled lately. I don't know if he wanted to get the glory from this find and memorialize his name in your field, but that I know he thinks he deserves far more than he's been getting.")
    wifechat9 = Chat.create(character: wife, response: "That you do. But it is fascinating. This entire story of Hatshepsut --- it's riveting isn't it?")
    wifechat10 = Chat.create(character: wife, response: "I mean, she was such a powerhouse. She remade herself as the daughter of the god Amun in order to legitimize her rule. I can certainly empathize with the need to remake oneself to succeed in a male-dominated world.")
    wifechat11 = Chat.create(character: wife, response: "That's one way to put it.")
    wifechat12 = Chat.create(character: wife, response: "Why so suspicious Professor?")
    wifechat13 = Chat.create(character: wife, response: "Curious, eh? Is that why you've been asking around about who killed Tess?")
    wifechat14 = Chat.create(character: wife, response: "I've heard many things.")
    wifechat15 = Chat.create(character: wife, response: "Why on earth would I do that?")
    wifechat16 = Chat.create(character: wife, response: "Yeah, because we'd been flirting for the past few months...  I wanted to seal the deal.")
    wifechat17 = Chat.create(character: wife, response: "Yeah, but she rejected me completely. I mean, I've got a pretty good intuition about these kinds of things, and her entire response was such a shock.")
    wifechat18 = Chat.create(character: wife, response: "Psh, marriage isn't a prison. I love dear Kit, but we very much have an open relationship.")
    wifechat19 = Chat.create(character: wife, response: "That we are free to spend our time however we wish. Our commitment to each other is fully real and we love each other very much.")
    wifechat20 = Chat.create(character: wife, response: "Not at all. We just live different lifestyles than what you might expect.")
    wifechat21 = Chat.create(character: wife, response: "Absolutely not. I was surprised to be rejected so handily, but one learns to move on.")
    
    wifechat1.chat_options.create(text: "Good afternoon, Lady Sharp.", nextResponse_id: wifechat2.id)
    wifechat1.chat_options.create(text: "What are you doing here, Lady Sharp?", nextResponse_id: wifechat12.id)
    wifechat2.chat_options.create(text: "It's terrible.", nextResponse_id: wifechat3.id)
    wifechat3.chat_options.create(text: "As we all are.")

    wifechat2.chat_options.create(text: "Do you know anything about it?", nextResponse_id: wifechat4.id)
    wifechat4.chat_options.create(text: "You don't think anyone was out to get her?", nextResponse_id: wifechat5.id)
    wifechat5.chat_options.create(text: "He didn't mention anything like that to me.", nextResponse_id: wifechat6.id)
    wifechat6.chat_options.create(text: "That could be possible, but I find that hard to believe.", nextResponse_id: wifechat7.id)
    wifechat7.chat_options.create(text: "Thanks for the information you were able to provide.")

    wifechat6.chat_options.create(text: "He did seem a little suspicious.", nextResponse_id: wifechat8.id)
    wifechat8.chat_options.create(text: "We work in a competitive field, milady.", nextResponse_id: wifechat9.id)
    wifechat9.chat_options.create(text: "Is there anything in particular that caught your fancy about her?", nextResponse_id: wifechat10.id)
    wifechat10.chat_options.create(text: "Truly, the field of archaeology is subject to the very same issues that permeate the ability to rule.", nextResponse_id: wifechat11.id)
    wifechat11.chat_options.create(text: "Well, I appreciate your sharing your thoughts with me, milady.")

    wifechat12.chat_options.create(text: "Not suspicious! Just curious.", nextResponse_id: wifechat13.id)
    wifechat13.chat_options.create(text: "You've heard about that?", nextResponse_id: wifechat14.id)
    wifechat14.chat_options.create(text: "Well, did you kill her?", nextResponse_id: wifechat15.id)
    wifechat15.chat_options.create(text: "You were seen entering Tess's tent last night.", nextResponse_id: wifechat16.id)
    wifechat16.chat_options.create(text: "What?", nextResponse_id: wifechat17.id)
    wifechat17.chat_options.create(text: "But aren't you married?", nextResponse_id: wifechat18.id)
    wifechat18.chat_options.create(text: "What does that mean?", nextResponse_id: wifechat19.id)
    wifechat19.chat_options.create(text: "But doesn't being in an open relationship lie directly in contrast to that?", nextResponse_id: wifechat20.id)
    wifechat20.chat_options.create(text: "Okay. So you're saying you had nothing to do with her death?", nextResponse_id: wifechat21.id)
    wifechat21.chat_options.create(text: "Do you know anyone that might have actually had a hand in her death?", nextResponse_id: wifechat5.id)


colleague = Character.create(name: "Gael Vergara", description: "Gael is a colleague of yours from your university. He's jovial and serious, a good combination in someone you want to work with. You do empathize with him for not really getting the kind of success he thinks he deserves.", room: digsite, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698701/Characters/Colleague_vndk7k.png", display: true)
# Colleague Chat
    colleaguechat1 = Chat.create(character: colleague, response: "How goes it, old chap?")
    colleaguechat2 = Chat.create(character: colleague, response: "Yeah, it's quit shit isn't it?")
    colleaguechat3 = Chat.create(character: colleague, response: "Murdered? That doesn't surprise me.")
    colleaguechat4 = Chat.create(character: colleague, response: " Well, I heard quite a few things that made me think she wasn't exactly on the best of terms with everyone in our group, know what I'm saying?")
    colleaguechat5 = Chat.create(character: colleague, response: "For sure, for sure. He was trying to get all up in her grill about the British Museum getting all the spoils, and she wasn't having any of that. If you ask me, he was going about it all wrong.")
    colleaguechat6 = Chat.create(character: colleague, response: "Well, you know about Senenmut right? He was Hatshepsut's chief minister. ")
    colleaguechat7 = Chat.create(character: colleague, response: "Honestly, Hatshepsut's name has been dragged through the mud, but Senenmut has been pretty much untouched.")
    colleaguechat8 = Chat.create(character: colleague, response: "That's fair. But anyway, I think Ricky should've just let the Egyptians have their spoils, and supported their efforts.")
    colleaguechat9 = Chat.create(character: colleague, response: "No way old chap. He's not the most scrupulous gentleman, but he would never harm anyone.")
    colleaguechat10 = Chat.create(character: colleague, response: "I can think of a couple of possibilities.")
    colleaguechat11 = Chat.create(character: colleague, response: "Well, you know her old pal, Miss Hassan? It turns out she was exiled from Lebanon for getting into a few blues with some reporters. And the police. She's got a bit of a temper that sheila.")
    colleaguechat12 = Chat.create(character: colleague, response: " I'm not sure, but I wouldn't rule her out. She's made headlines everywhere for her reputation, and not in a good way, if you know what I mean.")
    colleaguechat13 = Chat.create(character: colleague, response: "That I couldn't tell you. But given Tess's feelings about Ricky I'd hazard to guess she didn't exactly approve of their tryst.")
    colleaguechat14 = Chat.create(character: colleague, response: "I don't know if I should tell you, but I think it might be important. ")
    colleaguechat15 = Chat.create(character: colleague, response: "It's rather scandalous, and could land a lot of people into hot water.")
    colleaguechat16 = Chat.create(character: colleague, response: "Okay... you make a good point. You know the Lord Sharp?")
    colleaguechat17 = Chat.create(character: colleague, response: "Well, Lord Kit and I were college buddies. He asked me if he could join us. Their family's very powerful, I couldn't exactly refuse you know.")
    colleaguechat18 = Chat.create(character: colleague, response: "He's been under his father's thumb for a while, since he was born out of wedlock and all. No one knew who his mother was, just that she had an affair with the senior Sharp and left him.")
    colleaguechat19 = Chat.create(character: colleague, response: "I don't think I can say anymore. It's his secret to share.")
    
    
    colleaguechat1.chat_options.create(text: "Devo, I dare say.", nextResponse_id: colleaguechat2.id)
    colleaguechat1.chat_options.create(text: "It's all gone to shit, man.", nextResponse_id: colleaguechat2.id)
    
    colleaguechat2.chat_options.create(text: "I can't believe she was murdered.", nextResponse_id: colleaguechat3.id)
    colleaguechat3.chat_options.create(text: "Why do you say that?", nextResponse_id: colleaguechat4.id)
    colleaguechat4.chat_options.create(text: "Oh yeah, I heard that she and Ricky didn't exactly get along.", nextResponse_id: colleaguechat5.id)
    colleaguechat5.chat_options.create(text: "What do you mean?", nextResponse_id: colleaguechat6.id)
    colleaguechat6.chat_options.create(text: "What about him?.", nextResponse_id: colleaguechat7.id)
    colleaguechat7.chat_options.create(text: "Well, that's because gentlemen of our era have cast quite a few aspersions on her. ", nextResponse_id: colleaguechat8.id)
    colleaguechat8.chat_options.create(text: "Do you think he would have harmed her at all?", nextResponse_id: colleaguechat9.id)
    colleaguechat9.chat_options.create(text: "Then who do you think would want to harm her?", nextResponse_id: colleaguechat10.id)
    
    colleaguechat10.chat_options.create(text: "(Choose possibility 1)", nextResponse_id: colleaguechat11.id)
    colleaguechat11.chat_options.create(text: "Do you think she would have actually hurt her friend?", nextResponse_id: colleaguechat12.id)
    colleaguechat12.chat_options.create(text: "Ok, but why would she hurt Tess at all? As far as I know, they were excellent friends.", nextResponse_id: colleaguechat13.id)
    colleaguechat13.chat_options.create(text: "That makes sense. Thanks, Gael.")

    colleaguechat10.chat_options.create(text: "(Choose possibility 2)", nextResponse_id: colleaguechat14.id)
    colleaguechat14.chat_options.create(text: "Just tell me, Gael.", nextResponse_id: colleaguechat15.id)
    colleaguechat15.chat_options.create(text: "If you think it's important enough to mention, you should probably tell me all about it.", nextResponse_id: colleaguechat16.id)
    colleaguechat16.chat_options.create(text: "Of course. I still wonder how such a frivolous couple ended up on our expedition.", nextResponse_id: colleaguechat17.id)
    colleaguechat17.chat_options.create(text: "Why did he ask you to join us?", nextResponse_id: colleaguechat18.id)
    colleaguechat18.chat_options.create(text: "And..?", nextResponse_id: colleaguechat19.id)
    colleaguechat19.chat_options.create(text: "Oh, Gael.")
    


puts "Loading Actress"
actress = Character.create(name: "Isra Hassan", room: entrance, description: "The venerable Miss Isra Hassan is a famous Lebanese actress. You're lucky she's graced you all with her presence! Not sure what she's doing on an archaeological expedition exactly, but who's to complain when she's got such star power?", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595702957/Characters/Actress2_bwsb9q.png", display: true)
# Actress Chat
    actresschat1 = Chat.create(character: actress, response: "Hello, there! How's it going?")
    actresschat2 = Chat.create(character: actress, response: "Murdered??? What makes you say that?")
    actresschat3 = Chat.create(character: actress, response: "And mine, as well. I dare say, I've known her far longer than anyone else in our troupe.")
    actresschat4 = Chat.create(character: actress, response: "(She laughs). How old do you think I am, dear?")
    actresschat5 = Chat.create(character: actress, response: "(She laughs heartily). I do appreciate your attempts to appease my vanity, my dear.")
    actresschat6 = Chat.create(character: actress, response: "Definitely closer. ")
    actresschat7 = Chat.create(character: actress, response: "Professor, are you flirting with me?")
    actresschat8 = Chat.create(character: actress, response: "Longingly? Am I hearing you say... let's find an oasis of our own?")
    actresschat9 = Chat.create(character: actress, response: "Please, call me Isra.")
    actresschat10 = Chat.create(character: actress, response: "With my looks and talent, I dare say I agree. Tell me, weren't you and Tess, an item, as they say?")
    actresschat11 = Chat.create(character: actress, response: "Ooh, touchy, touchy. Don't mind me, Professor, you know how I love to gossip.")
    actresschat12 = Chat.create(character: actress, response: "That's a very coy way of putting it, isn't it? If it puts you at ease, I myself had a very torrid affair with Ricky.")
    actresschat13 = Chat.create(character: actress, response: "Maybe not, but here we are nonetheless. Tess didn't approve, of course. I thought she was very much against mixing business with pleasure, but I guess she was just against mixing his business with my pleasure.")
    actresschat14 = Chat.create(character: actress, response: "Don't worry, I won't go telling anyone. To tell you the truth, I don't think Ricky liked her much either.")
    actresschat15 = Chat.create(character: actress, response: "Well, Riccardo, as head of the British Museum, wanted all of the spoils to go to his department; Tess, as an Egyptian national, was offended that her country's illustrative history would be looted for colonist benefit, yet again. That's what happened with the Rosetta Stone after all; it was discovered in these parts but is now in the possession of the British Museum. You know Tess did not like that.")
    actresschat16 = Chat.create(character: actress, response: "Why do you ask that?")
    actresschat17 = Chat.create(character: actress, response: "Are you suggesting that Ricky had something to do with it? He's harmless, he wouldn't hurt a fly.")
    actresschat18 = Chat.create(character: actress, response: "A few months, about. But I have a woman's intuition about this kind of thing. He balances out my more... temperamental tendencies.")
    actresschat19 = Chat.create(character: actress, response: "Well, my agent suggested I take a bit of a break from my career in Lebanon due to some unfortunate run-ins with some paparazzi. Tess heard and she offered to let me join you all.")
    actresschat20 = Chat.create(character: actress, response: "I swear on my mother's grave. Although, as a Muslim, my mother would hang her head in shame at me, but c'est la vie.")
    actresschat21 = Chat.create(character: actress, response: "She did think he was going to the Egyptian equivalent of hell. She is, I'm sorry, excuse me, she was, a Kemetist, and believed in the ancient gods, from the Sun God Ra, to Osiris and Isis, Horus, Bast, Nepthys, and the rest of them. That's why she was so good at her job. Anyway, because he's planning on violating the tombs of pharaohs, who are the divine messengers, she believes he's going to hell.")
    actresschat22 = Chat.create(character: actress, response: "Not one bit. His Christian beliefs were nary to be questioned.")
    actresschat23 = Chat.create(character: actress, response: "We went to primary school together! Many, many years ago.")
    actresschat24 = Chat.create(character: actress, response: "You're very welcome. It sounds like you're becoming the Lead Detective on this case eh? In that case, I should tell you, I did see the good Lady enter Tess's tent last night as I was leaving. I'm not sure for what exactly, but with the outpouring of librations, who knows what happened?")
    actresschat25 = Chat.create(character: actress, response: "That's categorically untrue. They were nothing but cordial to each other, with their simmering hatred for each other's values only penned in secrecy. ")
    actresschat26 = Chat.create(character: actress, response: "It's dangerous to spread false rumors. I'd be careful if I were you.")
    actresschat27 = Chat.create(character: actress, response: "Professor, I'm an extremely intuitive woman, as my career demands of me. Neither Tess nor Ricky would look to save my feelings in that way.")
    actresschat28 = Chat.create(character: actress, response: "I'll thank you to not insinuate anything you don't know about, Professor.")
    actresschat29 = Chat.create(character: actress, response: "She does keep it on the down low for the most part. I think she realizes how little credibility her work would get if word got out.")
    actresschat30 = Chat.create(character: actress, response: "Hmm, I wonder if Ricky would know anything about that.")
    actresschat31 = Chat.create(character: actress, response: "I don't mind it now. I got to spend some time with my beautiful Tess and Riccardo, and get a little tan going in this desert sun. What more can any woman ask for?")
    actresschat32 = Chat.create(character: actress, response: "You're very welcome. It sounds like you're becoming the Lead Detective on this case eh? In that case, I should tell you, I did see the good Lady enter Tess's tent last night as I was leaving. I'm not sure for what exactly, but it didn't sound like they were in agreement at the moment.")
    actresschat33 = Chat.create(character: actress, response: "It was just the Lady. I'll let you in on something, though. It turns out they had something you call an 'open relationship.' Now, I don't know what that means, but maybe Tess might have been able to.")
    actresschat34 = Chat.create(character: actress, response: "I'm sure the Lord and Lady would be inclined to agree.")
    actresschat35 = Chat.create(character: actress, response: "Well, I'm sure if you ask the Lady she might be prevailed on to answer your questions. ")
    actresschat36 = Chat.create(character: actress, response: "I can't say I have an answer to that question, despite the many answers I've been looking for.")
    actresschat37 = Chat.create(character: actress, response: "Oh, most definitely.")
    actresschat38 = Chat.create(character: actress, response: "I really couldn't tell you, unfortunately.")
    
    actresschat1.chat_options.create(text: "Not too well. It appears Miss Ali was murdered.", nextResponse_id: actresschat2.id)
    actresschat1.chat_options.create(text: "I'm afraid I'm completely heartbroken. Miss Ali was a wonderful friend of mine.", nextResponse_id: actresschat3.id)

    actresschat2.chat_options.create(text: "Well, it looks like she died of a heart attack. But a suicide note was discovered, which Atif thinks is fake. I know she was of ill health, but still, it makes one wonder.", nextResponse_id: actresschat30.id)
    
    actresschat3.chat_options.create(text: "I thought she was like a mother to Mr. Mostafa. I imagine they've known each other quite a while.", nextResponse_id: actresschat4.id)
    actresschat3.chat_options.create(text: "You are the luckiest of us all, ma'am.", nextResponse_id: actresschat10.id)
    
    actresschat4.chat_options.create(text: "3.....7?", nextResponse_id: actresschat5.id)
    actresschat5.chat_options.create(text: "So... closer to 45?", nextResponse_id: actresschat6.id)
    actresschat5.chat_options.create(text: "No placation! You are genuinely beautiful and youthful looking!", nextResponse_id: actresschat6.id)
    actresschat6.chat_options.create(text: "Is there anyone in your life, Miss Hassan?", nextResponse_id: actresschat7.id)
    actresschat7.chat_options.create(text: "You know Brits don't flirt. They stare longingly from a distance and make witty sarcastic remarks.", nextResponse_id: actresschat8.id)
    actresschat8.chat_options.create(text: "I would love for you to lead the way, Miss Hassan.", nextResponse_id: actresschat9.id)
    actresschat9.chat_options.create(text: "Gladly.")
    
    actresschat10.chat_options.create(text: "I don't see how that's any of anyone else's business, ma'am.", nextResponse_id: actresschat11.id)
    actresschat10.chat_options.create(text: "We might have spent some of our extracurricular time together.", nextResponse_id: actresschat12.id)
    
    actresschat11.chat_options.create(text: "I can't say I appreciate it, ma'am.")
    
    actresschat12.chat_options.create(text: "Are you supposed to call your own affairs torrid?", nextResponse_id: actresschat13.id)
    
    actresschat13.chat_options.create(text: "**Scandalized pause**", nextResponse_id: actresschat14.id)
    actresschat13.chat_options.create(text: "**Nudge nudge, wink wink, eh?**", nextResponse_id: actresschat14.id)
    
    actresschat14.chat_options.create(text: "What makes you say that?", nextResponse_id: actresschat15.id)
    
    actresschat15.chat_options.create(text: "Do you think Riccardo would want to harm her?", nextResponse_id: actresschat16.id)
    
    actresschat16.chat_options.create(text: "There are still questions surrounding the circumstances of her death. I was just curious.", nextResponse_id: actresschat17.id)
    actresschat16.chat_options.create(text: "I was told that other people have heard them arguing time and again.", nextResponse_id: actresschat25.id)
    
    actresschat17.chat_options.create(text: "Are you absolutely sure about that?", nextResponse_id: actresschat20.id)
    actresschat17.chat_options.create(text: "How long have you known him?", nextResponse_id: actresschat18.id)
    
    actresschat18.chat_options.create(text: "What do you mean?", nextResponse_id: actresschat19.id)
    actresschat19.chat_options.create(text: "That sounds like an unfortunate position to be in.", nextResponse_id: actresschat31.id)
    
    actresschat20.chat_options.create(text: "Well, what else did Tess say about him?", nextResponse_id: actresschat21.id)
    actresschat21.chat_options.create(text: "Did Riccardo take that seriously?", nextResponse_id: actresschat22.id)
    actresschat21.chat_options.create(text: "She never mentioned anything like that to me.", nextResponse_id: actresschat29.id)

    actresschat22.chat_options.create(text: "How did you know Tess, if I may ask, miss Hassan?", nextResponse_id: actresschat23.id)
    actresschat23.chat_options.create(text: "Thank you so much for your time Miss Hassan.", nextResponse_id: actresschat24.id)
    actresschat24.chat_options.create(text: "I appreciate the heads up, ma'am.")

    actresschat25.chat_options.create(text: "Oh... my mistake then, ma'am. I might have mistaken what others were conveying to me.", nextResponse_id: actresschat26.id)
    actresschat26.chat_options.create(text: "My apologies, ma'am.")
    
    actresschat25.chat_options.create(text: "Maybe they just kept their squabbles to when you weren't around... so that you didn't get caught up in their spat?", nextResponse_id: actresschat27.id)
    actresschat27.chat_options.create(text: "I see.", nextResponse_id: actresschat28.id)
    actresschat27.chat_options.create(text: "Who knows what happens behind closed doors though?", nextResponse_id: actresschat28.id)
    actresschat28.chat_options.create(text: "My apologies, ma'am.")

    actresschat29.chat_options.create(text: "That's understandable. What about you, Miss Hassan, what do you believe?", nextResponse_id: actresschat36.id)
    
    actresschat30.chat_options.create(text: "Ricky?", nextResponse_id: actresschat15.id)
    actresschat31.chat_options.create(text: "Thank you so much for your time Miss Hassan.")

    actresschat32.chat_options.create(text: "Was she alone? Or was her husband with her?", nextResponse_id: actresschat33.id)
    actresschat32.chat_options.create(text: "Did it sound like an argument?", nextResponse_id: actresschat37.id)
    
    actresschat33.chat_options.create(text: "Did it sound like an argument?", nextResponse_id: actresschat34.id)
    actresschat34.chat_options.create(text: "That's probably why Tess kept it secret...")
    
    actresschat35.chat_options.create(text: "I might venture to do just that.")
    
    actresschat36.chat_options.create(text: "Seems to be all of us these days. I can ask around to see if anyone else knows something. Thank you for your time Miss Hassan.")
    actresschat37.chat_options.create(text: "Do you think it could have turned violent somehow?", nextResponse_id: actresschat38.id)

    actresschat38.chat_options.create(text: "Thank you so much for your time Miss Hassan.")


museumhead = Character.create(name: "Riccardo Bonardi", description: "Riccardo is the head of the Egypt department at the British Museum. You're very familiar with him and hope you get to be featured in one of his exhibits.", room: pyramidroom3, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698706/Characters/Gentleman2_swo28q.png", display: true)
museumheadchat1 = Chat.create(character: museumhead, response: "Well, hello, darling, how are you doing on this fine day?")

hatshepsutGhost = Character.create(name: "Queen Hatshepsut" , room: dreamSequence, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595266742/Characters/Screen_Shot_2020-07-20_at_1.37.59_PM_rhw9xf.png", display: false)
    Chat.create(character: hatshepsutGhost, response: "Welcome to my tomb!")
    Chat.create(character: hatshepsutGhost, response: "I am the ghost of Queen Hatshepsut. You may call me Hat in reverence...")
    Chat.create(character: hatshepsutGhost, response: "I see you have found my tomb...")
    Chat.create(character: hatshepsutGhost, response: "I lay here in rest for hundreds of years...")
    Chat.create(character: hatshepsutGhost, response: "And yet you have disturbed my slumber...")
    Chat.create(character: hatshepsutGhost, response: "However, I believe you are kind of heart...")
    Chat.create(character: hatshepsutGhost, response: "And I believe someone murdered your friend...")
    Chat.create(character: hatshepsutGhost, response: "Professor Ali was a worshipper of the old gods...")
    Chat.create(character: hatshepsutGhost, response: "But she was doomed to repeat many of the same mistakes I did...tomb!")
    Chat.create(character: hatshepsutGhost, response: "While my connection with the real world is weak...")
    Chat.create(character: hatshepsutGhost, response: "I will try to help you...")
    Chat.create(character: hatshepsutGhost, response: "You can click on the button here...")
    Chat.create(character: hatshepsutGhost, response: "And I can provide you clues...")


hatshepsutGhost2 = Character.create(name: "Queen Hatshepsut" , room: treasureroom, image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595698738/Characters/Queen2_oiftmd.png", display: false)
    ghostchat1 = Chat.create(character: hatshepsutGhost2, response: "Well, hello, darling, how are you doing on this fine day?")

victim = Character.create(name: "Tess Ali" , description: "Professor Ali is an exalted professor of archaeology at Cairo University in her fifties. Beautiful, witty, honorable, and generous have all been used to describe her. She's had an illustrious career but has been surrounded by some controversy recently.", image_url: "https://res.cloudinary.com/dqtw2xfuf/image/upload/v1595704284/Characters/Woman_holding_vase_olcj3r.png", display: true)
