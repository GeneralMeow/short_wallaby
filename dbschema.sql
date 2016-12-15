DROP DATABASE IF EXISTS short_wallaby_library;
CREATE DATABASE short_wallaby_library;

\c short_wallaby_library;

DROP TABLE IF EXISTS books;
CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  bookUrl VARCHAR(2000),
  description VARCHAR(2000)
);

INSERT INTO books (title, author, bookUrl, description)
VALUES ("1984", "George Orwell", "images/book-cover-images/1984-1536x2028.jpg", "View our feature on George Orwell’s 1984.Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, Orwell’s narrative is timelier than ever. 1984 presents a startling and haunting vision of the world, so powerful that it is completely convincing from start to finish. No one can deny the power of this novel, its hold on the imaginations of multiple generations of readers, or the resiliency of its admonitions—a legacy that seems only to grow with the passage of time."),("All The Birds, Singing", "Evie Wyld", "images/book-cover-images/allthebirdssinging-1536x2320.jpg", "Jake Whyte has retreated to a remote farmhouse on a craggy British island, a place of ceaseless rains and battering winds, with only her collie and a flock of sheep as companions. But something—or someone—has begun picking off her sheep one by one. There are foxes in the woods, a strange man wandering the island, and rumors of a mysterious beast prowling at night. And there is Jake’s relentless past—one she tried to escape thousands of miles away and years ago, concealed in stubborn silence and isolation and the scars that stripe her back. With exceptional artistry, All the Birds, Singing plumbs a life of fierce struggle and survival, sounding depths of unexpected beauty and hard-won redemption."),("An Object Of Beauty", "Steve Martin", "images/book-cover-images/anobjectofbeatury-1536x2273.jpg", "Lacey Yeager is young, captivating, and ambitious enough to take the NYC art world by storm. Groomed at Sotheby's and hungry to keep climbing the social and career ladders put before her, Lacey charms men and women, old and young, rich and even richer with her magnetic charisma and liveliness. Her ascension to the highest tiers of the city parallel the soaring heights--and, at times, the dark lows--of the art world and the country from the late 1990s through today."),("Area X", "Jeff VanderMeer", "images/book-cover-images/areax-1536x2043.jpg", "Area X-a remote and lush terrain-has been cut off from the rest of the continent for decades. Nature has reclaimed the last vestiges of human civilization. The first expedition returned with reports of a pristine, Edenic landscape; all the members of the second expedition committed suicide; the third expedition died in a hail of gunfire as its members turned on one another; the members of the eleventh expedition returned as shadows of their former selves, and within months of their return, all had died of aggressive cancer.
This is the twelfth expedition."),("Bad Teeth", "Dustin Long", "images/book-cover-images/Bad-Teeth-Dustin-Long-1536x2302.jpg", "Four interlocking narratives set in four American cities form a richly comic feast about love, academia, an elusive Tibetan novelist—and SOFA, a protest group so mysterious its very initials are open to interpretation.
Bad Teeth follows a cast of young literary men and women, each in a period of formation, in four very American cities—Brooklyn, Bloomington, Berkeley, and Bakersfield. A Pynchonesque treat, it’s four (or more) books in one: a bohemian satire, a campus comedy, a stoner’s reverie, and a quadruple love story. The plots coalesce around the search for a mysterious author, Jigme Drolma (“the Tibetan David Foster Wallace”), who might in fact be a plagiarist. But how does the self-styled arch-magician Nicholas Bendix figure into this? What will happen when SOFA unleashes the “Apocalypse”? And what’s to become of Lump, the cat?"), (
  "The Book Of Dead Philosophers",
  "Simon Critchley",
  "images/book-cover-images/book-of-dead-philosophers-1536x2760.png",
  ""
),
(
  "Breathing Room",
  "Peter Davison",
  "images/book-cover-images/breathingroom-1536x2233.jpg",
  ""
),
(
  "Burn This Book",
  "Toni Morrison (ed.)",
  "images/book-cover-images/burn-this-book-1536x2306.jpg",
  "images/book-cover-images/burn-this-book-1536x2306.jpg"
),
(
  "Columbine",
  "Dave Cullen",
  "images/book-cover-images/columbine-1536x2370.jpg",
  ""
),
(
  "The Curious Incident Of The Dog In The Night-time",
  "Mark Hadden",
  "images/book-cover-images/curious-incident-of-the-dog-1536x2358.png",
  ""
),
(
  "David Lynch",
  "David Lynch",
  "images/book-cover-images/davidlynch-1536x1987.jpg",
  ""
),
(
  "December",
  "Elizabeth Hartley Winthrop",
  "images/book-cover-images/december-1536x2203.jpg",
  ""
),
(
  "Dept. Of Speculation",
  "Jenny Offill",
  "images/book-cover-images/deptofspeculation-1536x2357.jpg",
  ""
),
(
  "Devil In The Details: Scenes From An Obsessive Girlhood",
  "Jennifer Traig",
  "images/book-cover-images/devilinthedetails-1060x1590.jpg",
  ""
),
(
  "Dracula",
  "Bram Stoker",
  "images/book-cover-images/draculabramstoker-1536x2369.jpg",
  ""
),
(
  "Dyna-Mite",
  "Various",
  "images/book-cover-images/dyna_mite.png",
  ""
),
(
  "Elsewhere; A Curated Lifestyle",
  "Various",
  "images/book-cover-images/elsewhere.png",
  ""
),
(
  "The End Of Food",
  "Paul Roberts",
  "images/book-cover-images/endoffood-1536x2311.jpg",
  ""
),
(
  "An Ethics Of Interrogation",
  "Michael Skerker",
  "images/book-cover-images/ethics-of-interrogation-1536x2291.png",
  ""
),
(
  "Euphoria",
  "Lily King",
  "images/book-cover-images/euphoria-1536x2304.jpg",
  ""
),
(
  "Everything Leads To You",
  "Nina Lacour",
  "images/book-cover-images/everythinglleadstoyou-1536x2317.jpg",
  ""
),
(
  "Everything That Makes You",
  "Moriah McStay",
  "images/book-cover-images/everythingthatmakesyou-1536x2316.jpg",
  ""
),
(
  "Fight Club",
  "Chuck Palahniuk",
  "images/book-cover-images/fight-club.jpg",
  ""
),
(
  "The Early Years",
  "Gabriel Garcia Marquez",
  "images/book-cover-images/gabriel_garcia_marquez.large_-1060x1609.jpg",
  ""
),
(
  "A General Theory Of Love",
  "Lewis, Amini, Lannon",
  "images/book-cover-images/general-theory-of-love-1536x2368.jpg",
  ""
),
(
  "The Great Gatsby",
  "F. Scott Fitzgerald",
  "images/book-cover-images/great-gatsby.jpg",
  ""
),
(
  "How The Light Gets In",
  "Pat Schneider",
  "images/book-cover-images/howthelight-1536x2304.jpg",
  ""
),
(
  "How To Drink",
  "Victoria Moore",
  "images/book-cover-images/howtodrink-1536x2051.jpg",
  ""
),
(
  "How To Grow The Peanut",
  "George Washington Carver",
  "images/book-cover-images/howtogrowthepeanut-1536x2313.jpg",
  ""
),
(
  "Inside Out And Back Again",
  "Thanhha Lai",
  "images/book-cover-images/insideoutandbackagain-1060x1598.jpg",
  ""
),
(
  "Isaac's Style Book",
  "Various",
  "images/book-cover-images/isaacstylebook-1536x1975.jpg",
  ""
),
(
  "Jaws",
  "Peter Benchley",
  "images/book-cover-images/jaws-1536x2161.jpg",
  ""
),
(
  "Viagem Ao Centro Da Terra",
  "Julio Verne",
  "images/book-cover-images/juliovernes-1060x1625.jpg",
  ""
),
(
  "Little Red Riding Hood",
  "Trina Schart Hyman",
  "images/book-cover-images/littleredridinghood-1536x1055.jpg",
  ""
),
(
  "Loneliness",
  "Cacioppo and Patrick",
  "images/book-cover-images/loneliness_4327-1536x2311.jpg",
  ""
),
(
  "Making The Climb",
  "John C. Bowling",
  "images/book-cover-images/makingtheclimb-1536x2212.jpg",
  ""
),
(
  "Middle C",
  "William H. Glass",
  "images/book-cover-images/middlec-1536x2273-1.jpg",
  ""
),
(
  "Never Let Me Go",
  "Kazuo Ishiguro",
  "images/book-cover-images/never-let-me-go.jpg",
  ""
),
(
  "Nobody Is Ever Missing",
  "Catherine Lacey",
  "images/book-cover-images/nobodyisevermissing-1536x2313.jpg",
  ""
),
(
  "Organic",
  "Various",
  "images/book-cover-images/organic.png",
  ""
),
(
  "Red Queen",
  "Victoria Aveyard",
  "images/book-cover-images/redqueen-1060x1592.jpg",
  ""
),
(
  "Something For The Pain",
  "Paul Austin",
  "images/book-cover-images/allthebirdssinging-1536x2320.jpg",
  ""
),
(
  "Spent",
  "Geoffrey Miller",
  "images/book-cover-images/spent-1536x2366.jpg",
  ""
),
(
  "Tampa",
  "Alissa Nutting",
  "images/book-cover-images/tampa-1536x2459.jpg",
  ""
),
(
  "The Disappointment Artist",
  "Jonathan Lethem",
  "images/book-cover-images/the_disappointment_artist-1536x2334.jpg",
  ""
),
(
  "The Heist",
  "Daryle S.",
  "images/book-cover-images/the-heist.png",
  ""
),
(
  "The Jazz Singer",
  "Miles David",
  "images/book-cover-images/the-jazz-singer-1536x2451.jpg",
  ""
),
(
  "The Son",
  "Jo Nesbo",
  "images/book-cover-images/the-son-1536x2290.jpg",
  ""
),
(
  "The Stranger",
  "Albert Camus",
  "images/book-cover-images/the-stranger.jpg",
  ""
),
(
  "The Alchemist",
  "Paolo Coelho",
  "images/book-cover-images/thealchemist-1536x1992.jpg",
  ""
),
(
  "The Boy Who Couldn't Sleep And Never Had To",
  "DC Pierson",
  "images/book-cover-images/theboywhocouldnt-1060x1635.jpg",
  ""
),
(
  "The Brief History Of The Dead",
  "Kevin Brockmeier",
  "images/book-cover-images/thebriefhistoryofthedead.jpg",
  ""
),
(
  "The Flame Alphabet",
  "Ben Marcus",
  "images/book-cover-images/theflamealphabet-1060x1585.jpg",
  ""
),
(
  "The Light Between Oceans",
  "M.L. Steadman",
  "images/book-cover-images/thelightbetweenoceans-1536x2347.jpg",
  ""
),
(
  "The Lord Of The Flies",
  "William Goldman",
  "images/book-cover-images/thelordoftheflies-1536x2309.jpg",
  ""
),
(
  "The Shallows",
  "Nicholas Carr",
  "images/book-cover-images/theshallows-1536x2332-1.jpg",
  ""
),
(
  "The Sky Is Everywhere",
  "Jandy Nelson",
  "images/book-cover-images/theskyiseverywhere-1536x2308.jpg",
  ""
),
(
  "The Wealth Of Nations",
  "Adam Smith",
  "images/book-cover-images/thewealthofthenations-1060x1640.jpg",
  ""
),
(
  "The Wonderful Wizard Of Oz",
  "L. Frank Baum",
  "images/book-cover-images/thewonderfulwizard-1536x2381.jpeg",
  ""
),
(
  "To Kill A Mockingbird",
  "Harper Lee",
  "images/book-cover-images/tokillamockinbird-1536x2435.png",
  ""
),
(
  "Tokyo On Foot",
  "Florent Chavouet",
  "images/book-cover-images/tokyoonfoot-1060x1448.jpg",
  ""
),
(
  "Treasure Island",
  "Robert Louis Stevenson",
  "images/book-cover-images/treasureisland-1060x1500.jpg",
  ""
),
(
  "Undiscovered Gyrl",
  "Robert Louis Stevenson",
  "images/book-cover-images/undiscovered-gyrl-1536x2369.jpg",
  ""
),
(
  "White Like Me",
  "Tim Wise",
  "images/book-cover-images/White_Like_Melarge-1536x2378.jpg",
  ""
),
(
  "A Novel Of Zelda Fitzgerald",
  "Therese Anne Fowler",
  "images/book-cover-images/zanovelof-1536x2207.jpg",
  ""
)
