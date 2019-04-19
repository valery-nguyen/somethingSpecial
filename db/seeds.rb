# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
ProductImage.destroy_all
User.destroy_all
Category.destroy_all

user1 = User.create({
  fname: 'Valery',
  lname: 'Nguyen',
  email: 'admin@gmail.com',
  password: 'california'
})

product1 = Product.create({ 
    title: 'Urban Map Glass', 
    description: "Take a mental stroll through familiar streets with this rocks glass, etched with your city's distinct grid.",
    price: 16.00,
    story_title: "Toast to Your Town",
    story_body: "Something about sipping a full-bodied bourbon after work brings you right back to that local watering hole where everyone actually did know your name. Whether you had your initials carved on the corner bar or you simply miss your favorite metropolis, this glass set lets you raise a toast to hidden gems and great memories with designer detail.
      Created by Boston-based designer Brian Johnson, these glasses feature an intricate city map that sprawls along the curves of the vessel. Interspersed street names and the locale's coordinates offer an unexpected way to show off your own stomping grounds. Glasses made in Ohio and etched in New Hampshire.
      Sold individually. Unfortunately, this item cannot ship outside of the United States at this time. 
      The cycling enthusiast in your life will love our exclusive Bike Map Glasses.",
    maker_name: "Brian Johnson",
    maker_location: "Massachusetts",
    maker_quote: "I hope that my designs serve as conversation pieces and fun ways to bring people together.",
    maker_description: 'Brian Johnson transforms everyday home goods and accessories into timeless heirlooms that tell a story. “I hope that my designs serve as conversation pieces and fun ways to bring people together,” he says. Brian is inspired by practical, user-friendly pieces that have an artful twist. To create these, he uses simple, sustainable materials that are locally sourced whenever possible. He hopes his designs elevate any occasion. “from small moments to once-in-a-lifetime celebrations.”',
    made_from: "glass",
    measurements: '3.5" H x 3.25" diameter; 11 fl. oz. capacity',
    care: "Wash the glass in the dishwasher before using for the first time.",
    notes: "Please note that these glasses are etched",
    item_id: 23433,
    made_in: "usa"
})

product2 = Product.create({ 
    title: 'Birthstone Wishing Balls', 
    description: "Capture a single wish, accomplishment, or meditation every week throughout the year inside this work of art.",
    price: 32.00,
    story_title: "Your Sphere of Influence",
    story_body: "Your birthday is like a private New Year's celebration-- a chance to reflect and look forward to the milestones you plan on reaching in the year to come. With this sentiment in mind, Jill Henrietta Davis created her birthstone wishing ball to capture a single wish, accomplishment, or meditation every week for the coming year. Each shimmering ball of hand-blown glass comes with 52 tiny slips of paper for you to pause once a week throughout the year and record a message of hope or gratitude. Coil them up and tuck them in the tiny hole near the base and they become a permanent part of the display. 
      People often ask Jill why the wishes can't come back out, and she explains in terms of birthday candles: When you blow out your candles, you don't tell the wish you made, otherwise it won't come true. But more importantly, memories are always more beautiful than photographs, and the same is true of wishes. When you look at the little slips of paper accumulating in your Wishing Ball, I want you to think about the big picture those messages convey. Rereading the notes would be like looking backwards, or trying to step in the same river twice.' Available in twelve vibrant hues that correspond to each month s birthstone. Handmade in Pawtucket, Rhode Island. 
      Join us for a trip to Jill's studio on our blog.
      Due to the handmade nature of this item, each is unique and will vary.",
    maker_name: "Jill Henrietta Davis",
    maker_location: "Rhode Island",
    maker_quote: "When you relinquish the tools you take for granted ... you have to stretch and find new tools to suit the new situation. Sometimes it’s scary, sometimes it’s awkward, often it’s funny, nearly always it’s a great investment.",
    maker_description: "During her freshman year studying fashion at Parsons School of Design, Jill Davis realized her clothes were more like wearable sculptures than fashion. She wanted to stay at Parsons, but she began exploring other departments. The day she walked into the glass studio and saw molten glass for the first time, her search was over. Glass is the most challenging and rewarding material I have ever encountered, says Jill. You can’t bully it—you are perpetually persuading and coaxing the glass into shape. Even the best living master glass blowers cannot always get the glass to do what they want! It’s this feisty streak that keeps me enchanted.",
    made_from: "paper, handblown glass",
    measurements: '4" H x 3.5" diam. Paper slips: 1" L x 3" W',
    care: "",
    notes: "Includes 52 slips of paper.",
    item_id: 26446,
    made_in: "usa"
})

product3 = Product.create({ 
    title: 'Intersection Of Love, Photo Print',
    description: "Commemorate the moment your paths first crossed with this personalized art.",
    price: 75.00,
    story_title: "Corner of You & Me",
    story_body: "Commemorate the moment your paths first crossed and look forward to walking down the same road together. Featuring you and your sweetie's names and the important dates you share, this photo print by Philadelphia artist Patricia Carlin is a sophisticated way to commemorate a wedding or anniversary in either color or black and white photo prints. Designed and made in the US. 
      Add extra personalization to your Intersection of Love® print to celebrate a milestone anniversary with our special, symbolic frames. They reflect the traditional symbols and gifts of major anniversaries to enhance the significance of your framed print: 
      Wood (5th anniversary), representing strength and a solidified relationship after 5 years. Walnut frame; made in the USA. 
      Tin (10th anniversary), representing the flexibility of a successful marriage at the decade mark. Pine frame; made in the Spain. 
      Platinum (20th anniversary), representing the enduring strength of your relationship after 20 years. European pine frame; made in Italy. 
      Silver (25th), representing the radiance and refined purity of your marriage at a quarter century. Bonanza wood frame; made in USA. 
      Gold (50th anniversary), representing your prosperous, treasured marriage at the mid-century mark. European pine frame; made in Italy. ",
    maker_name: "Patricia Carlin and Northwest Framing for the Uncommon Collection",
    maker_location: "Pennsylvania",
    maker_quote: "",
    maker_description: "Patricia Carlin started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business. Patricia designed several product lines for the new venture. 'We couldn't afford a writer at first, so I wrote my own copy for the glasses,' Patricia says. The business did well, and Patricia found herself designing a range of tabletop products. When a publisher noticed the glassware at a gift show, they saw book potential. With their help, Patricia produced two books: 'Glam Girl' and 'Geeky Girl.' Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says. 'After I had my daughter I rediscovered the power these little sketches have to tell a story. Drawing was a fun way to communicate without language.' 
      Northwest Framing strives to enhance the lives of their customers and colleagues by providing outstanding design and the premier custom framing experience, while increasing the value of their business. The company has been providing quality custom framing and framing products since 1974. The foundation of their success has been built on customer value, great product selection, high quality finished products, and community partnerships and enhancements. They believe that each of us has the opportunity and the responsibility to be the best, support our environment(s), and our communities.",
    made_from: "acid free matboard, plexi-glass, archival pigment ink, BonanzaWood®, Epson enhanced matte paper",
    measurements: 'Framed: 22" H x 18" W; Unframed Print: 14" H x 11" W',
    care: "",
    notes: "Unframed print is not matted.",
    item_id: 22272,
    made_in: "usa"
})

product4 = Product.create({ 
    title: 'Mason Jar Indoor Herb Garden', 
    description: "These vintage-inspired planters use a passive hydroponic system that makes it easy to grow your own herbs.",
    price: 20.00,
    story_title: "Get Fresh",
    story_body: "When chefs say fresh herbs make all the difference, they speak the truth. But where does that leave those of us with no garden, no time, and no green thumb? Harvest all that flavor with very little work with Sarah Burrows and Nick Behr's tinted, vintage-inspired jars. They're pure charm on the outside, but inside use a passive hydroponic system that brings nutrients up to the plants' roots while regulating moisture. There's no guesswork over whether the soil has the right amount of water. Plant the included seeds of your choice, put water in the reservoir, place the jar in a sunny window, and get growing. Assembled in the USA. ",
    maker_name: "Sarah Burrows and Nick Behr",
    maker_location: "",
    maker_quote: "",
    maker_description: "Prior to launching their company, Sarah and Nick struggled to sustain a kitchen garden in their fourth-floor Chicago apartment. Despite both honing their gardening skills as children, as busy adults they struggled to grow anything (container gardening is incredibly challenging). They turned to hydroponics for help and were astounded by the results, but unimpressed with the quality of products available. With that, the seed for their stylish, space-saving indoor gardens was planted.",
    made_from: "glass, stainless steel, seeds, polypropylene, coconut husk, kraft paper, recycled glass growing medium, activated carbon",
    measurements: '6" H x 3.5" Dia',
    care: "Designed for year round indoor use.",
    notes: "Self-watering jar options include Organic Geneovese Basil, Organic Cilantro, Non-GMO Common Mint, Organic Greek Oregano, Organic Flat Leaf Parsley and Organic Sage. ",
    item_id: 43428,
    made_in: "usa"
})

product5 = Product.create({ 
    title: 'Ticket Stub Diary', 
    description: "Preserve your precious memories from concerts, sporting events, museums, movies, Broadway shows, and more.",
    price: 14.00,
    story_title: "Just the ticket",
    story_body: "Never forget those front row seats at a Bruce Springsteen concert, the standing ovation at the premiere of the Lion King or the roar of the crowd when the Red Sox won the World Series. With this Ticket Stub Diary you can preserve your precious memories from concerts, museums, movies, sporting events, Broadway shows and more. This book comes with clear sleeves that fit a variety of ticket sizes, plus space in the margin to write down your memories from the event. Acid-free pages will preserve your memories; so that one day you can tell your grandkids that you met The Boss. Printed in China. Please note, ticket sleeves are 2.5' L x 4.5' W. Diary itself is 7.75' L x 7' W. Some larger tickets may not fit easily.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "100% recycled paper label stock, plastic",
    measurements: '8" L x 7.13" W; 52 pages with 118 ticket sleeves',
    care: "",
    notes: "",
    item_id: 15696,
    made_in: "usa"
})

product6 = Product.create({ 
    title: 'Mandala Wind Spinner', 
    description: "Inspired by traditional Asian mandalas, this vibrant piece spins and 'radiates' from its center.",
    price: 30.00,
    story_title: "Gaze On",
    story_body: "Is it just us, or is meditating easier on a beautiful, breezy day? Set your intentions—whether to find inner calm or pay attention to nature—in motion with these mesmerizing designs. Inspired by classic Hindu and Buddhist mandala imagery, the twirling metal pieces come flat and pop out in layers to reveal a vibrant three-dimensional design. When the wind blows, they spin blissfully, and 'radiate' from the center. Give the soothing piece to your favorite yogi or friend with a calming presence.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "stainless steel",
    measurements: '7" H x 12" dia.',
    care: "",
    notes: "weatherproof",
    item_id: 48542,
    made_in: "usa"
})

product7 = Product.create({ 
    title: 'Recycled Metal Ostrich Planter', 
    description: "The plants that grow in this recycled metal ostrich become its living plumage.",
    price: 56.00,
    story_title: "In Full Feather",
    story_body: "Ready to give both hanging baskets and gravity-bound planters a 43 mph* run for their money, these ingenious indoor/outdoor ostrich planters stand—literally, on feet—somewhere in between. Welded by Kenyan Tom Ateto and his team of artisans using washers, nuts, and other salvaged metal pieces, their 'plumage' is created by the arrangement of small plants and/or succulents you fill them with. Imagine both trailing and spiky upright flora and you'll begin to see their potential for magnificence--not to mention personality. Handmade in Nairobi, Kenya.*The speed ostriches can run.Due to the recycled and handmade nature of this item, each is unique and will vary.",
    maker_name: "Tom Ateto",
    maker_location: "Kenya",
    maker_quote: "",
    maker_description: "Tom Ateto and his small team of talented sculptors work in an old British barracks outside of Nairobi, Kenya. Heaps of used machine parts come into their studio as raw material. After the group transforms them with their sculpture magic, what was formerly junk goes out the door as personality-filled outdoor works of art.",
    made_from: "recycled metal",
    measurements: "Standard planter: 20.5' H x 6.5' Dia. x 2.5' D
      Large planter: 24' H x 7.5' Dia. x 2.5' D",
    care: "Wipe clean with dry or damp cloth. Planters may develop rust or patina over time. You can spray them with a clear spray paint or sealant to help preserve the original finish.",
    notes: "Measurements are of bowl and height of planter from feet to top of head.",
    item_id: 44943,
    made_in: "usa"
})

product8 = Product.create({ 
    title: 'Personalized Amp Doormat', 
    description: "Welcome guests to your home with the power chord appeal of this personalized amp doormat.",
    price: 35.00,
    story_title: "Amp Up Your Welcome",
    story_body: "Welcome guests to your home with the power chord appeal of this personalized amp doormat. Designed by graphic artist Jim Holodak, it's personalized with your family name in place of an iconic, rock-solid brand name like Fender. Best used indoors, wherever you like to turn it up to 11... Made in Albany, New York.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "polyester, rubber",
    measurements: '17" L x 27" W',
    care: "Wipe clean with sponge, soap and water.",
    notes: "",
    item_id: 41601,
    made_in: "usa"
})

product9 = Product.create({ 
    title: 'Ceramic Self Draining Soap Dish', 
    description: "Monica Greco's sculptural dish perches on the edge of your sink, letting excess water drain away.",
    price: 24.00,
    story_title: "Raise the Bar",
    story_body: "In the world of bathroom decor, the soap dish is sadly often an oversight—and kind of a soapy mess. This sculptural soap rest from ceramicist Monica Greco is designed to perch on the edge of your sink, letting excess water drain away and extending the life of your bar of soap. Monica applies her background in research science to developing special glazes, which give the piece an earthy loveliness and earn it a place of honor in your master bath or guest washroom. Handmade in Maryland.",
    maker_name: "Monica Greco",
    maker_location: "",
    maker_quote: "",
    maker_description: "It’s no surprise that Monica Greco takes a scholarly approach to her work as a ceramicist—her first career was in higher education. After earning a PhD in experimental psychology, she taught statistics and research methodology. She began pottery classes as a hobby, but the more she developed her creative abilities, the more she began to see how her research skills could be combined with her new craft. She applied her experimental mindset to creating glazes as well as the functional design of her pieces. And after 20 years in academia, Monica made the transition to being a full-time potter, producing work that is as innovative as it is beautiful.",
    made_from: "stoneware clay, lead free glaze",
    measurements: '4.5" L x 4" W x 1.5" H',
    care: "Dishwasher safe.",
    notes: "",
    item_id: 47888,
    made_in: "usa"
})

product10 = Product.create({ 
    title: 'Personalized Hearts Four Across Game', 
    description: "Challenge your other half to some lighthearted competition with this lovingly crafted four-across game.",
    price: 75.00,
    story_title: "Heart to Heart",
    story_body: "The couple who plays together stays together. Challenge your other half to some lighthearted competition with Kasey and Justin Pearson's lovingly crafted four-across game. They carve their handsome, heirloom-quality activity set from maple wood. Amid a field of incised hearts, up to four lines (seven characters each) can be personalized with your names, anniversary date, or a sweet message to surprise the one you adore. Handmade in Greensboro, North Carolina.",
    maker_name: "Kasey and Justin Pearson",
    maker_location: "North Carolina",
    maker_quote: "",
    maker_description: "Kasey and Justin Pearson didn’t set out to start a business, but their hobby turned into one. In 2012, the Greensboro, North Carolina, couple started making custom cornhole sets for friends and family as gifts. As they created more designs, their fun hobby quickly grew into a family business. Soon they were creating a variety of giant wooden games for all kinds of occasions. 
      The Pearsons are passionate about their work and they love brainstorming new product ideas together. Kasey uses her creativity to design, paint, and sew, while Justin uses his handyman skills for the construction of their pieces. They’re always looking for new ways to create unique games and are honored that their creations entertain players around the world.",
    made_from: "maple plywood",
    measurements: '13" L x 11.5" H x 5.5" W',
    care: "Do not leave outdoors. Avoid moisture. Clean with damp cloth if needed.",
    notes: "Includes 42 playing pieces (2 colors).",
    item_id: 42080,
    made_in: "usa"
})

product11 = Product.create({ 
    title: 'Adventures Map', 
    description: "Map your adventures in wedded bliss with Wendy Gold's beautiful keepsake.",
    price: 149.00,
    story_title: "We Go Together",
    story_body: "Starting a family is no longer synonymous with 'settling down.' It's only the first of many adventures! Map the places you go together with this interactive keepsake. Personalized with your last name and the date your tribe was established, Wendy Gold's vintage-inspired world map is framed and mounted on sturdy foam core. Printed with the words 'Family Travels,' it comes with a set of multi-colored push pins, so each family member can pick a color that represents them. Use the pins to map where parents met, vacation destinations, kids' college towns, and more as an artful and sentimental way to celebrate your journey together. Designed in California, printed in Portland, Oregon. ",
    maker_name: "Wendy Gold",
    maker_location: "California",
    maker_quote: "",
    maker_description: "“Inspiration has come to me steadily throughout life, and I have been fortunate to be able to chase it,” says Wendy Gold. She explains that as a teenager she “spent countless hours creating insanely intricate friendship bracelets, kaleidoscopes, and ceramic musical instruments,” and in college made a headboard for her bed so big that she couldn’t get it out of her room when she moved out. Always looking for new inspiration, she stumbled across a beautiful antique globe at a flea market and immediately recognized her next canvas. By using recycled materials, vintage globes, and maps, she creates beautiful, geographic art.",
    made_from: "foamboard, acid free ink, Cumala wood, push pins",
    measurements: '20" H x 26" W',
    care: "All art on paper should be protected from moisture and from prolonged, direct sunlight.",
    notes: "Arrives ready to hang with 100 multi-color pushpins, 10 of each color.",
    item_id: 48891,
    made_in: "usa"
})

product12 = Product.create({ 
    title: 'Make Your Own Chocolate Truffles Kit', 
    description: "Make a box of melt-in-your-mouth chocolate truffles at home with this DIY kit.",
    price: 35.00,
    story_title: "Delicious DIY",
    story_body: "You're in for a treat with this easy-to-use kit that allows you to make a box of melt-in-your-mouth chocolate truffles at home. Once the organic dark chocolate morsels are melted using either your stovetop or microwave, amateur chocolatiers can customize their creations by mixing in any of the included coconut flakes, peppermint, vanilla, or Himalayan sea salt. Add cream to make your bon-bons milk chocolate, or coconut milk to keep them vegan. Add a decadent dimension to your date night, personalize your Valentine's Day present, or satisfy your sweet tooth and your creative side in one fell swoop. Assembled in Portland, Oregon.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "",
    measurements: 'Kit: 6" L x 4" W x 4" H',
    care: "Store at room temperature between 60-80 degrees.",
    notes: "Kit Includes: 
      - complete instructions 
      - thermometer 
      - two 8 oz bags of organic 55% dark chocolate chips 
      - organic cocoa powder 
      - organic coconut flakes 
      - sea salt 
      - organic peppermint extract 
      - organic vanilla extract 
      Just add cream. Or coconut cream for a vegan option! 
      Makes approximately 36 truffles.",
    item_id: 43244,
    made_in: "usa"
})

product13 = Product.create({ 
    title: 'Recycled Glass Tree Globes Relationships', 
    description: "Stephen Kitras' vibrant, handmade, recycled glass globes celebrate your bonds with family and friends.",
    price: 45.00,
    story_title: "Mothers, Sisters, Family, Friends",
    story_body: "Celebrate those dearest to you with these elegant 100% recycled glass globes, handmade in Canada by Stephen Kitras and featuring an interior glass trunk that branches out to support vibrant splashes of color. Each globe is made from shards of glass used for car, home, and office windows. The shards are melted down in a furnace before being blown into beautiful works of art that have come to symbolize family, friendship, and the bonds that bring you together.",
    maker_name: "Stephen Kitras",
    maker_location: "Canada",
    maker_quote: "“Why glass? Compared to other media I've worked in, such as iron and ceramic, glass is immediate and responds right away to any design decisions that I make.”",
    maker_description: "The mantra 'when surrounded by beauty, the spirit is uplifted' embodies the mission of Kitras Art Glass. Stephen Kitras began work as a glassblower in 1988, and in 1994 he formed Kitras Art Glass with his wife, Elke. By 2001 the company had expanded to over 40 employees and a new facility. It is Stephen's goal is to design and produce affordable glass art objects to enhance the lives of others. 'I think it’s good to make beautiful things and celebrate beautiful moments,' he says. They happen every day, all around us.",
    made_from: "recycled glass",
    measurements: '6" dia.',
    care: "",
    notes: "Not intended for use as a holiday tree ornament.
      Indoor and outdoor safe due to sealed glass. 
      The included wire is not a permanent way to hang the globes.
      Use your own sturdy fishing wire or ribbon to hang.
      Secure knots tightly, and consider doubling knots before hanging.",
    item_id: 17884,
    made_in: "usa"
})

