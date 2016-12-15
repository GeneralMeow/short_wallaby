DROP DATABASE IF EXISTS short_wallaby_library;
CREATE DATABASE short_wallaby_library;

\c short_wallaby_library;

DROP TABLE IF EXISTS books;
CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  bookUrl VARCHAR,
  description VARCHAR
);

INSERT INTO books (title, author, bookUrl, description)
VALUES ('1984', 'George Orwell', 'images/book-cover-images/1984-1536x2028.jpg', 'View our feature on George Orwells 1984. Written in 1948, 1984 was George Orwell’s chilling prophecy about the future.'),('All The Birds, Singing', 'Evie Wyld', 'images/book-cover-images/allthebirdssinging-1536x2320.jpg', 'Jake Whyte has retreated to a remote farmhouse on a craggy British island, a place of ceaseless rains and battering winds, with only her collie and a flock of sheep as companions.'),('An Object Of Beauty', 'Steve Martin', 'images/book-cover-images/anobjectofbeatury-1536x2273.jpg', 'Lacey Yeager is young, captivating, and ambitious enough to take the NYC art world by storm. Groomed at Sothebys and hungry to keep climbing the social and career ladders put before her, Lacey charms men and women, old and young, rich and even richer with her magnetic charisma and liveliness. Her ascension to the highest tiers of the city parallel the soaring heights--and, at times, the dark lows--of the art world and the country from the late 1990s through today.'),('Area X', 'Jeff VanderMeer', 'images/book-cover-images/areax-1536x2043.jpg', 'Area X-a remote and lush terrain-has been cut off from the rest of the continent for decades. Nature has reclaimed the last vestiges of human civilization. The first expedition returned with reports of a pristine, Edenic landscape; all the members of the second expedition committed suicide; the third expedition died in a hail of gunfire as its members turned on one another; the members of the eleventh expedition returned as shadows of their former selves, and within months of their return, all had died of aggressive cancer. This is the twelfth expedition.'),('Bad Teeth', 'Dustin Long', 'images/book-cover-images/Bad-Teeth-Dustin-Long-1536x2302.jpg', 'Four interlocking narratives set in four American cities form a richly comic feast about love, academia, an elusive Tibetan novelist—and SOFA, a protest group so mysterious its very initials are open to interpretation.
Bad Teeth follows a cast of young literary men and women, each in a period of formation, in four very American cities—Brooklyn, Bloomington, Berkeley, and Bakersfield. A Pynchonesque treat, it’s four or more books in one: a bohemian satire, a campus comedy, a stoner’s reverie, and a quadruple love story. The plots coalesce around the search for a mysterious author, Jigme Drolma the Tibetan David Foster Wallace, who might in fact be a plagiarist. But how does the self-styled arch-magician Nicholas Bendix figure into this? What will happen when SOFA unleashes the Apocalypse? And whats to become of Lump, the cat?');