product14 = Product.create({ 
    title: 'Color Map Mugs', 
    description: "Reminisce about your travels or plot your next destination with this color-it-yourself map mug.",
    price: 18.00,
    story_title: "Travel Mug",
    story_body: "That little café in Milan where you sipped espresso. The café au lait in Paris that made you contemplate French citizenship. Remembering those international excursions over a warm cup of joe is a nice way to spend time between trips. Chart your travels by coloring in the countries you've visited on this ceramic mug, then pop it in the oven to permanently update the map. Already have your heart set on your next destination? You can keep coloring as you explore the world, then bake each time to set the ink. It also makes a thoughtful gift for a travel companion or jet-setting friend. Designed by Candelaria Reymundo Santos and Greg Waloszczyk. Made and hand-finished in Poland.",
    maker_name: "Candelaria Reymundo Santos and Greg Waloszczyk",
    maker_location: "United Kingdom",
    maker_quote: "We had already made up our minds that we would leave everything to travel the world for some time, but we wanted to do something with our lives in the meantime. Build something.",
    maker_description: "Candelaria Reymundo Santos and Greg Waloszczyk have been traveling the world together since 2008, and as 'big tea drinkers' they picked up a lot of souvenir mugs along the way. It was on a plane on one of their adventures that they got the idea to create a mug that let them commemorate all of their travels in one souvenir. 
      As the couple puts it, 'He is the business guru and she is the creative mastermind.' Even though they left their old lives behind when they decided to travel and explore, they knew they wanted to do something meaningful along the way. They founded their business with the goal of always putting working conditions and quality first, manufacturing their products in Europe, and partnering with dedicated people who are the best at what they do.",
    made_from: "stoneware",
    measurements: '3.25" diameter x 4.25" H (4.75" L with handle); 16 fl. oz. capacity',
    care: "Leave design to dry for 15 minutes before baking at 320°F in a pre-heated oven for 25 minutes. Leave to cool in the oven. Mug is dishwasher and microwave safe.",
    notes: "",
    item_id: 48724,
    made_in: "usa"
})

product15 = Product.create({ 
    title: 'Solar Photography Kit', 
    description: "Use the power of sunlight to produce rich blue prints of common objects on paper or fabric.",
    price: 14.95,
    story_title: "The Blueprint For Creativity",
    story_body: "Based on the cyanotype process pioneered by Anna Atkins (the first female photographer) in 1842, Sunography is a fun and rewarding introduction to printmaking, using a minimum of equipment and materials. Place any object or transparency on the Sunography paper, expose to sunlight, and rinse with water to produce your own richly blue prints. Use old photo negatives, x-rays, bits of lace, leaves, and everyday objects to compose an endless variety of images. The heavyweight cotton paper or fabric may be exposed on both sides, and is suitable for hand coloring, painting, or stitching to make your prints even more unique. Made in the USA.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "plastic, 90 lb heavy weight cotton paper",
    measurements: 'See below',
    care: "",
    notes: "Paper Kit includes: 6 5' x 7' sheets of photosensitive paper (each printable on both sides), instructions, light proof plastic storage bag.
      Fabric Kit includes: 6 6' x 6' sheets of photosensitive cotton fabric (one each of green, orange, rose, turquoise, violet, and white)(each printable on both sides), instructions, light proof plastic storage bag.",
    item_id: 26042,
    made_in: "usa"
})

product16 = Product.create({ 
    title: 'Sewing Station', 
    description: "Keep your sewing essentials in one place with this sweet stoneware caddy, featuring a pin cushion topper.",
    price: 58.00,
    story_title: "Sew Organized",
    story_body: "Handmade by Leslie Nieto, this stoneware sewing station is a fetching and functional container for all your sewing implements. Shaped like an oversized spool, the removable lid incorporates loose bobbin storage, a hole to keep scissors handy, and a fabric-covered pincushion in the center to keep pins and needles secure. It's a go-to caddy for all your sewing essentials, in a beautifully handcrafted package. Hand thrown in Florida.",
    maker_name: "Leslie Nieto",
    maker_location: "Florida",
    maker_quote: "",
    maker_description: "Clay has been a part of Leslie Nieto's life since grade school and she couldn't imagine a life without it. Leslie is grateful for the chance to do what she loves every day and share her passions with the world. “My work mirrors my life,” says Leslie Nieto. The mother of twins recalls coming home from the hospital and clearing out her beautiful nursery to make room for the necessities. “I do the same with my art. It’s always function first, beauty second.” One of her favorite parts of creating is hearing how her designs touch people’s lives. I got a letter once from a mother who had taught her daughter how to sew using my sewing station, she says. That was incredibly special.",
    made_from: "cotton, wool, stoneware clay",
    measurements: '5.25" H x 5.5" diam.',
    care: "Wipe clean with soft damp cloth. Keep pin cushion dry.
",
    notes: "",
    item_id: 26937,
    made_in: "usa"
})

product17 = Product.create({ 
    title: 'Moving Mechanical Safe Kit', 
    description: "Before you crack this safe, you have to build it from 179 laser-cut Baltic birch parts.",
    price: 60.00,
    story_title: "Stethoscope Not Included",
    story_body: "We Googled 'parts of a safe' to research this design, and the FBI paid us a visit. Once we talked our way out of that, we found that this amazingly engineered kit forms a fully functional, three-digit combination safe. Basically, before you crack it, you have to build it: assemble 179 laser-cut, numbered Baltic birch parts to form a desktop safe to hold small essentials or diminutive dossiers. The customizable combination will keep aspiring safecrackers guessing. No hatchets or hand saw shortcuts, please. The all-wood kit requires no glue or hardware. Made in Ukraine.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "baltic birch plywood",
    measurements: '8" L x 7" W x 7" H',
    care: "",
    notes: "",
    item_id: 47407,
    made_in: "usa"
})

product18 = Product.create({ 
    title: 'My Miniature Library', 
    description: "Create a tiny library of 30 miniature books, complete with bookcase.",
    price: 20.00,
    story_title: "Short Stories",
    story_body: "Once upon a time, there was a library full of tiny tales and diminutive storybooks. Were they made by industrious, bookbinding elves? Hardly. They were made by a crafty young reader from this cute kit. Budding book artists can create an adorable collection of 30 miniature volumes that you can really read (magnifying glass not included). From illustrated fairytales like The Frog Princeto well-loved nursery rhymes like The Owl & The Pussycat and books of birds, butterflies, and flowers, this doll-sized library also comes with a sweet little bookcase to assemble. The set includes templated titles like 'My Miniature Adventure' and two blank books to complete with their own stories and drawings. Even the book-like box opens to become a reading nook playset. When story time is done, it's a handy place to store everything until the next round of play. It makes a great do-it-yourself gift for creative fairy librarians. Includes detailed instruction booklet.",
    maker_name: "",
    maker_location: "",
    maker_quote: "",
    maker_description: "",
    made_from: "paper",
    measurements: '12.5" L x 1.5" W x 9" H',
    care: "",
    notes: "Set includes 20 illustrated mini books: 
      Atlas of the World
      Beauty and the Beast
      The Book of Birds
      Cinderella
      The Elves and the Shoemaker
      The Frog Prince
      Goldilocks and the Three Bears
      Hansel and Gretel
      Jabberwocky
      Little Red Riding Hood
      Momotarō the Peach Boy
      Moths and Butterflies
      Mythical Creatures
      The Owl and the Pussycat
      Plants and Flowers
      The Princess and the Pea
      Signs of the Zodiac
      Sleeping Beauty
      The Snow Queen
      Thumbelina
      Plus 10 books to complete yourself!",
    item_id: 47552,
    made_in: "usa"
})

product19 = Product.create({ 
    title: 'Build Your Own Pinball Game', 
    description: "Everything you need to create a fully functional, rubber band-powered, cardboard pinball machine.",
    price: 49.95,
    story_title: "Pinball Wizard",
    story_body: "Unplug from your electronics and get ready to have some wildly inventive fun. This kit comes with everything you need to create a fully functional, rubber band-powered, cardboard pinball machine. In about an hour, and with no tools required, anyone (age 13 and up) will be able to assemble their own basic game. But then the real fun begins, as they use their own creativity to customize their creation, decorating it and adding ramps or obstacles. Any kid or game-loving grown-up will feel like a high score winner as they get to play and show off their one-of-a-kind arcade invention. Designed by Ben t. Matchstick and Pete Talbot in Burlington, Vermont. Made using reworked cardboard from shipping packages in Philadelphia.",
    maker_name: "Ben t. Matchstick and Pete Talbot",
    maker_location: "Vermont",
    maker_quote: "",
    maker_description: "The dynamic duo of Ben T. Matchstick and Pete Talbot has the power to create magic out of almost anything. As conceptual artists and entertainers, their projects include cardboard sculptures, spectacular interactive puppet shows, Japanese-style street performance, comic books, music, and more. Such wild creativity is best when shared, so the two are also dedicated educators, collaborating with after-school programs and maker communities. With their DIY pinball machine kit, they bring both their jubilant aesthetic and their love of hands-on learning to the world of product development.",
    made_from: "cardboard, recycled cardboard",
    measurements: '24" L x 14" W x 14" H',
    care: "Keep dry and clean gently. Keep away from flames.",
    notes: "Includes:
      (12) die cut slides containing (39) essential parts
      (30) box rivets
      (12) rubber bands
      (3) marbles
      (1) hook tool
      (1) mini pencil
      (1) hole puncher
      die cut extra parts for classic pinball layout
      assembly guide",
    item_id: 47313,
    made_in: "usa"
})

product20 = Product.create({ 
    title: 'Birdie Yarn Bowl', 
    description: "A sweet knitting companion, this stoneware bowl keeps skeins of yarn organized between each knit and purl.",
    price: 48.00,
    story_title: "Strings Attached",
    story_body: "Your knitting circle just got a little sweeter. With a hand-sculpted sparrow perched along its edge, Aaron A. Harrison,'s stoneware bowl keeps skeins of yarn in place while you knit, crochet, or weave. A hooked opening allows the yarn to unfurl in a steady stream, and holes pierced in the bowl's side offer a convenient resting spot for needles between knits and purls. A little bird told us that this is the perfect crafting companion for when you're creating your own homespun creations for all your close-knits. Handmade in upstate New York.",
    maker_name: "Aaron A Harrison",
    maker_location: "New York",
    maker_quote: "Whether it be sewing, knitting, crocheting, or cooking, I hope my pieces can tease and extract that inner desire to create that resides in each one of us.",
    maker_description: "There is an acute connection between clay and other crafts that I strive to enhance, says sculptor Aaron A. Harrison. Whether it be sewing, knitting, crocheting, or cooking, I hope my pieces can tease and extract that inner desire to create that resides in each one of us. The son of an architect father and artist mother, Aaron quickly gravitated toward all things creative. LEGO towers gave way to kindergarten art contest wins, which eventually drove him to pursue an MFA in ceramics and sculpture. Today, Aaron works out of his 500 square foot studio in upstate New York where he sculpts, paints, and packs each individual piece himself. ",
    made_from: "stoneware, glaze",
    measurements: '3.5" H x 6" diameter',
    care: "Clean with damp, non-abrasive cloth",
    notes: "",
    item_id: 23758,
    made_in: "usa"
})

product21 = Product.create({ 
    title: 'Tree Of Life Hose Holder', 
    description: 'Part elegant decor, part functional piece, this handmade bronze design artfully disguises your garden hose.', 
    price: 70,
    story_title: 'Art in the Wild',
    story_body: 'What do your favorite flowers, veggie garden, and the tree of life have in common? They all need the same thing to grow: water. Store your garden hose artfully with this beautiful handmade piece. A small group of metal artists in Michigan craft the design from sturdy aluminum, inspired by the classic Tree of Life. The included hardware makes hanging the piece outside your home or garage simple and easy. Give the piece to an avid gardener or anyone who enjoys the beauty of the outdoors. Handmade in Whitehall, Michigan.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: 'I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: "Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says. ",
    made_from: 'aluminum',
    measurements: "16.5' dia.; holds 75' of hose",
    care: 'Wipe with a dry cloth.',
    notes: 'Hardware included.',
    item_id: 21240,
    made_in: "usa"
})

product22 = Product.create({ 
    title: 'Bear Family Home Plaque', 
    description: 'Personalize one with your family name, or several to represent each family member.', 
    price: 35,
    story_title: 'Home is Where the Porridge Is',
    story_body: "Fiercely loyal and fans of huge hugs: That's your family. Celebrate your bear of a brood with one or a set of these stately yet playful home plaques. Personalize one with your family name, or several to represent each family member (they come in Papa, Mama, and Little sizes). They're crafted by a collective in Michigan from recycled aluminum using a sand-casting process, and make a thoughtful gift for weddings, new homes, and new baby bears. Hardware included. Handmade in Whitehall, Michigan.",
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: "Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says. ",
    made_from: "aluminum",
    measurements: "Big Bear: 8.25' L x 10.25' W, Baby Bear: 6.25' L x 7.25' W",
    care: '',
    notes: 'Hardware included.',
    item_id: 21257,
    made_in: "usa"
})

product23 = Product.create({ 
    title: 'Pedigree Poem Tote Bag', 
    description: "On one side, a playful poem celebrating your pup's special traits; on the other, a fetching illustration.", 
    price: 45,
    story_title: 'Open Bark Night',
    story_body: "Your four-legged pack member makes you so proud, and this everyday tote features a playful ode that proves it. Each design is unique from head to tail: On one side, a playful acrostic poem celebrating your pup's special traits—from the French Bulldog's 'yodel' to the 'cavorting escapades' of the Pembroke Welsh Corgi—and on the other, a fetching illustration. Durable with sturdy straps, the bag features a zippered pocket to keep essentials like keys, traditional-sized wallet, and phone easily accessible. Poems by Martin Geller. Illustration by Patricia Carlin. Made in Brooklyn, New York.",
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: "Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says. ",
    made_from: 'cotton',
    measurements: "15' H x 12' W x 2.5' D; interior zipper pocket 7' x 7'",
    care: 'Machine wash cold inside out; hang dry.',
    notes: '',
    item_id: 21241,
    made_in: "usa"
})

product24 = Product.create({ 
    title: 'Personalized Family Ski & Snowboard Art', 
    description: 'Hit the slopes with your whole clan of snowbunnies—even your pet can suit-up and join you in the snow!', 
    price: 75,
    story_title: 'Let It Snow',
    story_body: "You might not be destined for the Winter Olympics, but when you hit the slopes with your family, the event inspires some fanfare. Showcase your mountain crew with Patricia Carlin's charming personalized ski and snowboard artwork. A colorful cast of 2-14 characters custom designed to look like your family takes to the slopes in a chairlift line-up. Choose skis or snowboards for each family member, and skin tone and hair color to match your crew—even your family pet can suit-up and join you in the snow! Designed in Pennsylvania. Printed and framed in Oregon.",
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: 'I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: "Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says.",
    made_from: 'wire, acid free matboard, plexi-glass, BonanzaWood®, Epson enhanced matte paper',
    measurements: "2-4 figures, framed: 14' H x 20' W; ",
    care: 'Dampen a soft, lint free cloth with warm water or mild solution of dish detergent and water to remove dust and dirt from the frame or acrylic.',
    notes: "2-4 figures unframed 8'x14' print 5-7 figures unframed 8'x20' print 8-14 figures unframed 8'x28' print",
    item_id: 21258,
    made_in: "usa"
})

product25 = Product.create({ 
    title: 'Cat Composition Pillow', 
    description: "Unique from head to tail, this pillow features an acrostic poem celebrating your kitty's special traits.", 
    price: 90,
    story_title: 'Open Meow Night',
    story_body: "Your fur baby rules the family, and this decorative pillow poetically says you wouldn't have it any other way. Unique from head to tail, each design features a playful acrostic poem celebrating your kitty's special traits-from the Siamese's 'loud and low—pitched song' to the 'formal clothes' of the aptly named Tuxedo—and an illustration with real meow factor. It's stamped with an 'Ailurophile' seal (aka 'official cat purr-son'). Poems by Martin Geller. Illustration by Patricia Carlin. Made in Brooklyn, New York.",
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: "I like to keep things pretty simple. I focus on warmth, humor, and emotion.",
    maker_description: "Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. 'For me, paring things down to their simplest essence is always the best way to understand them,' she says.",
    made_from: 'synthetic down, 100% cotton canvas',
    measurements: "16' Sq.",
    care: 'Cover can be machine washed inside out on cold setting; hang dry.',
    notes: '',
    item_id: 21242,
    made_in: "usa"
})

product26 = Product.create({ 
    title: 'Bubble Tea Kit', 
    description: 'With this handy kit, two flavors of bubble tea are within reach at your leisure. Made in Georgia Exclusively for UncommonGoods Please note: This item is not available to ship outside of the U.S.', 
    price: 35,
    story_title: 'Another Kind of Bubbly',
    story_body: "Boba; bubbles; tapioca pearls—all terms for the chewy treats that slide up the rotund straws traditionally used to sip Taiwanese bubble tea. Intrigued? Now, thanks to Katie and Dustin Watts's make-it-yourself kit, you can whip up a hot or cold batch of your own. With two flavors of tea—classic black and rooibos chai—tapioca pearls, and two reusable stainless steel straws, this addictive delight is now home-brewable. Just add your choice of milk (or not!) and enjoy. Hand-assembled in Georgia.",
    maker_name: 'Katie and Dustin Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Katie and Dustin Watts have enjoyed tea since they were kids. The two met in Washington D.C. and discovered a mutual passion for the culture surrounding tea on their first date. Over time, Katie started blending tea and Dustin was often found cooking with unique spice blends. Now, they make healthy, tasty products that take cues from the American cocktail, Asia’s ancient tea tradition, and European cafes and spirits. Katie and Dustin believe that nature knows best when it comes to flavor, digging deep into the botanical world for ingredients.',
    made_from: 'black tea',
    measurements: "In Packaging: 10' L x 7' W x 3' H",
    care: 'Stainless steel straws are dishwasher safe.',
    notes: '',
    item_id: 21259,
    made_in: "usa"
})

product27 = Product.create({ 
    title: 'World Botanicals Tea Set', 
    description: 'Flavors range from Earl Grey with bergamot orange to a blend inspired by a Tibetan monastery recipe.  Please note: This item is not available to ship outside of the U.S.', 
    price: 55,
    story_title: 'From Tea to Shining Tea',
    story_body: 'Grab your pith helmet and your traveling pants, because your own teapot is now your key to international adventure. This sampler set of teas from all four corners of the globe comes with ten distinctive varieties, each packaged in a tube with enough tea for a standard 6-8 cup pot. The flavors range from familiar with a twist, like Earl Grey with bergamot orange, to more exotic infusions, such as Thé des Moines, a floral blend inspired by a recipe from a Tibetan monastery. With each pot, you can sit back and relax while your taste buds enjoy a well-earned vacation. Teas sourced globally and blended in France. ',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: '',
    measurements: "11' L x 6' W x 1.5' H",
    care: '',
    notes: 'Earl Grey black tea with bergamot',
    item_id: 21243,
    made_in: "usa"
})

product28 = Product.create({ 
    title: 'Bike Six Pack Holder', 
    description: 'Carry a six pack in upcycled style with this holder that attaches to your frame.  Due to the recycled and handmade nature of this item, each is unique and will vary. Made in Colorado', 
    price: 40,
    story_title: 'Re Cycled Bottles',
    story_body: 'Who can forget the tragic six-pack accident of 2016? They lived to tell about it, but their favorite craft beer was all over Route 33. Carry those cold ones in safe, upcycled style with this bottle holder that attaches to your frame. Inspired by his high school job in a bike shop, Davidson Lewis has been incorporating bicycle inner tubes back into distinctive cycling designs ever since. Made from reclaimed tube material and upcycled tent fabric, the insulating carrier accommodates six bottles and includes a handle for toting your refreshments on foot. Due to the upcycled nature of this design, colors and patterns will vary. Handmade in Boulder, Colorado.',
    maker_name: 'Davidson Lewis',
    maker_location: 'Colorado',
    maker_quote: "Boulder-based Davidson Lewis' first high school job was working at a bike shop where he had an “ah-ha' moment: he noticed all the bicycle inner tubes and other durable materials that were being discarded. As a passionate cyclist and outdoorsman, he started to think how he could do something good with these materials. Through an environmentally friendly design project, he developed a line of gear made of bicycle and truck inner tubes, old seat belts, and scrap fabrics. Davidson's line has since expanded to offer all types of fun, functional bags and accessories. In addition to upcycling bicycle tubes, he uses reclaimed tent material, climbing ropes, wetsuits, and yoga mats. All these materials are diverted from landfills while equipping you for your ride or adventure.",
    maker_description: '',
    made_from: 'recycled bike inner tube, reflective material',
    measurements: "9.5' H x 8.5' W x 6' D in.",
    care: '',
    notes: '',
    item_id: 21260,
    made_in: "usa"
})

product29 = Product.create({ 
    title: 'Holiday Bike Chain Star Ornaments', 
    description: 'Link a love of cycling and recycling by decking the halls and the tree with this one-of-a-kind ornament trio. Made in California Exclusively for UncommonGoods', 
    price: 15,
    story_title: 'Making Sprockets Bright',
    story_body: 'Link a love of cycling and recycling by decking the halls and the tree with this one-of-a-kind ornament. This stellar example of a sustainable reuse is formed from reclaimed bike chains that are cleaned in an ultrasonic bath, connected in the iconic five-point star shape, spray painted and sealed, and hung from a recycled bike innertube string.',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: 'recycled bike inner tube, recycled bike chain',
    measurements: "1.5' L x 1.5' W x .25' H",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21244,
    made_in: "usa"
})

product30 = Product.create({ 
    title: '100 Movies Scratch Off Poster', 
    description: 'Take a deep dive into movie magic with this poster that invites you to screen 100 iconic films.', 
    price: 15,
    story_title: 'Scratch That Scene',
    story_body: "From Casablanca to Jaws, you've already seen some of the classics and blockbusters. Grab the popcorn and take a deeper dive into movie magic with this poster that invites you to screen 100 iconic films. As you do, use a coin to scratch off each title and reveal surprise, movie-related artwork underneath. It's an interactive way to enjoy essential viewing for any film buff. Made in the UK, which gave us Charlie Chaplin, Alfred Hitchcock, and Ridley Scott.",
    maker_name: 'Bennie Rodriquez',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Bennie Rodriquez is an artist from Alabama who loves crafting custom items.',
    made_from: '300 gsm wood-free gloss paper',
    measurements: '',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21261,
    made_in: "usa"
})

product31 = Product.create({ 
    title: '100 Craft Beers Scratch Off Poster', 
    description: 'Sample 100 must-try craft brews with a poster made for biggest fans as your guide.', 
    price: 15,
    story_title: 'Hop to It',
    story_body: "Arrogant Bastard. Bearded Lady. La Duchesse de Bourgogne. Any beer lover knows we're not just listing people: we're listing must-try craft brews. Sample these varieties and 97 others with a poster made for hops' biggest fans as your guide. Each time you try a new type of beer, reach for a coin and scratch away at its square to reveal a special illustration. The more you drink ('twist my arm,' you might say), the more designs you'll uncover. Made in the UK, where beer's been a treasured bev since the Celts reigned supreme.",
    maker_name: 'Connie Summers',
    maker_location: 'Alaska',
    maker_quote: '',
    maker_description: 'Connie Summers is an artist from Alaska who loves crafting custom items.',
    made_from: '300 gsm wood-free gloss paper',
    measurements: "23.2' H x 16.5' W",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21245,
    made_in: "usa"
})

product32 = Product.create({ 
    title: 'Craft Beer Candles', 
    description: 'Craig Davis scents his beer-inspired soy wax candles like a master brewer flavoring his signature suds. Made in California Please note: This item is not available to ship outside of the U.S.', 
    price: 26,
    story_title: 'Ambience on Tap',
    story_body: "If craft beer is the light of his life, Craig Davis'shandcrafted candles are made for him. Craig blends the long-lasting soy wax bases with cheery, beery, all-natural scents, and pours them into hand-cut, reclaimed bottles. Hand poured in Truckee, California.",
    maker_name: 'Mae Greer',
    maker_location: 'Arizona',
    maker_quote: '',
    maker_description: 'Mae Greer is an artist from Arizona who loves crafting custom items.',
    made_from: 'recycled glass, soy wax, cotton wick',
    measurements: "4.5' H x 3' dia.",
    care: '',
    notes: '',
    item_id: 21262,
    made_in: "usa"
})

product33 = Product.create({ 
    title: 'Craft Ipa Beer Shampoo & Conditioner', 
    description: 'Put your favorite libation to new use with this all-natural beer shampoo and conditioner.', 
    price: 19,
    story_title: 'Please Lather Responsibly',
    story_body: 'new: Brewers, barkeeps, and boozers have found a new use for their favorite refreshment. Turns out, beer is great for hair. These IPA-inspired shampoo and conditioners (sold separately) are designed for voluminous, silky soft locks. It’s naturally rich in amino acids, hops, roasted barley, and malt with some added botanical extracts for an exceptional scent. Always sulfate, paragon, and phthalate-free, you’ll lather up for a great-smelling mane from root to tip. Made in California.',
    maker_name: 'Josefina Lyons',
    maker_location: 'Arkansas',
    maker_quote: '',
    maker_description: 'Josefina Lyons is an artist from Arkansas who loves crafting custom items.',
    made_from: 'recycled materials',
    measurements: "2' L x 2' W x 6.5' H; 12 fl. oz. each",
    care: '',
    notes: '',
    item_id: 21246,
    made_in: "usa"
})
product34 = Product.create({ 
    title: 'Wild Man Grooming Kit', 
    description: 'This woodsy grooming kit offers a bounty of great-smelling goods for manly grooming.  Due to the handmade nature of this item, each is unique and will vary. Made in California Please note: This item is not available to ship outside of the U.S.', 
    price: 60,
    story_title: 'Balms to Be Wild',
    story_body: 'In their natural habitat, wild men only need a mountain stream to scrub in and a spruce branch to comb their beards. For more civilized guys, this woodsy grooming kit offers a bounty of great-smelling goods. Bod Butter is a moisturizing, post-shower blend of herbal oils and whipped shea butter with a foresty fir scent. Mountain Morning aftershave is a soothing and bacteria-fighting morning ritual for smooth, hydrated skin after shaving. Man Mist cologne captures the essence of the deep woods, fresh-cut lumber, and trailblazing masculinity. Moonshadow cold-processed soap is handcrafted and completely natural, but ready to deliver a deep clean. Presented in a rustic wood crate with moss and dried botanicals, it makes a great gift for any rugged guy who cleans up nicely. Handmade by Megan Taber in California.',
    maker_name: 'Ralph Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Ralph Watts is an artist from California who loves crafting custom items.',
    made_from: 'recycled materials',
    measurements: "In box: 9' L x 6' W x 3' H; Bod Butter; 4oz., After Shave 2oz., Man Mist 4oz.",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21263,
    made_in: "usa"
})

product35 = Product.create({ 
    title: "Mens Black Pepper Shaving Kit", 
    description: 'Fur maintenance essentials: facial and body wash, aftershave balm, moisturizer, towel, and dopp kit.', 
    price: 50,
    story_title: 'The Fuzz That Once Was',
    story_body: "Like a smart bowtie or pocket square, a clean shave makes a statement. It says, I'm smooth, just like my scotch. This sophisticated set contains the essentials for face fur maintenance: dopp kit, facial wash, aftershave balm, moisturizer, and towel, plus body wash for everything below the scruff. Scented with thistle and black pepper, each item is travel-sized and stashes in the vegan leather dopp kit. Because while you may go on safari, you need not look like a wild animal. Made in Scotland.",
    maker_name: 'Jordan Mcbride',
    maker_location: 'Colorado',
    maker_quote: '',
    maker_description: 'Jordan Mcbride is an artist from Colorado who loves crafting custom items.',
    made_from: 'recycled materials',
    measurements: "Gift Bag: 9.5' L x 6' W x 4' H",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21247,
    made_in: "usa"
})

product36 = Product.create({ 
    title: "Mens Adventure Soaks", 
    description: 'Refreshing, nature-scented bath soaks for the person who likes wielding axes as much as blissful relaxes. Please note: This item is not available to ship outside of the U.S.', 
    price: 18,
    story_title: 'Smells Like Tree Spirit',
    story_body: "After a day of foraging or chopping fire wood, you like the idea of smelling like nature. But more like refreshing pine needle and citrus grove nature, not sticky, dirt-caked nature. These soaks get you. Add some Trail Soak to your tub, and come out wearing the subtle scent of spearmint, eucalyptus, and orange. Or, go a little earthier with the Summit Soak, a blend of pine, fern, and cedar. It's a thoughtful gift for the person who likes wielding axes as much as blissful relaxes. Created by Laura Reid. Made in California.",
    maker_name: 'Angelina Jacobs',
    maker_location: 'Connecticut',
    maker_quote: '',
    maker_description: "Angelina Jacobs is an artist from Connecticut who loves crafting custom items.",
    made_from: 'recycled materials',
    measurements: "5.8' L x 2.3' W x 1.5' H",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21264,
    made_in: "usa"
})

product37 = Product.create({ 
    title: 'Great Outdoors National Park Candles', 
    description: 'Laura Reid explored three national parks and crafted candles from their complex, iconic character. Made in California Please note: This item is not available to ship outside of the U.S.', 
    price: 38,
    story_title: 'Free Parking',
    story_body: 'Each of our majestic national parks has its own sights, sounds... and scents. Laura Reid explored three parks and crafted candles from the complex character of their iconic features. The Avenue of the Giants from Redwood National Park is captured in notes of coastal redwood, bay laurel, and sea salt. The Old Faithful area of Yellowstone is portrayed with subalpine fir, thermal moss, and wild strawberry. The Yosemite Firefall phenomenon is reflected in brisk granite, fresh cedar, and black sage. Each of these layered bouquets is meticulously formulated through essential oils to bring a sense of scenic wonder and outdoor adventure to your home. ',
    maker_name: 'Genevieve Thomas',
    maker_location: 'Delaware',
    maker_quote: '',
    maker_description: 'Genevieve Thomas is an artist from Delaware who loves crafting custom items.',
    made_from: 'recycled materials',
    measurements: "4' H x 3' dia.; 10 oz.",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21248,
    made_in: "usa"
})

product38 = Product.create({ 
    title: 'Personalized All Heart Necklace', 
    description: 'Celebrate love with this elegant necklace made just for you and your sweetheart. Made in California Exclusively for UncommonGoods', 
    price: 75,
    story_title: 'What’s In a Name?',
    story_body: "Celebrate love with this elegant necklace made just for you and your sweetheart. Handcrafted by Canela Lemoine, the piece features two sterling silver disks—stamped with the names of your choice—joined by a gold-filled heart and hitched to a sterling chain, toasting all the stuff that binds you and your partner together. Perfect for times when your bond's in the spotlight, its personal touch adds some extra oomph. Handmade in California.",
    maker_name: 'Wendell Mcgee',
    maker_location: 'Florida',
    maker_quote: '',
    maker_description: "Wendell Mcgee is an artist from Florida who believes crafting is a great way for expression.",
    made_from: 'sterling silver, Gold Fill',
    measurements: "Heart: 0.5' 18' chain",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21265,
    made_in: "usa"
})

product39 = Product.create({ 
    title: 'Personalized All Heart Bangle Set', 
    description: 'Canela Lemoine hand-stamps each bangle with a name, date, or special word. Made in California Exclusively for UncommonGoods', 
    price: 70,
    story_title: 'All Together Now',
    story_body: 'Just like the love that holds your family together, this sweet set of sterling silver bangles stays linked with a heart. Both the bangles and the heart are hand-formed, and each bracelet of the bunch can be stamped with a name, date, or word up to 20 characters. Make it a keep-forever gift for a new mom, your own mom, or anyone else who has your heart. Handmade by Canela Lemoine in California.',
    maker_name: 'Edith Strickland',
    maker_location: 'Georgia',
    maker_quote: '',
    maker_description: 'Edith Strickland is an artist from Georgia who believes crafting is a great way for expression.',
    made_from: 'sterling silver, 14k Yellow Gold Fill Wire',
    measurements: 'Small / Medium: 2.5',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21249,
    made_in: "usa"
})

product40 = Product.create({ 
    title: 'Mothers Nursing Poncho', 
    description: 'Crafted from non-GMO cotton, this lightweight poncho is a must-pack for all your adventures with baby.', 
    price: 65,
    story_title: 'Private Dining',
    story_body: "For new moms, nursing in public can often be less of a bonding experience and more of an awkward dine and dash. Crafted from soft organic cotton, this lightweight poncho is a must-pack for all your adventures with baby. With a simple snap closure, covering up at brunch or between errands—wherever hunger hits—couldn't be easier. Made by workers receiving fair pay in India.",
    maker_name: 'Archie Tyler',
    maker_location: 'Hawaii',
    maker_quote: '',
    maker_description: 'Archie Tyler is an artist from Hawaii who believes crafting is a great way for expression.',
    made_from: 'recycled materials',
    measurements: "41' L x 27' W - One Size Fits Most",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21266,
    made_in: "usa"
})

product41 = Product.create({ 
    title: 'Convertible Travel Pillow Infinity Scarf', 
    description: 'Soft, warm, and stylish infinity scarf hides an inflatable pillow to make travel more comfortable.', 
    price: 38,
    story_title: 'Stylishly Sleepy',
    story_body: "Take a red-eye without getting literal when you wear this soft, warm, infinity scarf on the plane. Its stylish exterior hides a secret weapon: a U-shaped, zippered pocket around the neck that holds an inflatable travel pillow in place. Lightweight and compact, the interior pillow isn't noticeable until you use it. When you want to catch some shut-eye, unzip the pillow and blow a few puffs of air to inflate it. The soft, warm scarf will protect you from the chilly in-flight air, and the pillow will help you slip into sleepytime so you can arrive at your destination refreshed and well-rested. Available in black or grey. Made in Los Angeles, CA.",
    maker_name: 'Sue Wilson',
    maker_location: 'Idaho',
    maker_quote: '',
    maker_description: 'Sue Wilson is an artist from Idaho who believes crafting is a great way for expression.',
    made_from: '5% spandex, 95% cotton',
    measurements: "77' L x 15' W",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21250,
    made_in: "usa"
})

product42 = Product.create({ 
    title: '2 In 1 Convertible Backpack', 
    description: 'No need to choose between convenience and looks: this handsome backpack/crossbody bucket bag has both.', 
    price: 96,
    story_title: 'Zipper Tripper',
    story_body: 'With backpacks, one generally has to make a hard choice between convenience and looks. The zippers and compartments necessary for convenience make elegance difficult to achieve. This handsome backpack/crossbody bucket bag is the exception: its extra-large zippers are positioned for bold visual impact.',
    maker_name: 'Marjorie Fields',
    maker_location: 'Illinois',
    maker_quote: '',
    maker_description: 'Marjorie Fields is an artist from Illinois who loves crafting custom items.',
    made_from: 'polyeurethane',
    measurements: "11' L x 14' H x 6' W",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21267,
    made_in: "usa"
})

product43 = Product.create({ 
    title: 'Phone Charging Bracelet', 
    description: "So cool you'll forget it's a tool, this bracelet lets you make a battery pit stop without stopping.", 
    price: 149,
    story_title: 'Charge at Large',
    story_body: "Your nephew flew across five states to visit, and boy is he cute. Moments you want to capture: 987. The charge in your phone battery: 0. Luckily, you're wearing your Phone Charging Bracelet. With its lightweight, minimalist styling and polished metallic shine, it’s so cool you forgot it was a tool.",
    maker_name: 'Oliver Buchanan',
    maker_location: 'Indiana',
    maker_quote: '',
    maker_description: 'Oliver Buchanan is an artist from Indiana who loves crafting custom items.',
    made_from: 'stainless steel, lithium-ion battery, xenoy 6620u plastic, gold polish, silver polish',
    measurements: "3.5' L x 0.75' W x 2.75' H, Inner Circumference: 7.1'",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21251,
    made_in: "usa"
})

product44 = Product.create({ 
    title: 'Organic Cotton Travel Wrap', 
    description: "Made from non-GMO cotton, it's lightweight, soft, and a must-pack for all your adventures. Made in India", 
    price: 96,
    story_title: 'Snug Life',
    story_body: "What if doing good gave you the actual warm and fuzzies? This travel wrap makes it happen. Crafted from organic cotton by workers receiving fair pay, it's also a must-pack for all your adventures. A go-with-the-flow cut means wrapping up at the movie theater or on a flight—wherever you could use an extra layer—couldn't be easier. Handmade in India.",
    maker_name: 'Nora Collins',
    maker_location: 'Iowa',
    maker_quote: '',
    maker_description: 'Nora Collins is an artist from Iowa who loves crafting custom items.',
    made_from: '100% Organic Cotton',
    measurements: "41' L x 27' W - One Size Fits Most",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21268,
    made_in: "usa"
})

product45 = Product.create({ 
    title: 'Adventure Essentials Survival Kit', 
    description: 'The essential safety supplies inside a military grade aluminum LED flashlight keep adventurers prepared.', 
    price: 130,
    story_title: 'No Worries for Weekend Warriors',
    story_body: "On wilderness adventures, you want to be thinking, 'The Earth's magnificence is beyond human comprehension,' not 'Did I forget the matches?' This kit contains the safety supplies you need for short-term excursions, cleverly stashed in a military grade aluminum LED flashlight. The impeccably crafted items—including water purification tablets, a compass, a wire saw, reflective trail markers, and yes, waterproof matches—are packed in small canisters that fit perfectly into the flashlight tube. Chuck it in your bag or glove box, and be prepared...to never again be plagued by distracting worries in the wilderness. A handy, and maybe even lifesaving, gift for hikers and campers. Made in Canada.",
    maker_name: 'Krystal Ramos',
    maker_location: 'Kansas',
    maker_quote: '',
    maker_description: 'Krystal Ramos is an artist from Kansas who loves crafting custom items.',
    made_from: 'Aluminum',
    measurements: "9' L x 2' Dia",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21252,
    made_in: "usa"
})

product46 = Product.create({ 
    title: 'Compact Packable Travel Neck Pillow', 
    description: 'No matter the transportation or the destination, never compromise on coziness with this modern neck pillow.', 
    price: 60,
    story_title: 'On Zzz Go',
    story_body: "To all the roadtrip daydreamers and airplane nappers out there, this one's for you. No matter the transportation or the destination, never compromise on coziness with this modern neck pillow. The lightweight, stylish design wraps comfortably around your neck for top quality support and soft cushioning. Once you've completed your trip (or desk nap) the sleek wrap rolls up into a compact ball. It's basically the peanut butter to your TSA-approved jelly. Made in Spain.",
    maker_name: 'Jennifer Rose',
    maker_location: 'Kentucky',
    maker_quote: '',
    maker_description: 'Jennifer Rose is an artist from Kentucky who loves crafting custom items.',
    made_from: 'elastomer, viscose',
    measurements: "6.3' L x 4.9' W x 4.9' H",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21269,
    made_in: "usa"
})

product47 = Product.create({ 
    title: 'Traveler Rolling Tote', 
    description: 'Stand out in a sea of rectangle suitcases with this stylish bag designed for maximum organization.', 
    price: 225,
    story_title: 'Think Outside the Rectangle',
    story_body: "A plain rectangle suitcase would suffice if you were well... plain. But you like to stand out, and this luxury-handbag-on-wheels is more your style. The high-quality vegan leather has a deep interior compartment, and also features multiple exterior pockets: a tablet pocket, a smaller zippered pocket for quick-grab items, an interior removable laptop sleeve, and more secluded pockets inside for valuables (credit cards, passports, your phone). The handles take it from rolling suitcase to fashionable, everyday bag in a snap. A great gift for world travelers, or just the one who's always on-the-go, the design comes in sleek black or grey.",
    maker_name: 'Marshall Thornton',
    maker_location: 'Louisiana',
    maker_quote: '',
    maker_description: 'Marshall Thornton is an artist from Louisiana who loves crafting custom items.',
    made_from: 'polyurethane',
    measurements: "14.75' H (includes wheels) x 9.75' D x 16' L",
    care: '',
    notes: '',
    item_id: 21253,
    made_in: "usa"
})

product48 = Product.create({ 
    title: 'Net Travel Set', 
    description: 'This stylish, water-resistant travel set made of reclaimed netting protects your stuff and provides jobs.  Made in Cambodia', 
    price: 49,
    story_title: 'Fear No Spill',
    story_body: "You've reached your hotel, found your room, opened your suitcase... and your conditioner lost its cap en route. Bye-bye, best business blazer. Ta-ta, tablet. Safeguard your belongings in style with this water- and stain-resistant, three-piece travel set. Lightweight yet virtually indestructible, their touch of modern industrial chic is 100% authentic: the 'fabric' is netting remnants reclaimed from factories. Instead of being dumped into landfills, it's sewn into cases and pouches with a uniquely cool look.",
    maker_name: 'Forrest Parker',
    maker_location: 'Maine',
    maker_quote: '',
    maker_description: 'Forrest Parker is an artist from Maine who believes crafting is a great way for expression.',
    made_from: 'Repurposed industrial netting',
    measurements: "Includes zip case: 8' x 4.75', slim case: 9' x 4.75' x 4', and square pouch: 11.5' x 5' x 5'",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21270,
    made_in: "usa"
})

product49 = Product.create({ 
    title: "Womens Organizing Travel 4 Pack", 
    description: "Printed with images of what's inside, these travel bags keep your to-go essentials stylishly contained.", 
    price: 48,
    story_title: 'The Gift of Travel',
    story_body: "Travel is complicated enough without getting shoe schmutz on your dress shirt, or fishing around in the bottom of your luggage as you try to find your charging cords. But it gets a lot easier when you're using these stylish pouches from designer Jennifer Jansch. Inspired by the pleasure of unwrapping a gift, she created this set of handy travel bags, each printed with a bold, black-and-white image of its content and sealed with a grosgrain ribbon. Use them to pack your shoes, blow dryer, lingerie, and laundry, and everything you need will be neatly contained, untangled and right where you need it.",
    maker_name: 'Leland Kennedy',
    maker_location: 'Maryland',
    maker_quote: '',
    maker_description: 'Leland Kennedy is an artist from Maryland who believes crafting is a great way for expression.',
    made_from: 'grosgrain, cotton',
    measurements: "13' L x 14.5' W x 0.2' H",
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 21254,
    made_in: "usa"
})

product50 = Product.create({ 
    title: 'Perk Light Therapy Lamp', 
    description: 'This stylish light therapy lamp offers the same mood and concentration benefits as not-as-cool ones do.', 
    price: 245,
    story_title: 'No More Sad Desk Lamp',
    story_body: 'Style-wise, this therapy lamp is light-years beyond its bulky, clinical-looking cousins, yet it provides the same benefits. The dimmer-controlled bright white LED helps boost mood and concentration, and its modern design and warm oak wood add happy-making style to your desk. If we were scientists, we might explain circadian rhythms here. We re just design geeks, but we figure, to minimize SAD (Seasonal Affective Disorder), it can t hurt to avoid drab, right? Made in Vancouver, Canada.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'brass, LED light, oak, white corian',
    measurements: '8” L x 8” W x 12” H',
    care: 'Wipe with a dry cloth.',
    notes: 'Hardware included.',
    item_id: 34520,
    made_in: 'usa'
})
product51 = Product.create({ 
    title: 'Lake Topography Art Lazy Susan', 
    description: 'Your favorite family watering hole is topographically laser cut into this birch plywood server.', 
    price: 170,
    story_title: 'Homespun Memories',
    story_body: 'The pretty river near your grandparents house. The lake in the woods where you—shhh—skinny-dipped. The waves at your weekend hideaway, lapping beneath the dock. Your favorite watery heaven is topographically laser cut into this birch plywood lazy Susan, with lines tracing familiar roads, towns, and neighboring states. Topped with glass, it makes a sentimental gift for the family who lives for that summer sunset swim. Handmade in Harbor Springs, Michigan.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'glass, stain, birch plywood',
    measurements: '20 Diameter, 1 Height',
    care: '',
    notes: 'Hardware included.',
    item_id: 34537,
    made_in: 'usa'
})
product52 = Product.create({ 
    title: 'Half Pint Glass Creamer', 
    description: 'Serve milk, cream, and some playful high school nostalgia in this durable glass milk carton.', 
    price: 16,
    story_title: 'Hey, Half Pint!',
    story_body: 'A playful rendition of the classic mini milk carton, this glass creamer provides a nostalgic trip back to your high school cafeteria—minus the hormones working overtime on a dozen crushes at once. Made of durable chem lab beaker glass, it can go into the microwave, if you like your creamer heated. An A+ container for candy, nuts, or a few small blossoms, it also makes a fun gift for a hostess, or an old high school pal.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'glass',
    measurements: '3 L x 3.8 W x 4.4 H',
    care: 'Machine wash cold inside out; hang dry.',
    notes: '',
    item_id: 34554,
    made_in: 'usa'
})
product53 = Product.create({ 
    title: 'Easy Spread Butter Knife', 
    description: 'This handsome knife turns cold, hard butter into soft, sumptuous ribbons that won’t tear your toast.', 
    price: 20,
    story_title: 'Better Spreader',
    story_body: 'Effortlessly gliding across cold butter, this knife carves soft ribbons that spread gently, without tearing your toast. No more "softening" butter in the microwave only to have it melt, or biting into big slabs of it that refused to spread on your pancakes. Perfected by butter enthusiasts who prototyped a plethora of models, it does an equally beautiful job on both dairy and vegan versions. Plus, the cool, conversation-starting butter curls just might be a sensation at your next carb-y party. Dishwasher-safe stainless steel.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'stainless steel',
    measurements: '8 L x 1 W',
    care: 'Dampen a soft, lint free cloth with warm water or mild solution of dish detergent and water to remove dust and dirt from the frame or acrylic.',
    notes: '2-4 figures unframed 8x14 print 5-7 figures unframed 8x20 print 8-14 figures unframed 8x28 print',
    item_id: 34571,
    made_in: 'usa'
})
product54 = Product.create({ 
    title: 'Socks That Plant Trees', 
    description: 'Help plant trees and foster more healthy, happy communities with these special socks.', 
    price: 15,
    story_title: 'Growth Potential',
    story_body: 'Lets get right to the root of it: more trees = better lives. Thats why these subtly arboreal socks (i.e. featuring a beautiful shade of green and small tree symbol) were made. Each pair benefits the Trees for the Future organization, which works with 3,000 farming families across Sub-Saharan Africa to implement forest gardening programs—that means more nutritious food, sustainable practices that lessen the burden on women and children, and decreased pressure on forests since the families are more self-sufficient. Go ahead, get a pair of these and plant the seed for change. Made ethically in India with organic cotton.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'Organic Cotton, Elastane, Polyamide, Spandex',
    measurements: 'Small: Mens 4-8, Womens 5-9; Large: Mens sizes 8-13, Womens 9-14',
    care: 'Cover can be machine washed inside out on cold setting; hang dry.',
    notes: '',
    item_id: 34588,
    made_in: 'usa'
})
product55 = Product.create({ 
    title: 'Trevor Project Socks', 
    description: 'Support the Trevor Project and their work with the LGBTQ community with these rainbow-striped socks.', 
    price: 15,
    story_title: 'Best Foot Forward',
    story_body: 'Lin Manuel Miranda said it best—"Love is love is love is love is love." Show your support for the LGBTQ community with these stylish socks, made to benefit the Trevor Project. The playful rainbow stripes underline a serious cause: crisis intervention for LGBTQ teens with the aim of preventing suicide. The Trevor Project is making huge strides and helps so many young people every day, and now you can give their work an extra boost. Made ethically in India with organic cotton.',
    maker_name: 'Katie and Dustin Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'The Trevor Project is an American non-profit organization founded in 1998 focused on suicide prevention efforts among lesbian, gay, bisexual, transgender, and questioning (LGBTQ) youth.',
    made_from: 'Organic Cotton, Elastane, Polyamide, Spandex',
    measurements: 'Small: Mens 4-8, Womens 5-9; Large: Mens sizes 8-13, Womens 9-14',
    care: 'Machine wash and dryer safe, do not bleach.',
    notes: '',
    item_id: 34605,
    made_in: 'usa'
})
product56 = Product.create({ 
    title: 'Socks That Protect Elephants', 
    description: 'Protect these gentle giants from wildlife trafficking with socks that benefit Conservation International.', 
    price: 15,
    story_title: 'The Elephant in the Room',
    story_body: 'Some of the most intelligent and empathetic species in the animal kingdom, elephants are gentle giants that deserve our admiration and respect. Unfortunately, they dont always get it. Fight back against the illegal wildlife trafficking that targets these incredible animals with this pair of organic cotton, printed socks. Each pair gives back to Conservation International, an organization that works every day to keep elephants safe. Made ethically in India with organic cotton.',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: 'Organic Cotton, Polyamide, Spandex',
    measurements: 'Small: Mens 4-8, Womens 5-9; Large: Mens sizes 8-13, Womens 9-14',
    care: '',
    notes: 'Earl Grey black tea with bergamot',
    item_id: 34622,
    made_in: 'usa'
})
product57 = Product.create({ 
    title: 'Zodiac Chart', 
    description: 'These zodiac charts were made by “harnessing the power of the universe,” designer Archie says.', 
    price: 22,
    story_title: 'Follow Your Chart',
    story_body: 'How have you been, astrologically speaking? If you re not sure how to answer that question, these zodiac charts might be helpful to you—and if you are sure how to answer that question, they are probably right up your alley. Using a colorful, just-for-us color palette, designer Archie Archambault and astrologer Clare Kritter have created frame-worthy charts for each zodiac sign. Not only will the 11x11 prints look fabulous on your wall, but theyll also tell you how you interact with other signs, your ruling house, and more—all based on your birthday. Speaking of, a print would make a thoughtful gift for anyone on your list. Made in Oregon.',
    maker_name: 'Davidson Lewis',
    maker_location: 'Colorado',
    maker_quote: 'Boulder-based Davidson Lewis first high school job was working at a bike shop where he had an “ah-ha moment: he noticed all the bicycle inner tubes and other durable materials that were being discarded. As a passionate cyclist and outdoorsman, he started to think how he could do something good with these materials. Through an environmentally friendly design project, he developed a line of gear made of bicycle and truck inner tubes, old seat belts, and scrap fabrics. Davidsons line has since expanded to offer all types of fun, functional bags and accessories. In addition to upcycling bicycle tubes, he uses reclaimed tent material, climbing ropes, wetsuits, and yoga mats. All these materials are diverted from landfills while equipping you for your ride or adventure.',
    maker_description: '',
    made_from: 'Smooth 100 lb. White Cover Stock',
    measurements: '11 H x 11 W',
    care: '',
    notes: '',
    item_id: 34639,
    made_in: 'usa'
})
product58 = Product.create({ 
    title: 'Washable Lunch Bags', 
    description: 'These insulated linen and paper blend bags keep your lunch cool and your style cooler, in 3 neutral tones.', 
    price: 11,
    story_title: 'Adult Fare',
    story_body: 'Remember your grade school lunchbox, covered with cartoon characters? Sweeeeet...for a ten-year old. But now you need grown-up lunch bags like these to complement your professional style. The outside is a washable linen or paper blend in three sophisticated, neutral colorways. Inside, they’re fully insulated, with a removable internal compartment, also washable, for tucking in bowls and jars filled with whole grains, fresh fruits, and leafy gree—cough—fancy cookies (or is that just us?). Clip on the matching strap to carry them crossbody-style, and add the optional ice pack for extra cool. Choose Kraft Paper, Black Spatter Paper, or Linen.',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: 'linen, cotton, water, aluminium, cellulose, polyacralate',
    measurements: 'Ice Pack: 7 L x 4 W x 0.5 D',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34656,
    made_in: 'usa'
})
product59 = Product.create({ 
    title: 'Colorful Cat Salt & Pepper Shakers', 
    description: 'Cats aren’t known for sharing, but this handmade ceramic duo lives to serve savory flavor at your table.', 
    price: 30,
    story_title: 'Stalking Savory Flavor',
    story_body: 'Put these feline friends on the dining table without fear: the little cuties wont knock things off it or beg for human food. The duo s mission is to help you enjoy yours by serving the salt and pepper. Their excellent behavior proves these arent real kitties—though each has its own personality, plus ridiculously cute paws. Treat a cat person to the ceramic pair, and the housemates wont freak out about the latest "adoption." Catisfaction guaranteed! Choose ginger, gray tabby, or black and white. Set of two. Handmade in Sri Lanka.',
    maker_name: 'Bennie Rodriquez',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Bennie Rodriquez is an artist from Alabama who loves crafting custom items.',
    made_from: 'ceramic',
    measurements: '3.75, 3.5',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34673,
    made_in: 'usa'
})
product60 = Product.create({ 
    title: 'Prime Time Tv Grandparent Mugs', 
    description: 'These charming mugs bring a bit of nostalgia to your sipping ritual, from morning coffee to bedtime tea.', 
    price: 16,
    story_title: 'Pour On the Pop Culture',
    story_body: 'Whether youre inviting the people in your neighborhood or just want to say thank you for being a friend, taking time for a cuppa is always a good idea. These charming mugs bring a bit of nostalgia to your sipping ritual, from morning coffee to bedtime tea. Give one to the friend who likes both their beverages and their TV buddies to give them the warm and fuzzies.',
    maker_name: 'Connie Summers',
    maker_location: 'Alaska',
    maker_quote: '',
    maker_description: 'Connie Summers is an artist from Alaska who loves crafting custom items.',
    made_from: 'Clay, Decal Paper, Mineral Glaze',
    measurements: '4 Inches High, 10.20 Circumference, 3.25 Diameter; Capacity: 12 fl. oz.',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34690,
    made_in: 'usa'
})
product61 = Product.create({ 
    title: 'Smart Ukulele', 
    description: 'Strum up some fun easier than ever with this bluetooth-connected, app-guided ukulele.', 
    price: 159,
    story_title: 'Uke Got This',
    story_body: 'Don t give up on those rockstar dreams. Learn how to strum your favorite songs in no time at all thanks to this real ukulele and its smart technology. With bluetooth connectivity and a corresponding app, you can choose the chords or full songs you want to play and follow along on the light-up fret board. Not only will you pick up on the music faster, but you ll have a mental image saved for how the chords will look, which helps you build up your skills. The app also lets you easily record yourself and share with friends—we have a feeling they ll be looking for an encore performance.',
    maker_name: 'Mae Greer',
    maker_location: 'Arizona',
    maker_quote: '',
    maker_description: 'Mae Greer is an artist from Arizona who loves crafting custom items.',
    made_from: 'abs plastic, maple wood, Spruce wood, LED lights',
    measurements: '23 L',
    care: '',
    notes: 'Hardware included.',
    item_id: 34707,
    made_in: 'usa'
})
product62 = Product.create({ 
    title: 'Natural Foot Brush And Salve Set', 
    description: 'To exfoliate and soothe hard-working feet, scrub with coconut fiber brush, then massage with foot salve.', 
    price: 28,
    story_title: 'A Treat for Both Feet',
    story_body: 'At the end of a long day, this brush and balm set is the best way to reward your feet for their hard work. First, scrub them with the invigorating coconut fiber brush to exfoliate dry skin and rev up circulation. Out with aches and fatigue. In with a tingly glow. Next, massage in the luxurious foot salve, especially on dry, cracked heels. Its natural emollients and essential oils make for a soothing, heavenly treat. Brush handmade in Sri Lanka. Foot salve handmade in Canada.',
    maker_name: 'Josefina Lyons',
    maker_location: 'Arkansas',
    maker_quote: '',
    maker_description: 'Josefina Lyons is an artist from Arkansas who loves crafting custom items.',
    made_from: 'Cotton, Wood, Coconut Fibre',
    measurements: 'Brush: 2 L x 1.5 W x 3 H',
    care: '',
    notes: 'Hardware included.',
    item_id: 34724,
    made_in: 'usa'
})
product63 = Product.create({ 
    title: 'Natural Back Scrubber', 
    description: 'Scrub-a-dub-dub your hard-to-reach back with natural fiber brushes that exfoliate and boost circulation.', 
    price: 34,
    story_title: 'It’s Got Your Back',
    story_body: 'When you see “skin care,” you think “face,” right? But the skin on your back needs love, too. Problem is, it’s hard to reach, unless you happen to be a contortionist. These all-natural brushes make it easy: just hold the handles and pull them back and forth. Give yourself a delicious back massage while exfoliating and revving up your circulation, and walk out of the tub or shower glowing with good feeling. The softer brush is Bangladeshi jute, the most popular natural fiber after cotton, and the medium-stiff one is Kenyan sisal that grows all year and doesn’t need fertilizer or pesticides. Both are handmade in Sri Lanka by men and women protected by the ethical regulations set by the International Labour Organization.',
    maker_name: 'Ralph Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Ralph Watts is an artist from California who loves crafting custom items.',
    made_from: 'Cotton, Wood, Sisal Fibre',
    measurements: '19 L x 2 W x 2 H',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34741,
    made_in: 'usa'
})
product64 = Product.create({ 
    title: 'Sunflower Garden Grow Kit', 
    description: 'Grow a dramatic mix of sunflowers with this easy DIY kit that includes six different heirloom varieties.', 
    price: 12,
    story_title: 'Sunny Seedlings',
    story_body: 'The drama queens of the garden, sunflowers visually dominate it. So much impact, for so little work! This kit includes everything you need to start your own sunflower patch, including seeds for six heirloom varieties in an incredible range of colors, shapes, and heights. Among the easiest flowers to cultivate from seed, sunflowers are especially exciting as a child s first gardening project, because they grow so fast and get so tall. (The Classic Mammoth, included, reaches 9-12 feet, with enormous blossoms.) They re the closest thing we know to planting pure happiness. Assembled in Covington, Georgia.',
    maker_name: 'Jordan Mcbride',
    maker_location: 'Colorado',
    maker_quote: '',
    maker_description: 'Jordan Mcbride is an artist from Colorado who loves crafting custom items.',
    made_from: 'seeds, birch, recycled paper, peat',
    measurements: '',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34758,
    made_in: 'usa'
})
product65 = Product.create({ 
    title: 'Spring Garden Birds', 
    description: 'Penguin wobbles when the wind blows, and flamingo’s wings and head move in the breeze.', 
    price: 95,
    story_title: 'Shake a Tail Feather',
    story_body: 'Spring: It just makes you want to bounce, sway, do a little dance. These playfully modern birds certainly think so, and they re built to bring year-round fun to your outdoor space. Penguin wobbles when the wind blows, and flamingo s wings and head move in the breeze. Both are made from powder-coated steel to withstand the elements, so theyll look their best when the weather inspires a garden dance party again.',
    maker_name: 'Angelina Jacobs',
    maker_location: 'Connecticut',
    maker_quote: '',
    maker_description: 'Angelina Jacobs is an artist from Connecticut who loves crafting custom items.',
    made_from: '18 gauge steel',
    measurements: 'Including stake: Flamingo: 38 H x 16 W; Penguin 39 H x 12 W',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34775,
    made_in: 'usa'
})
product66 = Product.create({ 
    title: 'Hanging Butterfly Oasis', 
    description: 'Shaped like a nectar droplet, this modern feeder will make your garden the new hot spot for butterfly hangs.', 
    price: 57,
    story_title: 'Good to the Last Drop',
    story_body: 'Hoping for more butterfly visitors in the garden? Dont just wing it—use this intelligently designed feeder to make your backyard their latest favorite hangout. Shaped like a nectar droplet and made in butterflies favorite color (yep, turns out theyre really into yellow), this feeder is not only effective, but super simple to use. Just mix the included nectar powder with a bit of water, pour onto the sponge, close it up, and let the garden party begin. Made in Finland.',
    maker_name: 'Genevieve Thomas',
    maker_location: 'Delaware',
    maker_quote: '',
    maker_description: 'Genevieve Thomas is an artist from Delaware who loves crafting custom items.',
    made_from: 'polyurethane foam, polylactic acid, nectar',
    measurements: '11.6 H x 4.1 dia.',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34792,
    made_in: 'usa'
})
product67 = Product.create({ 
    title: 'Sangria Spice Blend', 
    description: 'Dreaming of summers in Spain? This blend brings some pre- or post-siesta fun to your next backyard party.', 
    price: 20,
    story_title: 'Hola, Delicious',
    story_body: 'Dreaming of summers on the coast of Spain? Bring a little of that pre- or post-siesta fun to your next backyard party with this sangria spice blend. Fill each of the three muslin spice bags with rich, aromatic spices like cinnamon sticks and star anise. A recipe is included, but here s the gist: steep the spices, add your favorite red wine and fruit, chill overnight, and voila— up to three gallons of fresh, flavorful sangria. We ll bring the tapas. Hand-packaged in Charleston, South Carolina.',
    maker_name: 'Wendell Mcgee',
    maker_location: 'Florida',
    maker_quote: '',
    maker_description: 'Wendell Mcgee is an artist from Florida who believes crafting is a great way for expression.',
    made_from: '',
    measurements: '3 oz.',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34809,
    made_in: 'usa'
})
product68 = Product.create({ 
    title: 'All In One Cast Iron Grill', 
    description: 'This nine-piece wonder wears a lot of chef hats, from smoker to stock pot and everything in between.', 
    price: 120,
    story_title: 'A New Kind of Cookout',
    story_body: 'Nobody told this grill it could only cook on a grate. Wok, smoker, skillet, braiser, roaster, deep fryer, slow cooker, stock pot—the cast iron wonder wears a lot of chef hats. Plus, it packs together for easier transport, so you can have pancakes on the patio, chili at the tailgate, and stir fry with friends under the stars.',
    maker_name: 'Edith Strickland',
    maker_location: 'Georgia',
    maker_quote: '',
    maker_description: 'Edith Strickland is an artist from Georgia who believes crafting is a great way for expression.',
    made_from: 'cast iron, steel',
    measurements: 'Wok: 13 Dia',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34826,
    made_in: 'usa'
})
product69 = Product.create({ 
    title: 'Color Block Water Bottle', 
    description: 'Brilliantly fun, its also made with quality materials, a vacuum-sealed lid, and double-walled insulation.', 
    price: 35,
    story_title: 'Color Us Hydrated',
    story_body: 'Modern sculpture, game piece, abstract ice cream cone. Our team members had lots of ideas about what this water bottle looked like. What we could all agree on: Its brilliantly fun. Add a little joy to daily water drinking and also feel good about these features: high-grade stainless steel, vacuum-sealed lid, and double-walled insulation that keeps liquids cold (24 hours) or hot (12 hours). Designed in London. Made in China.',
    maker_name: 'Archie Tyler',
    maker_location: 'Hawaii',
    maker_quote: '',
    maker_description: 'Archie Tyler is an artist from Hawaii who believes crafting is a great way for expression.',
    made_from: 'stainless steel',
    measurements: '9 H x 3.3 Dia',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34843,
    made_in: 'usa'
})
product70 = Product.create({ 
    title: 'Mexican Sweet Tooth Box', 
    description: 'Savor a snack of high-protein amaranth mixed with honey, nuts, and seeds.', 
    price: 35,
    story_title: 'Little Balls of Happiness',
    story_body: 'When you think candy, you probably dont think puffed amaranth. Let us change your mind. In Aztec times, a paste made from the protein-rich seed and agave—a sweet, thick nectar—was used to craft ceremonial sculptures. In modern Mexico, its mixed with honey, nuts, and other seeds to form alegría, a traditional sweet whose name means "happiness." (Aww.) Here, nine nutty, satisfying servings are housed in a giftable tin box, hand-pressed with folk art decorations that date back to the 1500s. Once the candy feasting is done, it make a beautiful jewelry or keepsake box. Handmade in Mexico.',
    maker_name: 'Sue Wilson',
    maker_location: 'Idaho',
    maker_quote: '',
    maker_description: 'Sue Wilson is an artist from Idaho who believes crafting is a great way for expression.',
    made_from: 'tin and candy',
    measurements: 'Tin: 6.5 L x 6.5 W x 2.2 H',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34860,
    made_in: 'usa'
})
product71 = Product.create({ 
    title: 'The Moonshiner Liquor Dispenser', 
    description: 'Fred Conlon takes garage finds like wrenches and valves to build this captivating party guest.', 
    price: 350,
    story_title: 'Generous With Pours',
    story_body: 'Meet Moonshiner. He s come from the future, where robots and humans happily sip adult beverages together. So feel good inviting this captivating guest to your next party. Fred Conlon takes garage finds like wrenches and valves to build him, with two valve-operated dispensers for wine or liquor bottles and a shot glass holder. Our favorite detail: A decorative flask  backpack,  because that s our kind of rocket fuel. Handmade in Utah.',
    maker_name: 'Marjorie Fields',
    maker_location: 'Illinois',
    maker_quote: '',
    maker_description: 'Marjorie Fields is an artist from Illinois who loves crafting custom items.',
    made_from: 'brass, stainless steel, steel, powder coat finish',
    measurements: '24 tall x 118 wide x 18 deep',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34877,
    made_in: 'usa'
})
product72 = Product.create({ 
    title: 'Zen Llama Garden Sculpture', 
    description: 'This little llama’s feeling peaceful, and hes ready to add calm and whimsy to your garden.', 
    price: 35,
    story_title: 'No-Drama Llama',
    story_body: 'Crafted from durable sealed cement, this sweet sculptures designed to add calm and whimsy to your garden in equal measure. His meditative pose, cozy robe, and warm presence make him the perfect comrade for critters passing through. (Appropriate, since he represents companionship.) Handmade in California.',
    maker_name: 'Oliver Buchanan',
    maker_location: 'Indiana',
    maker_quote: '',
    maker_description: 'Oliver Buchanan is an artist from Indiana who loves crafting custom items.',
    made_from: 'solid cast-stone',
    measurements: 'Standard: 4.5 L x 5.5 W x 5.5 H, 4.5lbs; Large: 8 L x 9 W x 8.5 H, 15lbs.',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34894,
    made_in: 'usa'
})
product73 = Product.create({ 
    title: 'Botanical Infused Simple Syrups', 
    description: 'Moira Gilbert and Laura Menz blend herbs, spices, and flowers to maker their flavorful small-batch mixers.', 
    price: 45,
    story_title: 'Parlor Tricks',
    story_body: 'What are the requirements to mix with these craft cocktail syrups? You don t have to be a hipster bartender to make a fantastic drink at home. Moira Gilbert and Laura Menz s low-sugar, citrus-based botanical syrup sets are all you need to make quick, delectable cocktails and mocktails. The handmade herb, spice, and flower blends pair perfectly with your spirit of choice. Each has a uniquely wonderful fragrance and an amazingly complex flavor profile that s sweet, sour, and bitter all at once. Keep some for yourself, and save some as gifts for your favorite party hosts (twirly mustache or not). Choose the Trio for Rum/Whiskey or the Trio for Tequila/Mezcal. Made in southern California with local organic citrus fruit and organic botanicals from northern California.',
    maker_name: 'Nora Collins',
    maker_location: 'Iowa',
    maker_quote: '',
    maker_description: 'Nora Collins is an artist from Iowa who loves crafting custom items.',
    made_from: '',
    measurements: 'Set of three 8 oz bottles',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 34911,
    made_in: 'usa'
})
product74 = Product.create({ 
    title: 'Rescue Pet Dish Towel', 
    description: 'Fun from head to tail, it features a playful poem celebrating the special gift that is a rescue pet.', 
    price: 16,
    story_title: 'The Cutest Cleanup',
    story_body: 'Your four-legged family member makes you so proud, and this colorful kitchen towel proves it. Fun from head to tail, its decorated with "muddy" life-size paws and a playful acrostic poem celebrating the special gift that is a rescue pet. Our favorite detail: Each paw print is unique, just like the sweet furball you brought home. Poems by Martin Geller. Made from cotton in Brooklyn, New York. ',
    maker_name: 'Krystal Ramos',
    maker_location: 'Kansas',
    maker_quote: '',
    maker_description: 'Krystal Ramos is an artist from Kansas who loves crafting custom items.',
    made_from: 'cotton',
    measurements: '29 L x 19 W',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34928,
    made_in: 'usa'
})
product75 = Product.create({ 
    title: 'Frequent Flyer Rocks Glasses', 
    description: 'Toast air travels romance with these glasses, etched with terminals and runways of five US airports.', 
    price: 16,
    story_title: 'Now Boarding',
    story_body: 'Stranded by a blizzard at OHare, Ms. Negroni eased your shyness while you chatted with interesting strangers. Then there was the Old-Fashioned at LAX youll never forget, because THE movie star walked by, mid-sip. Back at home, pour yourself one in this rocks glass and slip into that anything-can-happen air travel reverie. Created by Boston-based designer Brian Johnson, the etched glasses feature terminals and runways of five major US airports. You wont have to slog through security, but you may feel like taking your shoes off anyway. Choose JFK, LGA, ORD, LAX, or BOS. Glasses made in Ohio and etched in New Hampshire.',
    maker_name: 'Jennifer Rose',
    maker_location: 'Kentucky',
    maker_quote: '',
    maker_description: 'Jennifer Rose is an artist from Kentucky who loves crafting custom items.',
    made_from: 'glass',
    measurements: '3.5 H x 3.25 diameter; 11 fl. oz. capacity',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34945,
    made_in: 'usa'
})
product76 = Product.create({ 
    title: 'Wine Infused Dessert Sauces', 
    description: 'Made of spices, whole fruits, and zinfandel or merlot, these sauces let you drizzle wine on anything.', 
    price: 17,
    story_title: 'Notes of Fruit and Spice',
    story_body: 'Drinks or dessert? You can have both... for breakfast (or whenever youre feeling saucy). These small-batch sauces dont contain alcohol, but add a subtle, fruity wine flavor to everything from your morning yogurt to your after-dinner cheesecake. Made with spices, whole fruits, and Sonoma Country wines, theyre a tasty way to add zinfandel (and dark cherry) or merlot (and blackberry) to your favorite foods. Made in California.',
    maker_name: 'Marshall Thornton',
    maker_location: 'Louisiana',
    maker_quote: '',
    maker_description: 'Marshall Thornton is an artist from Louisiana who loves crafting custom items.',
    made_from: '',
    measurements: '9 oz. jar',
    care: '',
    notes: 'Hardware included.',
    item_id: 34962,
    made_in: 'usa'
})
product77 = Product.create({ 
    title: 'Handcrafted Caramels Sampler Box', 
    description: 'Kate and Jason McCrea use natural ingredients to make their caramels in traditional and unexpected flavors.', 
    price: 30,
    story_title: 'Buttery Chews',
    story_body: 'Kate and Jason McCrea slow cook their luxe, buttery caramel candy in copper kettles, using just a handful of natural ingredients to create distinct, clean flavors. Keeping it local whenever possible, they source organic maple syrup from New Hampshire, sea salt from Maine, and cream from a nearby Massachusetts dairy. Some ingredients travel further—black sea salt from Hawaii, smoky Ardmore whisky from Scotland. This set of six flavors—like rosemary truffle sea salt and tapped maple—has five pieces per package. Give them to your hostess so everyone can choose their favorite. Handmade in Massachusetts.',
    maker_name: 'Forrest Parker',
    maker_location: 'Maine',
    maker_quote: '',
    maker_description: 'Forrest Parker is an artist from Maine who believes crafting is a great way for expression.',
    made_from: '',
    measurements: 'Set of 6 flavors: 1.4 oz each',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34979,
    made_in: 'usa'
})
product78 = Product.create({ 
    title: 'Open Up Your Chakras Mug', 
    description: 'Celebrate movement, mindfulness, and coffee with Joanne Stratakos handmade chakra mug.', 
    price: 42,
    story_title: 'Root to Rise',
    story_body: 'Nothing gets your mind and body ready for the day quite like morning yoga, but a big cup of somethin caffeinated is a close second. Celebrate movement, mindfulness, and coffee with Joanne Stratakos handmade mug. Painted with symbols for each of the seven chakras, or energy centers, its a charming reminder to seek balance in everyday life. (And to seek your favorite roast often.) Handmade in Pennsylvania.',
    maker_name: 'Leland Kennedy',
    maker_location: 'Maryland',
    maker_quote: '',
    maker_description: 'Leland Kennedy is an artist from Maryland who believes crafting is a great way for expression.',
    made_from: 'stoneware clay, lead free glazes',
    measurements: '3.75 diameter x 4.5 H (5.5 L with handle); 16 fl. oz. capacity, Weight: approx. 16 oz.',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 34996,
    made_in: 'usa'
})
product79 = Product.create({ 
    title: 'Tea Maker To Go', 
    description: 'This ingenious filtered mug lets on-the-go tea lovers steep loose-leaf brews just the way they like them.', 
    price: 35,
    story_title: 'Treats Leaves Right',
    story_body: 'This ingenious mug gives on-the-go tea lovers the convenience of tea bags, with loose leaf taste. Choose the steeping mode thats best for the tea youre using. For a controlled infusion, put the tea leaves in the lids strainer compartment. For continuous infusion, drop them directly into the mug. Double-walled stainless steel insulation maintains the contents temperature—hot or cold—for about six hours. Leak-free, you can pack it in a pocket, purse, or backpack, and never have to compromise on your cuppa.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'stainless steel, polypropylene, ABS plastic',
    measurements: 'Capacity: 12 fl oz.',
    care: 'Wipe with a dry cloth.',
    notes: 'Hardware included.',
    item_id: 35013,
    made_in: 'usa'
})
product80 = Product.create({ 
    title: 'Brick Touch Speaker', 
    description: 'Amplify your tunes without plugging in your phone thanks to this wire-free speaker.', 
    price: 35,
    story_title: 'Touch and Go',
    story_body: 'No adaptors. No bluetooth pairing. No frustration. Just music. Simply lay your phone on top of this stylish portable speaker and thanks to technology, the tunes will play loud and proud. Switch phones and playlists easily at a party, and doubly impress your guests thanks to the speaker s smooth wooden look. It ll keep the jams flowing for 6-8 hours once it s charged up via USB—or in other words, it can totally hang. Made in China.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'plastic, wood',
    measurements: '5.5 L x 3 W x 1.75H',
    care: '',
    notes: 'Hardware included.',
    item_id: 35030,
    made_in: 'usa'
})
product81 = Product.create({ 
    title: 'Dog Spirit Single Glasses', 
    description: 'Dog lovers will beg for this fun yet sophisticated glass featuring their breed’s name and likeness.', 
    price: 16,
    story_title: 'Sit. Stay. Sip!',
    story_body: 'In the mood for a single malt bourbone? Or maybe a refreshing Arnold Pawlmer? Whatever you re drinking, dog lovers will beg for this fun yet sophisticated glass that captures their breed s spirit. Etched with the breed name and adorable likeness, it s perfect for the pal who s teaching their pooch how to "cheers!". Made in the US.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'Glass',
    measurements: '3.4 H x 3.1 diameter; 14 fl. oz. capacity',
    care: 'Machine wash cold inside out; hang dry.',
    notes: '',
    item_id: 35047,
    made_in: 'usa'
})
product82 = Product.create({ 
    title: 'Pedigree Poem Custom Photo Pillows', 
    description: 'Fun from head to tail, it features your pet and a poem celebrating the special traits of their breed.', 
    price: 100,
    story_title: 'The Cutest Decor',
    story_body: 'Your four-legged family member reigns over the house, and this regal personalized pillow proves it. Fun from head to tail, it has a photo of your pup on one side and an ode to their breed s special traits on the other. Our favorite detail: the "Gotcha!" or birth date in the corner, because we can t imagine life without our fetching furball. Poems by Martin Geller. Made from cotton in Brooklyn, New York.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'cotton canvas, synthetic down',
    measurements: '16 Sq.',
    care: 'Dampen a soft, lint free cloth with warm water or mild solution of dish detergent and water to remove dust and dirt from the frame or acrylic.',
    notes: '2-4 figures unframed 8x14 print 5-7 figures unframed 8x20 print 8-14 figures unframed 8x28 print',
    item_id: 35064,
    made_in: 'usa'
})
product83 = Product.create({ 
    title: 'Musical Spoon', 
    description: 'Here’s the scoop: don’t play with your food, play with your spoons.', 
    price: 30,
    story_title: 'A Different Tune',
    story_body: 'Are you the big spoon or the little spoon? What about…the musical spoon? Leave it to the Canadians to come up with a wholesome way to play with utensils. Musical spoons have been played traditionally for centuries, and have become embedded in French Canadian culture over time—you ll hear them in folk music, they re brought out at parties or during festivals, and are often given as gifts. Quebec City local Richard Cyr has been handcrafting them since 1997 using only the finest Canadian maple, hoping to spread their ear-pleasing tones and the carefree fun that comes along with them all over the world. A fun find for newbies and professional musicians alike. Handmade in Canada.',
    maker_name: 'Patricia Carlin',
    maker_location: 'Pennsylvania',
    maker_quote: '“I like to keep things pretty simple. I focus on warmth, humor, and emotion.',
    maker_description: 'Patricia Carlin believes that a small sketch has the power to tell a story without language. She started out as an art director in Philadelphia, selling everything from potato chips to financial products. In 2001, a friend wanted help launching a glassware business, so Patricia designed and wrote copy for several products for the new venture. Patricia has explored many techniques in her illustration, but simple line drawing appeals to her most. For me, paring things down to their simplest essence is always the best way to understand them, she says. ',
    made_from: 'maple wood',
    measurements: '1.5 L x 1.5 W x 8 H',
    care: 'Cover can be machine washed inside out on cold setting; hang dry.',
    notes: '',
    item_id: 35081,
    made_in: 'usa'
})
product84 = Product.create({ 
    title: 'Love The Wine You Are With Dish Towel', 
    description: 'Jodi Kostelnik designed this cheeky dish towel, inspired by sharing good times with friends over a bottle.', 
    price: 18,
    story_title: 'Soul Grape',
    story_body: 'You know how the song goes. But whether or not you re with the one you love, wine is always good company. Jodi Kostelnik designed this cheeky dish towel, inspired by sharing good times with friends over a bottle. Give one to the host who s always there with a generous pour—you can even use it instead of a paper wine gift bag. How s that for a little green with your red? Designed and packaged in DC. Printed on 100% cotton in Wisconsin.',
    maker_name: 'Katie and Dustin Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Katie and Dustin Watts have enjoyed tea since they were kids. The two met in Washington D.C. and discovered a mutual passion for the culture surrounding tea on their first date. Over time, Katie started blending tea and Dustin was often found cooking with unique spice blends. Now, they make healthy, tasty products that take cues from the American cocktail, Asia’s ancient tea tradition, and European cafes and spirits. Katie and Dustin believe that nature knows best when it comes to flavor, digging deep into the botanical world for ingredients.',
    made_from: 'water-based ink, 100% unbleached cotton',
    measurements: '26 L x 24 W',
    care: 'Stainless steel straws are dishwasher safe.',
    notes: '',
    item_id: 35098,
    made_in: 'usa'
})
product85 = Product.create({ 
    title: 'Anatomy Of A Cheese Plate', 
    description: 'The cheeky yet helpful illustration is inspired by the artist’s love of entertaining at home.', 
    price: 18,
    story_title: 'Just Add Water Crackers',
    story_body: 'Couldn t tell you where our spleen is, but the anatomy of a cheese plate? We have that down to a science. So does Jodi Kostelnik: She designed this cheeky (yet helpful dish towel). The illustration is inspired by her love of entertaining, and it highlights everything you need for a successful fromage experience, from "something sweet" to "share and enjoy." Give one to the host who knows their nutty pecorinos from their stinky taleggios— you can even use it to wrap up a lovely serving board. How s that for a little green with your blue? Designed and packaged in DC. Printed on 100% cotton in Wisconsin.',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: 'water-based ink, 100% unbleached cotton',
    measurements: '26 L x 24 W',
    care: '',
    notes: 'Earl Grey black tea with bergamot',
    item_id: 35115,
    made_in: 'usa'
})
product86 = Product.create({ 
    title: 'Wearable Metronome', 
    description: 'This wearable, vibrating, silent metronome helps you keep time without that distracting tick-tock sound.', 
    price: 99,
    story_title: 'Feel the Beat',
    story_body: 'Let the distracting tick-tock metronomes of the past stay there—there s a new, more intuitive option. Now, you can literally feel the beat. This modern update is powered by vibrations seven times more powerful than the average smart phone, and is made to wear wherever s most comfortable for you—around your wrist, upper arm, or ankle—so that you can keep time based on its silent pulsations. Simply turn the outer wheel to adjust the tempo and twist the control to change songs in your rhythm library. You can even synch up with your bandmates, so get ready to rock out—more precisely than ever.',
    maker_name: 'Davidson Lewis',
    maker_location: 'Colorado',
    maker_quote: 'Boulder-based Davidson Lewis first high school job was working at a bike shop where he had an “ah-ha moment: he noticed all the bicycle inner tubes and other durable materials that were being discarded. As a passionate cyclist and outdoorsman, he started to think how he could do something good with these materials. Through an environmentally friendly design project, he developed a line of gear made of bicycle and truck inner tubes, old seat belts, and scrap fabrics. Davidsons line has since expanded to offer all types of fun, functional bags and accessories. In addition to upcycling bicycle tubes, he uses reclaimed tent material, climbing ropes, wetsuits, and yoga mats. All these materials are diverted from landfills while equipping you for your ride or adventure.',
    maker_description: '',
    made_from: 'silicone, polycarbonate plastic, Lithium Batteries',
    measurements: 'Face: 2 Dia. Band 10.5 L x 1 W',
    care: '',
    notes: '',
    item_id: 35132,
    made_in: 'usa'
})
product87 = Product.create({ 
    title: 'My Outdoor Alphabet Screen Print', 
    description: 'The ABC’s of outdoor activities, from the fun (U is for Underwear) to the fundamental (G is for Gear).', 
    price: 30,
    story_title: 'W is for Wide Open Spaces',
    story_body: 'Seth Neilson s cheerful alphabet prints were born out of a desire to connect his three greatest joys: his children, the outdoors, and illustration. Each is an A to Z snapshot of a beloved outdoor activity, from the fun (W is for Whistle) to the fundamental (G is for Gear). Give one to the kid or kid at heart whose first language is adventure. Screen printed in Montana.',
    maker_name: '',
    maker_location: 'California',
    maker_quote: '',
    maker_description: '',
    made_from: 'paper, ink',
    measurements: '24 H x 18 W',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35149,
    made_in: 'usa'
})
product88 = Product.create({ 
    title: 'Boot Rescue And Shoe Rescue Bundle', 
    description: 'With this all-natural kit, extend the life of shoes and boots by removing salt and grime asap, on the go.', 
    price: 18,
    story_title: 'To Preserve and Protect',
    story_body: 'We know we re not supposed to love things, but when it comes to shoes and boots, we can t help it. The secret to long, happy relationships is simple: protect them. Keep these individually wrapped essential oil wipes handy so you can remove salt, grime, and stains asap, before they have a chance to do any damage. Stash some in your desk, glove compartment, and suitcase. Includes cleaning cloth. Designed in Canada.',
    maker_name: 'Bennie Rodriquez',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Bennie Rodriquez is an artist from Alabama who loves crafting custom items.',
    made_from: 'moist, cloth wipes',
    measurements: '',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35166,
    made_in: 'usa'
})
product89 = Product.create({ 
    title: 'Cityscape Cufflinks', 
    description: 'Celebrate the city that has your heart by wearing it on your sleeve.', 
    price: 125,
    story_title: 'Style and the City',
    story_body: 'Celebrate the city that has your heart by wearing it on your sleeve. When Ola Shekhtman couldn t find jewelry featuring the buildings and landmarks she wanted to remember, she made her own. "During my life, I traveled a lot and always wanted to keep my impressions from significant moments with me," she says. Cast in sterling silver, the details on these cufflinks will remind you of the place you love. Made in Erlanger, Kentucky.',
    maker_name: 'Connie Summers',
    maker_location: 'Alaska',
    maker_quote: '',
    maker_description: 'Connie Summers is an artist from Alaska who loves crafting custom items.',
    made_from: '.925 sterling silver',
    measurements: '3/4 diameter',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 35183,
    made_in: 'usa'
})
product90 = Product.create({ 
    title: 'Singing Egg Timer', 
    description: 'Boil this talented egg with the fresh ones and it sings at each level of doneness: soft, medium, and hard.', 
    price: 20,
    story_title: 'A Very Good Egg',
    story_body: 'It looks, feels, and boils like an egg—but unlike an egg, it sings. Put this cheerful gadget in the water with fresh eggs and turn up the heat. When you hear the first tune, they re soft boiled. The second means medium-cooked, and the third, hard-boiled. No more watching for the pot to boil or minding a timer, thanks to this crazy musical egg that puts the "fun" in "functional." Made in Germany.',
    maker_name: 'Mae Greer',
    maker_location: 'Arizona',
    maker_quote: '',
    maker_description: 'Mae Greer is an artist from Arizona who loves crafting custom items.',
    made_from: 'polyethersulfone',
    measurements: '2 H x 1.8 Dia.',
    care: '',
    notes: 'Hardware included.',
    item_id: 35200,
    made_in: 'usa'
})
product91 = Product.create({ 
    title: 'Perfect Packed Lunch Box', 
    description: 'This high design, bamboo bento box update holds leak-proof, modular containers for flexible meal options.', 
    price: 69,
    story_title: 'Elevated Munching',
    story_body: 'That jumble of plastic containers you carry your lunch in? Toss em in the donate pile, because this intelligently designed system is taking over. Traditional bento boxes have fixed, open compartments. The elegant update has leak-proof containers, stainless steel cutlery, and an integrated silicone eating mat. The accompanying app is filled with recipes by professional chefs and nutritionists, tailored to fit a broad range of diets and tastes. All that lunchspiration will have you eating healthy, portion-controlled meals on the daily. Designed in Los Angeles, California. Made in China.',
    maker_name: 'Josefina Lyons',
    maker_location: 'Arkansas',
    maker_quote: '',
    maker_description: 'Josefina Lyons is an artist from Arkansas who loves crafting custom items.',
    made_from: 'cotton, bamboo, bpa-free plastic',
    measurements: '9.7 L x 7.4 W x 2.2 D',
    care: '',
    notes: 'Hardware included.',
    item_id: 35217,
    made_in: 'usa'
})
product92 = Product.create({ 
    title: 'Home Cleansing Ritual Kit', 
    description: 'Keep your home free of less-than-friendly energies using these four cleansing rituals.', 
    price: 50,
    story_title: 'Clear The Air',
    story_body: 'We re only here for the good vibes—how about you? Keep your home free of less-than-friendly energies with this super thorough kit. Using four different rituals believed by some to bring cleansing energy, you can lose the bad juju after a tiff with your partner or encourage a fresh start when you move into a new place. Or simply use it to add a little aromatherapy to your daily routine. Includes cleansing incense with charcoal tablets, black salt to protect against negativity, Four Thieves vinegar (a salve against bad energy since medieval times), a smoky quartz crystal, peace incense, and instructions on how to use em all. Packaged in a gift-able box, it also makes a truly magical housewarming gift. Handmade in Texas.',
    maker_name: 'Ralph Watts',
    maker_location: 'California',
    maker_quote: '',
    maker_description: 'Ralph Watts is an artist from California who loves crafting custom items.',
    made_from: 'smoky quartz, vinegar, incense, charcoal, black salt',
    measurements: '3.5 L x 3.5 W x 5.5 H',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35234,
    made_in: 'usa'
})
product93 = Product.create({ 
    title: 'History Of Cannabis As Medicine Print', 
    description: 'A piece of stand-out wall art any plant buff or tasteful toker will want to bake into their decor.', 
    price: 30,
    story_title: 'High Design',
    story_body: 'If Chinese Emperor Fu Hsi were alive today, he d probably have his medical marijuana card. In 2900 BCE, history says, he referenced cannabis as a popular medicine. Charles McElroy s beautifully designed print starts here, and ends in 2016 with modern medicine getting the green light for research—that s 5,000 years of cannabis history. It s printed on recycled archival paper stock using an ultra high-quality press. The result is a piece of stand-out wall art any plant buff or tasteful toker will want to bake into their decor. Made in Tennessee.',
    maker_name: 'Jordan Mcbride',
    maker_location: 'Colorado',
    maker_quote: '',
    maker_description: 'Jordan Mcbride is an artist from Colorado who loves crafting custom items.',
    made_from: '100# Uncoated Recycled Paper Stock',
    measurements: '24 H x 18 W',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35251,
    made_in: 'usa'
})
product94 = Product.create({ 
    title: 'Corn Stripper', 
    description: 'With a simple twist, the stainless steel knife in this tool strips the kernels from any size corn cob.', 
    price: 8,
    story_title: 'Lend an Ear',
    story_body: 'Pan-roasted sweet corn kernels makes summer salads addictive. But slicing them off the cob is a chore. It s easy to injure yourself and hard to cut evenly, because 1) knives are straight, and 2) corn cobs are curved. Here at last is the circular knife you ve been waiting for—even if you didn t know it. With a simple twist, it easily strips the kernels from any size cob. The serrated stainless steel blade doesn t come near your fingers. You ll never again dread making your signature salsa for a crowd.',
    maker_name: 'Angelina Jacobs',
    maker_location: 'Connecticut',
    maker_quote: '',
    maker_description: 'Angelina Jacobs is an artist from Connecticut who loves crafting custom items.',
    made_from: 'stainless steel, polypropylene',
    measurements: '2 H x 2.75 Dia.',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35268,
    made_in: 'usa'
})
product95 = Product.create({ 
    title: 'Ayurvedic Copper Water Decanter', 
    description: 'In Ayurvedic medicine, Tamrajal (copper-charged water) is said to balance your doshas for good health.', 
    price: 75,
    story_title: 'Decant Your Doshas',
    story_body: 'In Ayurvedic medicine, one of the worlds oldest healing systems, "Tamrajal" (copper-charged water) is said to balance your doshas—the foundation of good health and well-being. Rashimi Ranade worked with Indian copper artisans on this carafe, which is designed with not only a sleek place to store water, but also two tumblers. Set it bedside for elegant sips when the sun rises, or at the kitchen table to keep your doshas happy and hydrated. Handmade in India.',
    maker_name: 'Genevieve Thomas',
    maker_location: 'Delaware',
    maker_quote: '',
    maker_description: 'Genevieve Thomas is an artist from Delaware who loves crafting custom items.',
    made_from: 'Copper +Silicon Gasket',
    measurements: '6.25H x 5.9 dia, 1.34 lbs, 33.8 ounces',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35285,
    made_in: 'usa'
})
product96 = Product.create({ 
    title: 'Banana Slicer', 
    description: 'With this simple, one-handed gadget, cut six perfect banana slices at a time for cereal or fruit salads.', 
    price: 10,
    story_title: 'Im Nicer',
    story_body: 'Dear Knives: Busy moms, students, and time-pressed commuters demand perfect banana slices, and youre not cutting it any more. See, this simple, one-handed gadget chops a half dozen of them at once. We just put the peeled fruit in, squeeze, and the uniform slices drop right into the cereal or salad bowl, or onto peanut-buttered bread. Also, Knife, its safer than you, with no sharp, exposed blades. Did you notice its yellow and banana-shaped? No offense, but youre not. Finally, we would like to conclude with these words of wisdom: Slicer, slicer, bo-bicer, Banana-fana fo-ficer, Fee-fi-mo-micer, Slicer!',
    maker_name: 'Wendell Mcgee',
    maker_location: 'Florida',
    maker_quote: '',
    maker_description: 'Wendell Mcgee is an artist from Florida who believes crafting is a great way for expression.',
    made_from: 'stainless steel, polypropylene',
    measurements: '6.6 L x 1.5 H x 2 W',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35302,
    made_in: 'usa'
})
product97 = Product.create({ 
    title: 'Pyramid Cheese Grater', 
    description: 'This sturdy, stainless steel grater has four shredding options, and looks stylish enough to use tableside.', 
    price: 25,
    story_title: 'Built for Grateness',
    story_body: 'We think this golden pyramid is Mexican, not Egyptian—because nachos. Stylish enough to use tableside, its easier to use than a box grater, thanks to angled sides and a solid handle. With four different shredding options for cheese, chocolate, vegetables, or zesting citrus, its an eye-catching tool that brightens up a table or kitchen counter. Worthy of note: everyone in our office who sees it says, "How cool!" Designed in Brooklyn. Made in China of plated stainless steel.',
    maker_name: 'Edith Strickland',
    maker_location: 'Georgia',
    maker_quote: '',
    maker_description: 'Edith Strickland is an artist from Georgia who believes crafting is a great way for expression.',
    made_from: '',
    measurements: '5 L x 5 W x 6 H',
    care: 'Clean with a damp, lint free cloth.',
    notes: 'Hardware included.',
    item_id: 35319,
    made_in: 'usa'
})
product98 = Product.create({ 
    title: 'Airbolt Smart Travel Lock', 
    description: 'This strong, smart thief foiler works through your phone to lock and unlock, track your luggage, and more.', 
    price: 79.95,
    story_title: 'Brainier Than the Bad Guys',
    story_body: 'Locks are a 6,000 year-old technology that s just gotten a major upgrade. This one—strong, smart, and handsome—foils not just thieves, but good old human error, too. Can t remember combinations? There isn t one; you open and close it with your phone. Absent-mindedly wander away from your stuff? A phone alert goes off. And if your luggage is lost or stolen, the GPS will track it. Its also great for sharing a gym locker or bike with family and friends, since anyone with the app can open sesame. TSA approved.',
    maker_name: 'Archie Tyler',
    maker_location: 'Hawaii',
    maker_quote: '',
    maker_description: 'Archie Tyler is an artist from Hawaii who believes crafting is a great way for expression.',
    made_from: 'LED Light, Stainless Steel, Die Cast',
    measurements: '2.1 Dia',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 35336,
    made_in: 'usa'
})
product99 = Product.create({ 
    title: 'Wooden Steampunk Pepper Mill', 
    description: 'Part fine-tuned machine and part artful object, this pepper mill is as steampunk as it is precise.', 
    price: 100,
    story_title: 'Grinding Gears',
    story_body: 'We d like to think that if Jules Verne was traveling to the center of his favorite meal, he d give it a blast from this pepper mill. To give each mill an industrial look Tyler Lucas gently scorches its wooden base with a blow torch. By pairing the slightly toasted bottom with a hand-crank grinding mechanism, Tyler makes a piece right out of a sci-fi dream. The fully adjustable grinder is so precise, it can produce a fine powder or simply crack your peppercorns in half. Part fine-tuned machine and part artful object, it couldn t be anymore steampunk if it actually had bells and whistles. Handmade from sustainably sourced elm from Tyler s neighbor s yard in New Jersey.',
    maker_name: 'Sue Wilson',
    maker_location: 'Idaho',
    maker_quote: '',
    maker_description: 'Sue Wilson is an artist from Idaho who believes crafting is a great way for expression.',
    made_from: 'coated metal alloy, elm, Die Cast',
    measurements: '3 x 3 x 9',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 35353,
    made_in: 'usa'
})
product100 = Product.create({ 
    title: 'Long Distance Friendship Lamp  Mid Century', 
    description: 'Light up loved ones lives—across town or across the world—with these in-sync lamps.', 
    price: 95,
    story_title: 'Long-Distance Love',
    story_body: 'Light up loved ones lives—across town or across the world—with this new design of our beloved Friendship Lamp. The function is still the same: Touch yours, and theirs emits the same glow to send a little "thinking of you." Creating a group? You can also assign colors, so each person gets their own special hue. Mix and match with the original design, too, if you like. Designed by John Harrison and Vanessa Whalen. Assembled in Kansas. ',
    maker_name: 'Marjorie Fields',
    maker_location: 'Illinois',
    maker_quote: '',
    maker_description: 'Marjorie Fields is an artist from Illinois who loves crafting custom items.',
    made_from: 'aluminum, circuit board, electrical components, wood, LED bulb',
    measurements: '5.5” L x 5.0” W x 5.25” H',
    care: 'Clean with a damp, lint free cloth.',
    notes: '',
    item_id: 35370,
    made_in: 'usa'
})

products = ProductImage.create([
  { 
    product_id: product1.id, 
    image_url: "items/23433_1_640px.jpg"
  },

  { 
    product_id: product1.id, 
    image_url: "items/23433_2_640px.jpg"
  },

  { 
    product_id: product2.id, 
    image_url: "items/26446_1_640px.jpg"
  },

  { 
    product_id: product2.id, 
    image_url: "items/26446_3_640px.jpg"
  },

  { 
    product_id: product3.id, 
    image_url: "items/22272_1_640px.jpg"
  },

  { 
    product_id: product3.id, 
    image_url: "items/22272_2_640px.jpg"
  },

  { 
    product_id: product4.id, 
    image_url: "items/43428_1_640px.jpg"
  },

  { 
    product_id: product4.id, 
    image_url: "items/43428_3_640px.jpg"
  },

  { 
    product_id: product4.id, 
    image_url: "items/43428_4_640px.jpg"
  },

  { 
    product_id: product5.id, 
    image_url: "items/15696_1_640px.jpg"
  },

  { 
    product_id: product5.id, 
    image_url: "items/15696_2_640px.jpg"
  },

  { 
    product_id: product6.id, 
    image_url: "items/48542_1_640px.jpg"
  },

  { 
    product_id: product6.id, 
    image_url: "items/48542_2_640px.jpg"
  },

  { 
    product_id: product7.id, 
    image_url: "items/44943_1_640px.jpg"
  },

  { 
    product_id: product7.id, 
    image_url: "items/44943_2_640px.jpg"
  },

  { 
    product_id: product7.id, 
    image_url: "items/44943_3_640px.jpg"
  },

  { 
    product_id: product7.id, 
    image_url: "items/44943_5_640px.jpg"
  },

  { 
    product_id: product8.id, 
    image_url: "items/41601_1_640px.jpg"
  },

  { 
    product_id: product8.id, 
    image_url: "items/41601_3_640px.jpg"
  },

  { 
    product_id: product9.id, 
    image_url: "items/47888_1_640px.jpg"
  },

  { 
    product_id: product9.id, 
    image_url: "items/47888_2_640px.jpg"
  },

  { 
    product_id: product9.id, 
    image_url: "items/47888_3_640px.jpg"
  },

  { 
    product_id: product9.id, 
    image_url: "items/47888_4_640px.jpg"
  },

  { 
    product_id: product10.id, 
    image_url: "items/42080_1_640px.jpg"
  },

  { 
    product_id: product10.id, 
    image_url: "items/42080_2_640px.jpg"
  },

  { 
    product_id: product10.id, 
    image_url: "items/42080_3_640px.jpg"
  },

  { 
    product_id: product11.id, 
    image_url: "items/26276_1_640px.jpg"
  },

  { 
    product_id: product11.id, 
    image_url: "items/26276_2_640px.jpg"
  },

  { 
    product_id: product11.id, 
    image_url: "items/26276_3_640px.jpg"
  },

  { 
    product_id: product11.id, 
    image_url: "items/26276_4_640px.jpg"
  },

  { 
    product_id: product12.id, 
    image_url: "items/43244_1_640px.jpg"
  },

  { 
    product_id: product12.id, 
    image_url: "items/43244_2_640px.jpg"
  },

  { 
    product_id: product13.id, 
    image_url: "items/17884_1_640px.jpg"
  },

  { 
    product_id: product14.id, 
    image_url: "items/48724_1_640px.jpg"
  },

  { 
    product_id: product14.id, 
    image_url: "items/48724_2_640px.jpg"
  },

  { 
    product_id: product14.id, 
    image_url: "items/48724_3_640px.jpg"
  },

  { 
    product_id: product15.id, 
    image_url: "items/26042_1_640px.jpg"
  },

  { 
    product_id: product15.id, 
    image_url: "items/26042_2_640px.jpg"
  },

  { 
    product_id: product15.id, 
    image_url: "items/26042_3_640px.jpg"
  },

  { 
    product_id: product15.id, 
    image_url: "items/26042_4_640px.jpg"
  },

  { 
    product_id: product16.id, 
    image_url: "items/26937_1_640px.jpg"
  },

  { 
    product_id: product16.id, 
    image_url: "items/26937_2_640px.jpg"
  },

  { 
    product_id: product16.id, 
    image_url: "items/26937_3_640px.jpg"
  },

  { 
    product_id: product17.id, 
    image_url: "items/47407_1_640px.jpg"
  },

  { 
    product_id: product17.id, 
    image_url: "items/47407_2_640px.jpg"
  },

  { 
    product_id: product17.id, 
    image_url: "items/47407_3_640px.jpg"
  },

  { 
    product_id: product18.id, 
    image_url: "items/47552_1_640px.jpg"
  },

  { 
    product_id: product18.id, 
    image_url: "items/47552_2_640px.jpg"
  },

  { 
    product_id: product18.id, 
    image_url: "items/47552_3_640px.jpg"
  },

  { 
    product_id: product18.id, 
    image_url: "items/47552_4_640px.jpg"
  },

  { 
    product_id: product19.id, 
    image_url: "items/47313_1_640px.jpg"
  },

  { 
    product_id: product19.id, 
    image_url: "items/47313_2_640px.jpg"
  },

  { 
    product_id: product19.id, 
    image_url: "items/47313_3_640px.jpg"
  },

  { 
    product_id: product19.id, 
    image_url: "items/47313_4_640px.jpg"
  },

  { 
    product_id: product20.id, 
    image_url: "items/23758_1_640px.jpg"
  },

  { 
    product_id: product20.id, 
    image_url: "items/23758_2_640px.jpg"
  },

  { 
    product_id: product20.id, 
    image_url: "items/23758_3_640px.jpg"
  },
  
  { 
    product_id: product21.id, 
    image_url: 'items/48821_1_640px.jpg'
  },
  { 
    product_id: product21.id, 
    image_url: 'items/48821_2_640px.jpg'
  },
  { 
    product_id: product21.id, 
    image_url: 'items/48821_3_640px.jpg'
  },
  { 
    product_id: product22.id, 
    image_url: 'items/48560_1_640px.jpg'
  },
  { 
    product_id: product23.id, 
    image_url: 'items/46620_1_640px.jpg'
  },
  { 
    product_id: product23.id, 
    image_url: 'items/46620_2_640px.jpg'
  },
  { 
    product_id: product23.id, 
    image_url: 'items/46620_3_640px.jpg'
  },
  { 
    product_id: product23.id, 
    image_url: 'items/46620_4_640px.jpg'
  },
  { 
    product_id: product24.id, 
    image_url: 'items/24867_1_640px.jpg'
  },
  { 
    product_id: product24.id, 
    image_url: 'items/24867_2_640px.jpg'
  },
  { 
    product_id: product24.id, 
    image_url: 'items/24867_3_640px.jpg'
  },
  { 
    product_id: product25.id, 
    image_url: 'items/45991_1_640px.jpg'
  },
  { 
    product_id: product25.id, 
    image_url: 'items/45991_2_640px.jpg'
  },
  { 
    product_id: product25.id, 
    image_url: 'items/45991_3_640px.jpg'
  },
  { 
    product_id: product26.id, 
    image_url: 'items/47499_1_640px.jpg'
  },
  { 
    product_id: product26.id, 
    image_url: 'items/47499_2_640px.jpg'
  },
  { 
    product_id: product27.id, 
    image_url: 'items/45960_1_640px.jpg'
  },
  { 
    product_id: product27.id, 
    image_url: 'items/45960_2_640px.jpg'
  },
  { 
    product_id: product28.id, 
    image_url: 'items/43941_1_640px.jpg'
  },
  { 
    product_id: product28.id, 
    image_url: 'items/43941_2_640px.jpg'
  },
  { 
    product_id: product29.id, 
    image_url: 'items/21932_1_640px.jpg'
  },
  { 
    product_id: product29.id, 
    image_url: 'items/21932_2_640px.jpg'
  },
  { 
    product_id: product30.id, 
    image_url: 'items/47297_1_640px.jpg'
  },
  { 
    product_id: product30.id, 
    image_url: 'items/47297_2_640px.jpg'
  },
  { 
    product_id: product30.id, 
    image_url: 'items/47297_3_640px.jpg'
  },
  { 
    product_id: product30.id, 
    image_url: 'items/47297_4_640px.jpg'
  },
  { 
    product_id: product31.id, 
    image_url: 'items/49081_1_640px.jpg'
  },
  { 
    product_id: product31.id, 
    image_url: 'items/49081_2_640px.jpg'
  },
  { 
    product_id: product31.id, 
    image_url: 'items/49081_3_640px.jpg'
  },
  { 
    product_id: product32.id, 
    image_url: 'items/49063_1_640px.jpg'
  },
  { 
    product_id: product33.id, 
    image_url: 'items/43762_1_640px.jpg'
  },
  { 
    product_id: product34.id, 
    image_url: 'items/47269_1_640px.jpg'
  },
  { 
    product_id: product34.id, 
    image_url: 'items/47269_2_640px.jpg'
  },
  { 
    product_id: product34.id, 
    image_url: 'items/47269_3_640px.jpg'
  },
  { 
    product_id: product35.id, 
    image_url: 'items/48506_1_640px.jpg'
  },
  { 
    product_id: product35.id, 
    image_url: 'items/48506_2_640px.jpg'
  },
  { 
    product_id: product36.id, 
    image_url: 'items/48584_1_640px.jpg'
  },
  { 
    product_id: product37.id, 
    image_url: 'items/43629_1_640px.jpg'
  },
  { 
    product_id: product37.id, 
    image_url: 'items/43629_2_640px.jpg'
  },
  { 
    product_id: product37.id, 
    image_url: 'items/43629_3_640px.jpg'
  },
  { 
    product_id: product37.id, 
    image_url: 'items/43629_4_640px.jpg'
  },
  { 
    product_id: product38.id, 
    image_url: 'items/47463_1_640px.jpg'
  },
  { 
    product_id: product38.id, 
    image_url: 'items/47463_2_640px.jpg'
  },
  { 
    product_id: product38.id, 
    image_url: 'items/47463_3_640px.jpg'
  },
  { 
    product_id: product39.id, 
    image_url: 'items/47266_1_640px.jpg'
  },
  { 
    product_id: product39.id, 
    image_url: 'items/47266_2_640px.jpg'
  },
  { 
    product_id: product39.id, 
    image_url: 'items/47266_3_640px.jpg'
  },
  { 
    product_id: product39.id, 
    image_url: 'items/47266_4_640px.jpg'
  },
  { 
    product_id: product40.id, 
    image_url: 'items/49799_1_640px.jpg'
  },
  { 
    product_id: product41.id, 
    image_url: 'items/47055_1_640px.jpg'
  },
  { 
    product_id: product41.id, 
    image_url: 'items/47055_2_640px.jpg'
  },
  { 
    product_id: product41.id, 
    image_url: 'items/47055_3_640px.jpg'
  },
  { 
    product_id: product41.id, 
    image_url: 'items/47055_5_640px.jpg'
  },
  { 
    product_id: product42.id, 
    image_url: 'items/47252_1_640px.jpg'
  },
  { 
    product_id: product42.id, 
    image_url: 'items/47252_2_640px.jpg'
  },
  { 
    product_id: product42.id, 
    image_url: 'items/47252_3_640px.jpg'
  },
  { 
    product_id: product42.id, 
    image_url: 'items/47252_4_640px.jpg'
  },
  { 
    product_id: product43.id, 
    image_url: 'items/47036_1_640px.jpg'
  },
  { 
    product_id: product43.id, 
    image_url: 'items/47036_2_640px.jpg'
  },
  { 
    product_id: product43.id, 
    image_url: 'items/47036_3_640px.jpg'
  },
  { 
    product_id: product44.id, 
    image_url: 'items/49800_1_640px.jpg'
  },
  { 
    product_id: product45.id, 
    image_url: 'items/49690_5_640px.jpg'
  },
  { 
    product_id: product45.id, 
    image_url: 'items/49690_1_640px.jpg'
  },
  { 
    product_id: product45.id, 
    image_url: 'items/49690_2_640px.jpg'
  },
  { 
    product_id: product45.id, 
    image_url: 'items/49690_3_640px.jpg'
  },
  { 
    product_id: product45.id, 
    image_url: 'items/49690_4_640px.jpg'
  },
  { 
    product_id: product46.id, 
    image_url: 'items/46792_1_640px.jpg'
  },
  { 
    product_id: product46.id, 
    image_url: 'items/46792_2_640px.jpg'
  },
  { 
    product_id: product46.id, 
    image_url: 'items/46792_3_640px.jpg'
  },
  { 
    product_id: product46.id, 
    image_url: 'items/46792_4_640px.jpg'
  },
  { 
    product_id: product47.id, 
    image_url: 'items/47958_5_640px.jpg'
  },
  { 
    product_id: product47.id, 
    image_url: 'items/47958_1_640px.jpg'
  },
  { 
    product_id: product47.id, 
    image_url: 'items/47958_2_640px.jpg'
  },
  { 
    product_id: product47.id, 
    image_url: 'items/47958_3_640px.jpg'
  },
  { 
    product_id: product47.id, 
    image_url: 'items/47958_4_640px.jpg'
  },
  { 
    product_id: product48.id, 
    image_url: 'items/49330_1_640px.jpg'
  },
  { 
    product_id: product49.id, 
    image_url: 'items/26609_1_640px.jpg'
  },
    { 
    product_id: product50.id, 
    image_url: 'items/49913_1_640px.jpg'
  },
  { 
    product_id: product50.id, 
    image_url: 'items/49913_2_640px.jpg'
  },
  { 
    product_id: product50.id, 
    image_url: 'items/49913_3_640px.jpg'
  },
  { 
    product_id: product51.id, 
    image_url: 'items/50165_1_640px.jpg'
  },
  { 
    product_id: product51.id, 
    image_url: 'items/50165_2_640px.jpg'
  },
  { 
    product_id: product52.id, 
    image_url: 'items/50193_1_640px.jpg'
  },
  { 
    product_id: product52.id, 
    image_url: 'items/50193_2_640px.jpg'
  },
  { 
    product_id: product52.id, 
    image_url: 'items/50193_3_640px.jpg'
  },
  { 
    product_id: product53.id, 
    image_url: 'items/50091_1_640px.jpg'
  },
  { 
    product_id: product53.id, 
    image_url: 'items/50091_2_640px.jpg'
  },
  { 
    product_id: product54.id, 
    image_url: 'items/50123_1_640px.jpg'
  },
  { 
    product_id: product55.id, 
    image_url: 'items/50126_1_640px.jpg'
  },
  { 
    product_id: product56.id, 
    image_url: 'items/50164_1_640px.jpg'
  },
  { 
    product_id: product57.id, 
    image_url: 'items/50086_1_640px.jpg'
  },
  { 
    product_id: product57.id, 
    image_url: 'items/50086_2_640px.jpg'
  },
  { 
    product_id: product57.id, 
    image_url: 'items/50086_3_640px.jpg'
  },
  { 
    product_id: product57.id, 
    image_url: 'items/50086_4_640px.jpg'
  },
  { 
    product_id: product58.id, 
    image_url: 'items/50170_1_640px.jpg'
  },
  { 
    product_id: product58.id, 
    image_url: 'items/50170_2_640px.jpg'
  },
  { 
    product_id: product59.id, 
    image_url: 'items/49829_1_640px.jpg'
  },
  { 
    product_id: product60.id, 
    image_url: 'items/50110_1_640px.jpg'
  },
  { 
    product_id: product61.id, 
    image_url: 'items/50061_1_640px.jpg'
  },
  { 
    product_id: product61.id, 
    image_url: 'items/50061_2_640px.jpg'
  },
  { 
    product_id: product62.id, 
    image_url: 'items/49966_1_640px.jpg'
  },
  { 
    product_id: product62.id, 
    image_url: 'items/49966_2_640px.jpg'
  },
  { 
    product_id: product63.id, 
    image_url: 'items/50030_1_640px.jpg'
  },
  { 
    product_id: product64.id, 
    image_url: 'items/50113_1_640px.jpg'
  },
  { 
    product_id: product64.id, 
    image_url: 'items/50113_2_640px.jpg'
  },
  { 
    product_id: product64.id, 
    image_url: 'items/50113_3_640px.jpg'
  },
  { 
    product_id: product65.id, 
    image_url: 'items/49875_1_640px.jpg'
  },
  { 
    product_id: product66.id, 
    image_url: 'items/49814_1_640px.jpg'
  },
  { 
    product_id: product66.id, 
    image_url: 'items/49814_2_640px.jpg'
  },
  { 
    product_id: product66.id, 
    image_url: 'items/49814_3_640px.jpg'
  },
  { 
    product_id: product66.id, 
    image_url: 'items/49814_4_640px.jpg'
  },
  { 
    product_id: product67.id, 
    image_url: 'items/50001_1_640px.jpg'
  },
  { 
    product_id: product67.id, 
    image_url: 'items/50001_2_640px.jpg'
  },
  { 
    product_id: product68.id, 
    image_url: 'items/49919_1_640px.jpg'
  },
  { 
    product_id: product68.id, 
    image_url: 'items/49919_2_640px.jpg'
  },
  { 
    product_id: product69.id, 
    image_url: 'items/50107_1_640px.jpg'
  },
  { 
    product_id: product70.id, 
    image_url: 'items/49836_1_640px.jpg'
  },
  { 
    product_id: product70.id, 
    image_url: 'items/49836_2_640px.jpg'
  },
  { 
    product_id: product71.id, 
    image_url: 'items/49924_1_640px.jpg'
  },
  { 
    product_id: product71.id, 
    image_url: 'items/49924_2_640px.jpg'
  },
  { 
    product_id: product71.id, 
    image_url: 'items/49924_3_640px.jpg'
  },
  { 
    product_id: product72.id, 
    image_url: 'items/49233_1_640px.jpg'
  },
  { 
    product_id: product72.id, 
    image_url: 'items/49233_2_640px.jpg'
  },
  { 
    product_id: product73.id, 
    image_url: 'items/50098_1_640px.jpg'
  },
  { 
    product_id: product74.id, 
    image_url: 'items/50024_1_640px.jpg'
  },
  { 
    product_id: product74.id, 
    image_url: 'items/50024_2_640px.jpg'
  },
  { 
    product_id: product75.id, 
    image_url: 'items/49964_1_640px.jpg'
  },
  { 
    product_id: product76.id, 
    image_url: 'items/50026_1_640px.jpg'
  },
  { 
    product_id: product77.id, 
    image_url: 'items/50083_1_640px.jpg'
  },
  { 
    product_id: product77.id, 
    image_url: 'items/50083_2_640px.jpg'
  },
  { 
    product_id: product78.id, 
    image_url: 'items/50055_1_640px.jpg'
  },
  { 
    product_id: product79.id, 
    image_url: 'items/50081_1_640px.jpg'
  },
  { 
    product_id: product79.id, 
    image_url: 'items/50081_2_640px.jpg'
  },
  { 
    product_id: product79.id, 
    image_url: 'items/50081_3_640px.jpg'
  },
  { 
    product_id: product80.id, 
    image_url: 'items/50072_1_640px.jpg'
  },
  { 
    product_id: product80.id, 
    image_url: 'items/50072_2_640px.jpg'
  },
  { 
    product_id: product81.id, 
    image_url: 'items/50043_1_640px.jpg'
  },
  { 
    product_id: product81.id, 
    image_url: 'items/50043_2_640px.jpg'
  },
  { 
    product_id: product82.id, 
    image_url: 'items/50097_1_640px.jpg'
  },
  { 
    product_id: product82.id, 
    image_url: 'items/50097_2_640px.jpg'
  },
  { 
    product_id: product82.id, 
    image_url: 'items/50097_3_640px.jpg'
  },
  { 
    product_id: product82.id, 
    image_url: 'items/50097_4_640px.jpg'
  },
  { 
    product_id: product83.id, 
    image_url: 'items/50092_1_640px.jpg'
  },
  { 
    product_id: product83.id, 
    image_url: 'items/50092_2_640px.jpg'
  },
  { 
    product_id: product84.id, 
    image_url: 'items/50094_1_640px.jpg'
  },
  { 
    product_id: product84.id, 
    image_url: 'items/50094_2_640px.jpg'
  },
  { 
    product_id: product85.id, 
    image_url: 'items/50095_1_640px.jpg'
  },
  { 
    product_id: product85.id, 
    image_url: 'items/50095_2_640px.jpg'
  },
  { 
    product_id: product86.id, 
    image_url: 'items/50080_1_640px.jpg'
  },
  { 
    product_id: product87.id, 
    image_url: 'items/49909_1_640px.jpg'
  },
  { 
    product_id: product87.id, 
    image_url: 'items/49909_2_640px.jpg'
  },
  { 
    product_id: product88.id, 
    image_url: 'items/49963_1_640px.jpg'
  },
  { 
    product_id: product88.id, 
    image_url: 'items/49963_2_640px.jpg'
  },
  { 
    product_id: product89.id, 
    image_url: 'items/49849_1_640px.jpg'
  },
  { 
    product_id: product90.id, 
    image_url: 'items/50027_1_640px.jpg'
  },
  { 
    product_id: product90.id, 
    image_url: 'items/50027_2_640px.jpg'
  },
  { 
    product_id: product91.id, 
    image_url: 'items/50077_1_640px.jpg'
  },
  { 
    product_id: product91.id, 
    image_url: 'items/50077_2_640px.jpg'
  },
  { 
    product_id: product91.id, 
    image_url: 'items/50077_3_640px.jpg'
  },
  { 
    product_id: product92.id, 
    image_url: 'items/49974_1_640px.jpg'
  },
  { 
    product_id: product92.id, 
    image_url: 'items/49974_2_640px.jpg'
  },
  { 
    product_id: product92.id, 
    image_url: 'items/49974_3_640px.jpg'
  },
  { 
    product_id: product93.id, 
    image_url: 'items/49998_1_640px.jpg'
  },
  { 
    product_id: product93.id, 
    image_url: 'items/49998_2_640px.jpg'
  },
  { 
    product_id: product94.id, 
    image_url: 'items/49659_1_640px.jpg'
  },
  { 
    product_id: product94.id, 
    image_url: 'items/49659_2_640px.jpg'
  },
  { 
    product_id: product95.id, 
    image_url: 'items/49692_1_640px.jpg'
  },
  { 
    product_id: product95.id, 
    image_url: 'items/49692_2_640px.jpg'
  },
  { 
    product_id: product96.id, 
    image_url: 'items/49658_1_640px.jpg'
  },
  { 
    product_id: product96.id, 
    image_url: 'items/49658_2_640px.jpg'
  },
  { 
    product_id: product97.id, 
    image_url: 'items/50063_1_640px.jpg'
  },
  { 
    product_id: product97.id, 
    image_url: 'items/50063_2_640px.jpg'
  },
  { 
    product_id: product98.id, 
    image_url: 'items/49902_1_640px.jpg'
  },
  { 
    product_id: product98.id, 
    image_url: 'items/49902_3_640px.jpg'
  },
  { 
    product_id: product98.id, 
    image_url: 'items/49902_4_640px.jpg'
  },
  { 
    product_id: product99.id, 
    image_url: 'items/50004_1_640px.jpg'
  },
  { 
    product_id: product100.id, 
    image_url: 'items/49845_1_640px.jpg'
  },
  { 
    product_id: product100.id, 
    image_url: 'items/49845_2_640px.jpg'
  },
  { 
    product_id: product100.id, 
    image_url: 'items/49845_3_640px.jpg'
  }
])

categories = Category.create([
  { 
      product_id: product1.id, 
      name: 'kitchen'
    },
  { 
      product_id: product2.id, 
      name: 'fun'
    },
  { 
      product_id: product3.id, 
      name: 'art'
    },
  { 
      product_id: product4.id, 
      name: 'home'
    },
  { 
      product_id: product5.id, 
      name: 'gifts'
    },
  { 
      product_id: product6.id, 
      name: 'home'
    },
  { 
      product_id: product7.id, 
      name: 'home'
    },
  { 
      product_id: product8.id, 
      name: 'home'
    },
  { 
      product_id: product9.id, 
      name: 'home'
    },
  { 
      product_id: product10.id, 
      name: 'fun'
    },
  { 
      product_id: product11.id, 
      name: 'fun'
    },
  { 
      product_id: product12.id, 
      name: 'kids'
    },
  { 
      product_id: product13.id, 
      name: 'teen'
    },
  { 
      product_id: product14.id, 
      name: 'home'
    },
  { 
      product_id: product15.id, 
      name: 'teen'
    },
  { 
      product_id: product16.id, 
      name: 'women'
    },
  { 
      product_id: product17.id, 
      name: 'fun'
    },
  { 
      product_id: product18.id, 
      name: 'fun'
    },
  { 
      product_id: product19.id, 
      name: 'fun'
    },
  { 
      product_id: product20.id, 
      name: 'home'
    },
  { 
      product_id: product21.id, 
      name: 'home'
    },
  { 
      product_id: product22.id, 
      name: 'home'
    },
  { 
      product_id: product23.id, 
      name: 'women'
    },
  { 
      product_id: product24.id, 
      name: 'art'
    },
  { 
      product_id: product25.id, 
      name: 'kids'
    },
  { 
      product_id: product26.id, 
      name: 'home'
    },
  { 
      product_id: product27.id, 
      name: 'gifts'
    },
  { 
      product_id: product28.id, 
      name: 'gifts'
    },
  { 
      product_id: product29.id, 
      name: 'home'
    },
  { 
      product_id: product30.id, 
      name: 'teen'
    },
  { 
      product_id: product31.id, 
      name: 'teen'
    },
  { 
      product_id: product32.id, 
      name: 'home'
    },
  { 
      product_id: product33.id, 
      name: 'fun'
    },
  { 
      product_id: product34.id, 
      name: 'men'
    },
  { 
      product_id: product35.id, 
      name: 'men'
    },
  { 
      product_id: product36.id, 
      name: 'men'
    },
  { 
      product_id: product37.id, 
      name: 'home'
    },
  { 
      product_id: product38.id, 
      name: 'women'
    },
  { 
      product_id: product39.id, 
      name: 'women'
    },
  { 
      product_id: product40.id, 
      name: 'women'
    },
  { 
      product_id: product41.id, 
      name: 'gifts'
    },
  { 
      product_id: product42.id, 
      name: 'kids'
    },
  { 
      product_id: product43.id, 
      name: 'gifts'
    },
  { 
      product_id: product44.id, 
      name: 'women'
    },
  { 
      product_id: product45.id, 
      name: 'fun'
    },
  { 
      product_id: product46.id, 
      name: 'gifts'
    },
  { 
      product_id: product47.id, 
      name: 'women'
    },
  { 
      product_id: product48.id, 
      name: 'gifts'
    },
  { 
      product_id: product49.id, 
      name: 'gifts'
    },
  { 
      product_id: product50.id, 
      name: 'fun'
    },
  { 
      product_id: product51.id, 
      name: 'home'
    },
  { 
      product_id: product52.id, 
      name: 'kitchen'
    },
  { 
      product_id: product53.id, 
      name: 'kitchen'
    },
  { 
      product_id: product54.id, 
      name: 'kids'
    },
  { 
      product_id: product55.id, 
      name: 'kids'
    },
  { 
      product_id: product56.id, 
      name: 'kids'
    },
  { 
      product_id: product57.id, 
      name: 'art'
    },
  { 
      product_id: product58.id, 
      name: 'kitchen'
    },
  { 
      product_id: product59.id, 
      name: 'home'
    },
  { 
      product_id: product60.id, 
      name: 'men'
    },
  { 
      product_id: product61.id, 
      name: 'kids'
    },
  { 
      product_id: product62.id, 
      name: 'men'
    },
  { 
      product_id: product63.id, 
      name: 'men'
    },
  { 
      product_id: product64.id, 
      name: 'kids'
    },
  { 
      product_id: product65.id, 
      name: 'art'
    },
  { 
      product_id: product66.id, 
      name: 'art'
    },
  { 
      product_id: product67.id, 
      name: 'kitchen'
    },
  { 
      product_id: product68.id, 
      name: 'kitchen'
    },
  { 
      product_id: product69.id, 
      name: 'kitchen'
    },
  { 
      product_id: product70.id, 
      name: 'kids'
    },
  { 
      product_id: product71.id, 
      name: 'kitchen'
    },
  { 
      product_id: product72.id, 
      name: 'home'
    },
  { 
      product_id: product73.id, 
      name: 'kitchen'
    },
  { 
      product_id: product74.id, 
      name: 'art'
    },
  { 
      product_id: product75.id, 
      name: 'kitchen'
    },
  { 
      product_id: product76.id, 
      name: 'kitchen'
    },
  { 
      product_id: product77.id, 
      name: 'kitchen'
    },
  { 
      product_id: product78.id, 
      name: 'kitchen'
    },
  { 
      product_id: product79.id, 
      name: 'kids'
    },
  { 
      product_id: product80.id, 
      name: 'teen'
    },
  { 
      product_id: product81.id, 
      name: 'kitchen'
    },
  { 
      product_id: product82.id, 
      name: 'home'
    },
  { 
      product_id: product83.id, 
      name: 'art'
    },
  { 
      product_id: product84.id, 
      name: 'kitchen'
    },
  { 
      product_id: product85.id, 
      name: 'kitchen'
    },
  { 
      product_id: product86.id, 
      name: 'kids'
    },
  { 
      product_id: product87.id, 
      name: 'art'
    },
  { 
      product_id: product88.id, 
      name: 'fun'
    },
  { 
      product_id: product89.id, 
      name: 'men'
    },
  { 
      product_id: product90.id, 
      name: 'kitchen'
    },
  { 
      product_id: product91.id, 
      name: 'home'
    },
  { 
      product_id: product92.id, 
      name: 'home'
    },
  { 
      product_id: product93.id, 
      name: 'men'
    },
  { 
      product_id: product94.id, 
      name: 'kitchen'
    },
  { 
      product_id: product95.id, 
      name: 'fun'
    },
  { 
      product_id: product96.id, 
      name: 'kitchen'
    },
  { 
      product_id: product97.id, 
      name: 'kitchen'
    },
  { 
      product_id: product98.id, 
      name: 'gifts'
    },
  { 
      product_id: product99.id, 
      name: 'home'
    },
  { 
      product_id: product100.id, 
      name: 'gifts'
    },
  { 
      product_id: product7.id, 
      name: 'women'
    },
  { 
      product_id: product9.id, 
      name: 'women'
    },
  { 
      product_id: product12.id, 
      name: 'women'
    },
  { 
      product_id: product13.id, 
      name: 'women'
    },
  { 
      product_id: product24.id, 
      name: 'women'
    },
  { 
      product_id: product26.id, 
      name: 'teen'
    },
  { 
      product_id: product27.id, 
      name: 'men'
    },
  { 
      product_id: product31.id, 
      name: 'women'
    },
  { 
      product_id: product100.id, 
      name: 'teen'
    },
  { 
      product_id: product2.id, 
      name: 'new'
    },
  { 
      product_id: product3.id, 
      name: 'new'
    },
  { 
      product_id: product4.id, 
      name: 'new'
    },
  { 
      product_id: product5.id, 
      name: 'new'
    },
  { 
      product_id: product6.id, 
      name: 'new'
    },
  { 
      product_id: product7.id, 
      name: 'new'
    },
  { 
      product_id: product8.id, 
      name: 'new'
    },
  { 
      product_id: product9.id, 
      name: 'new'
    },
  { 
      product_id: product10.id, 
      name: 'new'
    },
  { 
      product_id: product11.id, 
      name: 'new'
    },
  { 
      product_id: product12.id, 
      name: 'new'
    },
  { 
      product_id: product13.id, 
      name: 'new'
    },
  { 
      product_id: product14.id, 
      name: 'new'
    },
  { 
      product_id: product15.id, 
      name: 'new'
    },
  { 
      product_id: product16.id, 
      name: 'new'
    },
  { 
      product_id: product17.id, 
      name: 'new'
    },
  { 
      product_id: product18.id, 
      name: 'new'
    },
  { 
      product_id: product19.id, 
      name: 'new'
    },
  { 
      product_id: product20.id, 
      name: 'new'
    },
  { 
      product_id: product21.id, 
      name: 'new'
    },
  { 
      product_id: product22.id, 
      name: 'new'
    },
  { 
      product_id: product23.id, 
      name: 'new'
    },
  { 
      product_id: product24.id, 
      name: 'new'
    },
  { 
      product_id: product25.id, 
      name: 'new'
    },
  { 
      product_id: product26.id, 
      name: 'new'
    },
  { 
      product_id: product27.id, 
      name: 'new'
    },
  { 
      product_id: product28.id, 
      name: 'new'
    },
  { 
      product_id: product29.id, 
      name: 'new'
    },
  { 
      product_id: product30.id, 
      name: 'new'
    },
  { 
      product_id: product31.id, 
      name: 'new'
    },
  { 
      product_id: product32.id, 
      name: 'new'
    },
  { 
      product_id: product33.id, 
      name: 'new'
    },
  { 
      product_id: product34.id, 
      name: 'new'
    },
  { 
      product_id: product35.id, 
      name: 'new'
    },
  { 
      product_id: product36.id, 
      name: 'new'
    },
  { 
      product_id: product37.id, 
      name: 'new'
    },
  { 
      product_id: product38.id, 
      name: 'new'
    },
  { 
      product_id: product39.id, 
      name: 'new'
    },
  { 
      product_id: product40.id, 
      name: 'new'
    },
  { 
      product_id: product41.id, 
      name: 'new'
    },
  { 
      product_id: product42.id, 
      name: 'new'
    },
  { 
      product_id: product43.id, 
      name: 'new'
    },
  { 
      product_id: product44.id, 
      name: 'new'
    },
  { 
      product_id: product45.id, 
      name: 'new'
    },
  { 
      product_id: product46.id, 
      name: 'new'
    },
  { 
      product_id: product47.id, 
      name: 'new'
    },
  { 
      product_id: product48.id, 
      name: 'new'
    },
  { 
      product_id: product49.id, 
      name: 'new'
    },
  { 
      product_id: product50.id, 
      name: 'new'
    },
  { 
      product_id: product51.id, 
      name: 'new'
    },
  { 
      product_id: product52.id, 
      name: 'new'
    },
  { 
      product_id: product53.id, 
      name: 'new'
    },
  { 
      product_id: product54.id, 
      name: 'new'
    },
  { 
      product_id: product55.id, 
      name: 'new'
    },
  { 
      product_id: product56.id, 
      name: 'new'
    },
  { 
      product_id: product57.id, 
      name: 'new'
    },
  { 
      product_id: product58.id, 
      name: 'new'
    },
  { 
      product_id: product59.id, 
      name: 'new'
    },
  { 
      product_id: product60.id, 
      name: 'new'
    },
  { 
      product_id: product61.id, 
      name: 'new'
    },
  { 
      product_id: product62.id, 
      name: 'new'
    },
  { 
      product_id: product63.id, 
      name: 'new'
    },
  { 
      product_id: product64.id, 
      name: 'new'
    },
  { 
      product_id: product65.id, 
      name: 'new'
    },
  { 
      product_id: product66.id, 
      name: 'new'
    },
  { 
      product_id: product67.id, 
      name: 'new'
    },
  { 
      product_id: product68.id, 
      name: 'new'
    },
  { 
      product_id: product69.id, 
      name: 'new'
    },
  { 
      product_id: product70.id, 
      name: 'new'
    },
  { 
      product_id: product71.id, 
      name: 'new'
    },
  { 
      product_id: product72.id, 
      name: 'new'
    },
  { 
      product_id: product73.id, 
      name: 'new'
    },
  { 
      product_id: product74.id, 
      name: 'new'
    },
  { 
      product_id: product82.id, 
      name: 'sale'
    },
  { 
      product_id: product83.id, 
      name: 'sale'
    },
  { 
      product_id: product84.id, 
      name: 'sale'
    },
  { 
      product_id: product85.id, 
      name: 'sale'
    },
  { 
      product_id: product86.id, 
      name: 'sale'
    },
  { 
      product_id: product87.id, 
      name: 'sale'
    },
  { 
      product_id: product88.id, 
      name: 'sale'
    },
  { 
      product_id: product89.id, 
      name: 'sale'
    },
  { 
      product_id: product90.id, 
      name: 'sale'
    },
  { 
      product_id: product91.id, 
      name: 'sale'
    },
  { 
      product_id: product92.id, 
      name: 'sale'
    },
  { 
      product_id: product93.id, 
      name: 'sale'
    },
  { 
      product_id: product94.id, 
      name: 'sale'
    },
  { 
      product_id: product95.id, 
      name: 'sale'
    },
  { 
      product_id: product96.id, 
      name: 'sale'
    },
  { 
      product_id: product97.id, 
      name: 'sale'
    },
  { 
      product_id: product98.id, 
      name: 'sale'
    },
  { 
      product_id: product99.id, 
      name: 'sale'
    },
  { 
      product_id: product100.id, 
      name: 'sale'
    },
  { 
      product_id: product1.id, 
      name: 'men'
    },
  { 
      product_id: product2.id, 
      name: 'women'
    },
  { 
      product_id: product3.id, 
      name: 'women'
    },
  { 
      product_id: product4.id, 
      name: 'women'
    },
  { 
      product_id: product5.id, 
      name: 'women'
    },
  { 
      product_id: product6.id, 
      name: 'art'
    },
  { 
      product_id: product7.id, 
      name: 'art'
    },
  { 
      product_id: product8.id, 
      name: 'men'
    },
  { 
      product_id: product9.id, 
      name: 'art'
    },
  { 
      product_id: product10.id, 
      name: 'teen'
    },
  { 
      product_id: product11.id, 
      name: 'teen'
    },
  { 
      product_id: product12.id, 
      name: 'teen'
    },
  { 
      product_id: product13.id, 
      name: 'gifts'
    },
  { 
      product_id: product14.id, 
      name: 'kitchen'
    },
  { 
      product_id: product15.id, 
      name: 'gifts'
    },
  { 
      product_id: product16.id, 
      name: 'men'
    },
  { 
      product_id: product17.id, 
      name: 'teen'
    },
  { 
      product_id: product18.id, 
      name: 'kids'
    },
  { 
      product_id: product19.id, 
      name: 'kids'
    },
  { 
      product_id: product20.id, 
      name: 'women'
    },
  { 
      product_id: product21.id, 
      name: 'men'
    },
  { 
      product_id: product22.id, 
      name: 'gifts'
    },
  { 
      product_id: product23.id, 
      name: 'gifts'
    },
  { 
      product_id: product24.id, 
      name: 'home'
    },
  { 
      product_id: product25.id, 
      name: 'teen'
    },
  { 
      product_id: product26.id, 
      name: 'kitchen'
    },
  { 
      product_id: product27.id, 
      name: 'teen'
    },
  { 
      product_id: product28.id, 
      name: 'men'
    },
  { 
      product_id: product29.id, 
      name: 'fun'
    },
  { 
      product_id: product30.id, 
      name: 'men'
    },
  { 
      product_id: product31.id, 
      name: 'men'
    },
  { 
      product_id: product32.id, 
      name: 'women'
    },
  { 
      product_id: product33.id, 
      name: 'men'
    },
  { 
      product_id: product34.id, 
      name: 'gifts'
    },
  { 
      product_id: product35.id, 
      name: 'gifts'
    },
  { 
      product_id: product36.id, 
      name: 'gifts'
    },
  { 
      product_id: product37.id, 
      name: 'gifts'
    },
  { 
      product_id: product38.id, 
      name: 'jewelry'
    },
  { 
      product_id: product39.id, 
      name: 'jewelry'
    },
  { 
      product_id: product41.id, 
      name: 'men'
    },
  { 
      product_id: product42.id, 
      name: 'gifts'
    },
  { 
      product_id: product43.id, 
      name: 'teen'
    },
  { 
      product_id: product44.id, 
      name: 'gifts'
    },
  { 
      product_id: product45.id, 
      name: 'kids'
    },
  { 
      product_id: product46.id, 
      name: 'men'
    },
  { 
      product_id: product47.id, 
      name: 'gifts'
    },
  { 
      product_id: product48.id, 
      name: 'men'
    },
  { 
      product_id: product49.id, 
      name: 'women'
    },
  { 
      product_id: product50.id, 
      name: 'men'
    },
  { 
      product_id: product51.id, 
      name: 'art'
    },
  { 
      product_id: product52.id, 
      name: 'home'
    },
  { 
      product_id: product53.id, 
      name: 'home'
    },
  { 
      product_id: product54.id, 
      name: 'teen'
    },
  { 
      product_id: product55.id, 
      name: 'teen'
    },
  { 
      product_id: product56.id, 
      name: 'teen'
    },
  { 
      product_id: product57.id, 
      name: 'home'
    },
  { 
      product_id: product58.id, 
      name: 'home'
    },
  { 
      product_id: product59.id, 
      name: 'kitchen'
    },
  { 
      product_id: product60.id, 
      name: 'women'
    },
  { 
      product_id: product61.id, 
      name: 'teen'
    },
  { 
      product_id: product62.id, 
      name: 'women'
    },
  { 
      product_id: product63.id, 
      name: 'women'
    },
  { 
      product_id: product64.id, 
      name: 'teen'
    },
  { 
      product_id: product65.id, 
      name: 'home'
    },
  { 
      product_id: product66.id, 
      name: 'home'
    },
  { 
      product_id: product67.id, 
      name: 'home'
    },
  { 
      product_id: product68.id, 
      name: 'home'
    },
  { 
      product_id: product69.id, 
      name: 'home'
    },
  { 
      product_id: product70.id, 
      name: 'fun'
    },
  { 
      product_id: product71.id, 
      name: 'home'
    },
  { 
      product_id: product72.id, 
      name: 'art'
    },
  { 
      product_id: product73.id, 
      name: 'fun'
    },
  { 
      product_id: product74.id, 
      name: 'home'
    },
  { 
      product_id: product75.id, 
      name: 'home'
    },
  { 
      product_id: product76.id, 
      name: 'teen'
    },
  { 
      product_id: product77.id, 
      name: 'home'
    },
  { 
      product_id: product78.id, 
      name: 'home'
    },
  { 
      product_id: product79.id, 
      name: 'teen'
    },
  { 
      product_id: product80.id, 
      name: 'men'
    },
  { 
      product_id: product81.id, 
      name: 'home'
    },
  { 
      product_id: product82.id, 
      name: 'gifts'
    },
  { 
      product_id: product83.id, 
      name: 'gifts'
    },
  { 
      product_id: product84.id, 
      name: 'home'
    },
  { 
      product_id: product85.id, 
      name: 'home'
    },
  { 
      product_id: product86.id, 
      name: 'gifts'
    },
  { 
      product_id: product87.id, 
      name: 'home'
    },
  { 
      product_id: product88.id, 
      name: 'gifts'
    },
  { 
      product_id: product89.id, 
      name: 'gifts'
    },
  { 
      product_id: product90.id, 
      name: 'home'
    },
  { 
      product_id: product91.id, 
      name: 'kitchen'
    },
  { 
      product_id: product92.id, 
      name: 'kitchen'
    },
  { 
      product_id: product93.id, 
      name: 'women'
    },
  { 
      product_id: product94.id, 
      name: 'home'
    },
  { 
      product_id: product95.id, 
      name: 'teen'
    },
  { 
      product_id: product96.id, 
      name: 'home'
    },
  { 
      product_id: product97.id, 
      name: 'home'
    },
  { 
      product_id: product98.id, 
      name: 'men'
    },
  { 
      product_id: product99.id, 
      name: 'kitchen'
    },
  { 
      product_id: product100.id, 
      name: 'men'
    },
  { 
      product_id: product1.id, 
      name: 'gifts'
    },
  { 
      product_id: product2.id, 
      name: 'gifts'
    },
  { 
      product_id: product6.id, 
      name: 'teen'
    },
  { 
      product_id: product7.id, 
      name: 'men'
    },
  { 
      product_id: product9.id, 
      name: 'men'
    },
  { 
      product_id: product10.id, 
      name: 'kids'
    },
  { 
      product_id: product11.id, 
      name: 'kids'
    },
  { 
      product_id: product12.id, 
      name: 'gifts'
    },
  { 
      product_id: product13.id, 
      name: 'men'
    },
  { 
      product_id: product14.id, 
      name: 'kids'
    },
  { 
      product_id: product15.id, 
      name: 'fun'
    },
  { 
      product_id: product16.id, 
      name: 'gifts'
    },
  { 
      product_id: product17.id, 
      name: 'kids'
    },
  { 
      product_id: product18.id, 
      name: 'gifts'
    },
  { 
      product_id: product19.id, 
      name: 'gifts'
    },
  { 
      product_id: product20.id, 
      name: 'gifts'
    },
  { 
      product_id: product21.id, 
      name: 'gifts'
    },
  { 
      product_id: product24.id, 
      name: 'men'
    },
  { 
      product_id: product25.id, 
      name: 'home'
    },
  { 
      product_id: product26.id, 
      name: 'gifts'
    },
  { 
      product_id: product27.id, 
      name: 'women'
    },
  { 
      product_id: product28.id, 
      name: 'women'
    },
  { 
      product_id: product29.id, 
      name: 'art'
    },
  { 
      product_id: product30.id, 
      name: 'home'
    },
  { 
      product_id: product31.id, 
      name: 'home'
    },
  { 
      product_id: product33.id, 
      name: 'gifts'
    },
  { 
      product_id: product34.id, 
      name: 'teen'
    },
  { 
      product_id: product35.id, 
      name: 'teen'
    },
  { 
      product_id: product36.id, 
      name: 'teen'
    },
  { 
      product_id: product38.id, 
      name: 'gifts'
    },
  { 
      product_id: product39.id, 
      name: 'gifts'
    },
  { 
      product_id: product41.id, 
      name: 'women'
    },
  { 
      product_id: product42.id, 
      name: 'teen'
    },
  { 
      product_id: product43.id, 
      name: 'women'
    },
  { 
      product_id: product44.id, 
      name: 'men'
    },
  { 
      product_id: product45.id, 
      name: 'teen'
    },
  { 
      product_id: product46.id, 
      name: 'women'
    },
  { 
      product_id: product48.id, 
      name: 'women'
    },
  { 
      product_id: product50.id, 
      name: 'women'
    },
  { 
      product_id: product51.id, 
      name: 'gifts'
    },
  { 
      product_id: product52.id, 
      name: 'gifts'
    },
  { 
      product_id: product53.id, 
      name: 'gifts'
    },
  { 
      product_id: product54.id, 
      name: 'gifts'
    },
  { 
      product_id: product55.id, 
      name: 'gifts'
    },
  { 
      product_id: product56.id, 
      name: 'gifts'
    },
  { 
      product_id: product57.id, 
      name: 'gifts'
    },
  { 
      product_id: product58.id, 
      name: 'gifts'
    },
  { 
      product_id: product59.id, 
      name: 'gifts'
    },
  { 
      product_id: product60.id, 
      name: 'gifts'
    },
  { 
      product_id: product61.id, 
      name: 'gifts'
    },
  { 
      product_id: product62.id, 
      name: 'gifts'
    },
  { 
      product_id: product63.id, 
      name: 'gifts'
    },
  { 
      product_id: product64.id, 
      name: 'gifts'
    },
  { 
      product_id: product65.id, 
      name: 'gifts'
    },
  { 
      product_id: product66.id, 
      name: 'gifts'
    },
  { 
      product_id: product67.id, 
      name: 'gifts'
    },
  { 
      product_id: product68.id, 
      name: 'gifts'
    },
  { 
      product_id: product69.id, 
      name: 'gifts'
    },
  { 
      product_id: product70.id, 
      name: 'gifts'
    },
  { 
      product_id: product71.id, 
      name: 'gifts'
    },
  { 
      product_id: product72.id, 
      name: 'gifts'
    },
  { 
      product_id: product73.id, 
      name: 'gifts'
    },
  { 
      product_id: product74.id, 
      name: 'gifts'
    },
  { 
      product_id: product75.id, 
      name: 'gifts'
    },
  { 
      product_id: product76.id, 
      name: 'gifts'
    },
  { 
      product_id: product77.id, 
      name: 'gifts'
    },
  { 
      product_id: product78.id, 
      name: 'gifts'
    },
  { 
      product_id: product79.id, 
      name: 'fun'
    },
  { 
      product_id: product80.id, 
      name: 'women'
    },
  { 
      product_id: product81.id, 
      name: 'gifts'
    },
  { 
      product_id: product82.id, 
      name: 'men'
    },
  { 
      product_id: product83.id, 
      name: 'fun'
    },
  { 
      product_id: product84.id, 
      name: 'gifts'
    },
  { 
      product_id: product85.id, 
      name: 'gifts'
    },
  { 
      product_id: product86.id, 
      name: 'fun'
    },
  { 
      product_id: product87.id, 
      name: 'gifts'
    },
  { 
      product_id: product88.id, 
      name: 'men'
    },
  { 
      product_id: product90.id, 
      name: 'gifts'
    },
  { 
      product_id: product91.id, 
      name: 'men'
    },
  { 
      product_id: product92.id, 
      name: 'men'
    },
  { 
      product_id: product93.id, 
      name: 'gifts'
    },
  { 
      product_id: product94.id, 
      name: 'gifts'
    },
  { 
      product_id: product96.id, 
      name: 'gifts'
    },
  { 
      product_id: product97.id, 
      name: 'gifts'
    },
  { 
      product_id: product98.id, 
      name: 'women'
    },
  { 
      product_id: product100.id, 
      name: 'women'
    }
])
