DROP SCHEMA IF EXISTS ANIME_DB;
CREATE DATABASE IF NOT EXISTS ANIME_DB;
USE ANIME_DB;

CREATE TABLE Anime(
   uid        INTEGER  NOT NULL PRIMARY KEY,
   title      VARCHAR(100) NOT NULL,
   synopsis   VARCHAR(2745),
   genre      VARCHAR(153) NOT NULL,
   aired      VARCHAR(28) NOT NULL,
   episodes   NUMERIC(6,1),
   members    INTEGER  NOT NULL,
   popularity INTEGER  NOT NULL,
   ranked     NUMERIC(7,1),
   score      VARCHAR(18),
   img_url    VARCHAR(56),
   link   VARCHAR(138) NOT NULL
);

CREATE TABLE MyList
AS (SELECT uid, title, img_url,  score
	FROM Anime);
    
ALTER TABLE MyList
ADD myscore VARCHAR(18) NOT NULL,
ADD  mycomment VARCHAR(400) NOT NULL;

-- insert statements into anime --

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (1535,'Death Note','A shinigami, as a god of death, can kill any person—provided they see their victim''s face and write their victim''s name in a notebook called a Death Note. One day, Ryuk, bored by the shinigami lifestyle and interested in seeing how a human would use a Death Note, drops one into the human realm. 
 
High school student and prodigy Light Yagami stumbles upon the Death Note and—since he deplores the state of the world—tests the deadly notebook by writing a criminal''s name in it. When the criminal dies immediately following his experiment with the Death Note, Light is greatly surprised and quickly recognizes how devastating the power that has fallen into his hands could be.             
 
With this divine capability, Light decides to extinguish all criminals in order to build a new world where crime does not exist and people worship him as a god. Police, however, quickly discover that a serial killer is targeting criminals and, consequently, try to apprehend the culprit. To do this, the Japanese investigators count on the assistance of the best detective in the world: a young and eccentric man known only by the name of L. 
 
[Written by MAL Rewrite]','Mystery, Police, Psychological, Supernatural, Thriller, Shounen','Oct 4, 2006 to Jun 27, 2007',37,1871043,1,52,8.65,'https://cdn.myanimelist.net/images/anime/9/9453.jpg','https://myanimelist.net/anime/1535/Death_Note');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (23273,'Shigatsu wa Kimi no Uso','Music accompanies the path of the human metronome, the prodigious pianist Kousei Arima. But after the passing of his mother, Saki Arima, Kousei falls into a downward spiral, rendering him unable to hear the sound of his own piano. 
  
Two years later, Kousei still avoids the piano, leaving behind his admirers and rivals, and lives a colorless life alongside his friends Tsubaki Sawabe and Ryouta Watari. However, everything changes when he meets a beautiful violinist, Kaori Miyazono, who stirs up his world and sets him on a journey to face music again. 
 
Based on the manga series of the same name,  Shigatsu wa Kimi no Uso  approaches the story of Kousei''s recovery as he discovers that music is more than playing each note perfectly, and a single melody can bring in the fresh spring air of April. 
 
[Written by MAL Rewrite]','Drama, Music, Romance, School, Shounen','Oct 10, 2014 to Mar 20, 2015',22,995473,28,24,8.83,'https://cdn.myanimelist.net/images/anime/3/67177.jpg','https://myanimelist.net/anime/23273/Shigatsu_wa_Kimi_no_Uso');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (38000,'Kimetsu no Yaiba','Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado''s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night. 
 
When he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister''s humanity. 
 
[Written by MAL Rewrite]','Action, Demons, Historical, Shounen, Supernatural','Apr 6, 2019 to Sep 28, 2019',26,575037,106,19,8.92,'https://cdn.myanimelist.net/images/anime/1286/99889.jpg','https://myanimelist.net/anime/38000/Kimetsu_no_Yaiba');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (20583,'Haikyuu!!','Inspired after watching a volleyball ace nicknamed "Little Giant" in action, small-statured Shouyou Hinata revives the volleyball club at his middle school. The newly-formed team even makes it to a tournament; however, their first match turns out to be their last when they are brutally squashed by the "King of the Court," Tobio Kageyama. Hinata vows to surpass Kageyama, and so after graduating from middle school, he joins Karasuno High School''s volleyball team—only to find that his sworn rival, Kageyama, is now his teammate. 
 
Thanks to his short height, Hinata struggles to find his role on the team, even with his superior jumping power. Surprisingly, Kageyama has his own problems that only Hinata can help with, and learning to work together appears to be the only way for the team to be successful. Based on Haruichi Furudate''s popular shounen manga of the same name,  Haikyuu!!  is an exhilarating and emotional sports comedy following two determined athletes as they attempt to patch a heated rivalry in order to make their high school volleyball team the best in Japan. 
 
[Written by MAL Rewrite]','Comedy, Sports, Drama, School, Shounen','Apr 6, 2014 to Sep 21, 2014',25,684654,75,56,8.62,'https://cdn.myanimelist.net/images/anime/7/76014.jpg','https://myanimelist.net/anime/20583/Haikyuu');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (32379,'Berserk','Now branded for death and destined to be hunted by demons until the day he dies, Guts embarks on a journey to defy such a gruesome fate, as waves of beasts relentlessly pursue him. Steeling his resolve, he takes up the monstrous blade Dragonslayer and vows to exact vengeance on the one responsible, hunting down the very man he once looked up to and considered a friend. 
 
Along the way, he encounters some unlikely allies, such as a small elf named Puck, and Isidro, a young thief looking to learn swordsmanship from the former mercenary. As the ragtag group slowly comes together after having decided to join Guts in his quest, they will face incredible danger unlike anything they have ever experienced before. 
 
[Written by MAL Rewrite]','Action, Adventure, Demons, Drama, Fantasy, Horror','Jul 1, 2016 to Sep 16, 2016',12,197167,547,5560,6.6,'https://cdn.myanimelist.net/images/anime/10/79352.jpg','https://myanimelist.net/anime/32379/Berserk');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (22319,'Tokyo Ghoul','Tokyo has become a cruel and merciless city—a place where vicious creatures called “ghouls” exist alongside humans. The citizens of this once great metropolis live in constant fear of these bloodthirsty savages and their thirst for human flesh. However, the greatest threat these ghouls pose is their dangerous ability to masquerade as humans and blend in with society. 
 
Based on the best-selling supernatural horror manga by Sui Ishida,  Tokyo Ghoul  follows Ken Kaneki, a shy, bookish college student, who is instantly drawn to Rize Kamishiro, an avid reader like himself. However, Rize is not exactly who she seems, and this unfortunate meeting pushes Kaneki into the dark depths of the ghouls'' inhuman world. In a twist of fate, Kaneki is saved by the enigmatic waitress Touka Kirishima, and thus begins his new, secret life as a half-ghoul/half-human who must find a way to integrate into both societies. 
 
[Written by MAL Rewrite]','Action, Mystery, Horror, Psychological, Supernatural, Drama','Jul 4, 2014 to Sep 19, 2014',12,1346036,6,674,7.93,'https://cdn.myanimelist.net/images/anime/5/64449.jpg','https://myanimelist.net/anime/22319/Tokyo_Ghoul');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (28121,'Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka','Life in the bustling city of Orario is never dull, especially for Bell Cranel, a naïve young man who hopes to become the greatest adventurer in the land. After a chance encounter with the lonely goddess, Hestia, his dreams become a little closer to reality. With her support, Bell embarks on a fantastic quest as he ventures deep within the city''s monster-filled catacombs, known only as the "Dungeon." Death lurks around every corner in the cavernous depths of this terrifying labyrinth, and a mysterious power moves amidst the shadows. 
 
Even on the surface, survival is a hard-earned privilege. Indeed, nothing is ever certain in a world where gods and humans live and work together, especially when they often struggle to get along. One thing is for sure, though: a myriad of blunders, triumphs and friendships awaits the dauntlessly optimistic protagonist of this herculean tale. 
 
[Written by MAL Rewrite]','Action, Adventure, Comedy, Romance, Fantasy','Apr 4, 2015 to Jun 27, 2015',13,783511,59,952,7.78,'https://cdn.myanimelist.net/images/anime/2/70187.jpg','https://myanimelist.net/anime/28121/Dungeon_ni_Deai_wo_Motomeru_no_wa_Machigatteiru_Darou_ka');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (23755,'Nanatsu no Taizai','In a world similar to the European Middle Ages, the feared yet revered Holy Knights of Britannia use immensely powerful magic to protect the region of Britannia and its kingdoms. However, a small subset of the Knights supposedly betrayed their homeland and turned their blades against their comrades in an attempt to overthrow the ruler of Liones. They were defeated by the Holy Knights, but rumors continued to persist that these legendary knights, called the "Seven Deadly Sins," were still alive. Ten years later, the Holy Knights themselves staged a coup d’état, and thus became the new, tyrannical rulers of the Kingdom of Liones. 
 
Based on the best-selling manga series of the same name,  Nanatsu no Taizai  follows the adventures of Elizabeth, the third princess of the Kingdom of Liones, and her search for the Seven Deadly Sins. With their help, she endeavors to not only take back her kingdom from the Holy Knights, but to also seek justice in an unjust world. 
  
[Written by MAL Rewrite]','Action, Adventure, Ecchi, Fantasy, Magic, Shounen','Oct 5, 2014 to Mar 29, 2015',24,946095,38,397,8.15,'https://cdn.myanimelist.net/images/anime/8/65409.jpg','https://myanimelist.net/anime/23755/Nanatsu_no_Taizai');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (269,'Bleach','Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo''s family from the assailant. To save his family, Ichigo accepts Rukia''s offer of taking her powers and becomes a Soul Reaper as a result. 
 
However, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that plague their town. However, he is not alone in his fight, as he is later joined by his friends—classmates Orihime Inoue, Yasutora Sado, and Uryuu Ishida—who each have their own unique abilities. As Ichigo and his comrades get used to their new duties and support each other on and off the battlefield, the young Soul Reaper soon learns that the Hollows are not the only real threat to the human world. 
 
[Written by MAL Rewrite]','Action, Adventure, Comedy, Super Power, Supernatural, Shounen','Oct 5, 2004 to Mar 27, 2012',366,1002578,25,757,7.87,'https://cdn.myanimelist.net/images/anime/3/40451.jpg','https://myanimelist.net/anime/269/Bleach');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (20,'Naruto','Moments prior to Naruto Uzumaki''s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi''s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto. 
 
Now, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place in the village, while his burning desire to become the Hokage of Konohagakure leads him not only to some great new friends, but also some deadly foes. 
 
[Written by MAL Rewrite]','Action, Adventure, Comedy, Super Power, Martial Arts, Shounen','Oct 3, 2002 to Feb 8, 2007',220,1280914,9,670,7.93,'https://cdn.myanimelist.net/images/anime/13/17405.jpg','https://myanimelist.net/anime/20/Naruto');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (223,'Dragon Ball','Gokuu Son is a young boy who lives in the woods all alone—that is, until a girl named Bulma runs into him in her search for a set of magical objects called the "Dragon Balls." Since the artifacts are said to grant one wish to whoever collects all seven, Bulma hopes to gather them and wish for a perfect boyfriend. Gokuu happens to be in possession of a dragon ball, but unfortunately for Bulma, he refuses to part ways with it, so she makes him a deal: he can tag along on her journey if he lets her borrow the dragon ball''s power. With that, the two set off on the journey of a lifetime. 
 
They don''t go on the journey alone. On the way, they meet the old Muten-Roshi and wannabe disciple Kuririn, with whom Gokuu trains to become a stronger martial artist for the upcoming World Martial Arts Tournament. However, it''s not all fun and games; the ability to make any wish come true is a powerful one, and there are others who would do much worse than just wishing for a boyfriend. To stop those who would try to abuse the legendary power, they train to become stronger fighters, using their newfound strength to help the people around them along the way. 
 
[Written by MAL Rewrite]','Adventure, Comedy, Fantasy, Martial Arts, Shounen, Super Power','Feb 26, 1986 to Apr 12, 1989',153,565538,103,425,8.12,'https://cdn.myanimelist.net/images/anime/1887/92364.jpg','https://myanimelist.net/anime/223/Dragon_Ball');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (37430,'Tensei shitara Slime Datta Ken','Thirty-seven-year-old Satoru Mikami is a typical corporate worker, who is perfectly content with his monotonous lifestyle in Tokyo, other than failing to nail down a girlfriend even once throughout his life. In the midst of a casual encounter with his colleague, he falls victim to a random assailant on the streets and is stabbed. However, while succumbing to his injuries, a peculiar voice echoes in his mind, and recites a bunch of commands which the dying man cannot make sense of. 
 
When Satoru regains consciousness, he discovers that he has reincarnated as a goop of slime in an unfamiliar realm. In doing so, he acquires newfound skills—notably, the power to devour anything and mimic its appearance and abilities. He then stumbles upon the sealed Catastrophe-level monster "Storm Dragon" Veldora who had been sealed away for the past 300 years for devastating a town to ashes. Sympathetic to his predicament, Satoru befriends him, promising to assist in destroying the seal. In return, Veldora bestows upon him the name Rimuru Tempest to grant him divine protection.  
 
Now, liberated from the mundanities of his past life, Rimuru embarks on a fresh journey with a distinct goal in mind. As he grows accustomed to his new physique, his gooey antics ripple throughout the world, gradually altering his fate. 
 
[Written by MAL Rewrite]','Fantasy, Shounen','Oct 2, 2018 to Mar 19, 2019',24,439570,177,399,8.15,'https://cdn.myanimelist.net/images/anime/1694/93337.jpg','https://myanimelist.net/anime/37430/Tensei_shitara_Slime_Datta_Ken');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (21,'One Piece','Gol D. Roger was known as the "Pirate King," the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King. 
 
Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy’s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece. 
 
[Written by MAL Rewrite]','Action, Adventure, Comedy, Super Power, Drama, Fantasy, Shounen','Oct 20, 1999 to ?',NULL,948342,35,86,8.53,'https://cdn.myanimelist.net/images/anime/6/73245.jpg','https://myanimelist.net/anime/21/One_Piece');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (31964,'Boku no Hero Academia','The appearance of "quirks," newly discovered super powers, has been steadily increasing over the years, with 80 percent of humanity possessing various abilities from manipulation of elements to shapeshifting. This leaves the remainder of the world completely powerless, and Izuku Midoriya is one such individual. 
 
Since he was a child, the ambitious middle schooler has wanted nothing more than to be a hero. Izuku''s unfair fate leaves him admiring heroes and taking notes on them whenever he can. But it seems that his persistence has borne some fruit: Izuku meets the number one hero and his personal idol, All Might. All Might''s quirk is a unique ability that can be inherited, and he has chosen Izuku to be his successor! 
 
Enduring many months of grueling training, Izuku enrolls in UA High, a prestigious high school famous for its excellent hero training program, and this year''s freshmen look especially promising. With his bizarre but talented classmates and the looming threat of a villainous organization, Izuku will soon learn what it really means to be a hero. 
 
[Written by MAL Rewrite]','Action, Comedy, School, Shounen, Super Power','Apr 3, 2016 to Jun 26, 2016',13,1223690,12,191,8.35,'https://cdn.myanimelist.net/images/anime/10/78745.jpg','https://myanimelist.net/anime/31964/Boku_no_Hero_Academia');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (4224,'Toradora!','Ryuuji Takasu is a gentle high school student with a love for housework; but in contrast to his kind nature, he has an intimidating face that often gets him labeled as a delinquent. On the other hand is Taiga Aisaka, a small, doll-like student, who is anything but a cute and fragile girl. Equipped with a wooden katana and feisty personality, Taiga is known throughout the school as the "Palmtop Tiger." 
 
One day, an embarrassing mistake causes the two students to cross paths. Ryuuji discovers that Taiga actually has a sweet side: she has a crush on the popular vice president, Yuusaku Kitamura, who happens to be his best friend. But things only get crazier when Ryuuji reveals that he has a crush on Minori Kushieda—Taiga''s best friend! 
 
 Toradora!  is a romantic comedy that follows this odd duo as they embark on a quest to help each other with their respective crushes, forming an unlikely alliance in the process. 
 
[Written by MAL Rewrite]','Slice of Life, Comedy, Romance, School','Oct 2, 2008 to Mar 26, 2009',25,1153720,14,204,8.34,'https://cdn.myanimelist.net/images/anime/13/22128.jpg','https://myanimelist.net/anime/4224/Toradora');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (32281,'Kimi no Na wa','Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture. 
 
One day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki''s body! Elsewhere, Taki finds himself living Mitsuha''s life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another. 
 
 Kimi no Na wa.  revolves around Mitsuha and Taki''s actions, which begin to have a dramatic impact on each other''s lives, weaving them into a fabric held together by fate and circumstance. 
 
[Written by MAL Rewrite]','Romance, Supernatural, School, Drama','Aug 26, 2016',1,1139878,15,4,9.09,'https://cdn.myanimelist.net/images/anime/5/87048.jpg','https://myanimelist.net/anime/32281/Kimi_no_Na_wa');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (20507,'Noragami','In times of need, if you look in the right place, you just may see a strange telephone number scrawled in red. If you call this number, you will hear a young man introduce himself as the Yato God. 
 
Yato is a minor deity and a self-proclaimed "Delivery God," who dreams of having millions of worshippers. Without a single shrine dedicated to his name, however, his goals are far from being realized. He spends his days doing odd jobs for five yen apiece, until his weapon partner becomes fed up with her useless master and deserts him. 
 
Just as things seem to be looking grim for the god, his fortune changes when a middle school girl, Hiyori Iki, supposedly saves Yato from a car accident, taking the hit for him. Remarkably, she survives, but the event has caused her soul to become loose and hence able to leave her body. Hiyori demands that Yato return her to normal, but upon learning that he needs a new partner to do so, reluctantly agrees to help him find one. And with Hiyori''s help, Yato''s luck may finally be turning around. 
 
[Written by MAL Rewrite]','Action, Adventure, Comedy, Supernatural, Shounen','Jan 5, 2014 to Mar 23, 2014',12,1125472,16,445,8.1,'https://cdn.myanimelist.net/images/anime/9/77809.jpg','https://myanimelist.net/anime/20507/Noragami');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (9919,'Ao no Exorcist','Humans and demons are two sides of the same coin, as are Assiah and Gehenna, their respective worlds. The only way to travel between the realms is by the means of possession, like in ghost stories. However, Satan, the ruler of Gehenna, cannot find a suitable host to possess and therefore, remains imprisoned in his world. In a desperate attempt to conquer Assiah, he sends his son instead, intending for him to eventually grow into a vessel capable of possession by the demon king. 
 
 Ao no Exorcist  follows Rin Okumura who appears to be an ordinary, somewhat troublesome teenager—that is until one day he is ambushed by demons. His world turns upside down when he discovers that he is in fact the very son of Satan and that his demon father wishes for him to return so they can conquer Assiah together. Not wanting to join the king of Gehenna, Rin decides to begin training to become an exorcist so that he can fight to defend Assiah alongside his brother Yukio. 
 
[Written by MAL Rewrite]','Action, Demons, Fantasy, Shounen, Supernatural','Apr 17, 2011 to Oct 2, 2011',25,1085158,17,1030,7.74,'https://cdn.myanimelist.net/images/anime/10/75195.jpg','https://myanimelist.net/anime/9919/Ao_no_Exorcist');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (21881,'Sword Art Online II','A year after escaping Sword Art Online, Kazuto Kirigaya has been settling back into the real world. However, his peace is short-lived as a new incident occurs in a game called Gun Gale Online, where a player by the name of Death Gun appears to be killing people in the real world by shooting them in-game. Approached by officials to assist in investigating the murders, Kazuto assumes his persona of Kirito once again and logs into Gun Gale Online, intent on stopping the killer. 
 
Once inside, Kirito meets Sinon, a highly skilled sniper afflicted by a traumatic past. She is soon dragged in his chase after Death Gun, and together they enter the Bullet of Bullets, a tournament where their target is sure to appear. Uncertain of Death Gun''s real powers, Kirito and Sinon race to stop him before he has the chance to claim another life. Not everything goes smoothly, however, as scars from the past impede their progress. In a high-stakes game where the next victim could easily be one of them, Kirito puts his life on the line in the virtual world once more. 
 
[Written by MAL Rewrite]','Action, Game, Adventure, Romance, Fantasy','Jul 5, 2014 to Dec 20, 2014',24,1077494,18,3618,7.05,'https://cdn.myanimelist.net/images/anime/11/65185.jpg','https://myanimelist.net/anime/21881/Sword_Art_Online_II');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (31240,'Re:Zero kara Hajimeru Isekai Seikatsu','When Subaru Natsuki leaves the convenience store, the last thing he expects is to be wrenched from his everyday life and dropped into a fantasy world. Things aren''t looking good for the bewildered teenager; however, not long after his arrival, he is attacked by some thugs. Armed with only a bag of groceries and a now useless cell phone, he is quickly beaten to a pulp. Fortunately, a mysterious beauty named Satella, in hot pursuit after the one who stole her insignia, happens upon Subaru and saves him. In order to thank the honest and kindhearted girl, Subaru offers to help in her search, and later that night, he even finds the whereabouts of that which she seeks. But unbeknownst to them, a much darker force stalks the pair from the shadows, and just minutes after locating the insignia, Subaru and Satella are brutally murdered. 
 
However, Subaru immediately reawakens to a familiar scene—confronted by the same group of thugs, meeting Satella all over again—the enigma deepens as history inexplicably repeats itself. 
 
[Written by MAL Rewrite]','Drama, Fantasy, Psychological, Thriller','Apr 4, 2016 to Sep 19, 2016',25,1018076,23,202,8.34,'https://cdn.myanimelist.net/images/anime/11/79410.jpg','https://myanimelist.net/anime/31240/Re_Zero_kara_Hajimeru_Isekai_Seikatsu');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (22199,'Akame ga Kill!','Night Raid is the covert assassination branch of the Revolutionary Army, an uprising assembled to overthrow Prime Minister Honest, whose avarice and greed for power has led him to take advantage of the child emperor''s inexperience. Without a strong and benevolent leader, the rest of the nation is left to drown in poverty, strife, and ruin. Though the Night Raid members are all experienced killers, they understand that taking lives is far from commendable and that they will likely face retribution as they mercilessly eliminate anyone who stands in the revolution''s way. 
 
This merry band of assassins'' newest member is Tatsumi, a naïve boy from a remote village who had embarked on a journey to help his impoverished hometown and was won over by not only Night Raid''s ideals, but also their resolve.  Akame ga Kill!  follows Tatsumi as he fights the Empire and comes face-to-face with powerful weapons, enemy assassins, challenges to his own morals and values, and ultimately, what it truly means to be an assassin with a cause. 
 
[Written by MAL Rewrite]','Action, Adventure, Drama, Fantasy, Shounen','Jul 7, 2014 to Dec 15, 2014',24,1015302,24,1115,7.71,'https://cdn.myanimelist.net/images/anime/1429/95946.jpg','https://myanimelist.net/anime/22199/Akame_ga_Kill');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (3588,'Soul Eater','Death City is home to the famous Death Weapon Meister Academy, a technical academy headed by the Shinigami—Lord Death himself. Its mission: to raise "Death Scythes" for the Shinigami to wield against the many evils of their fantastical world. These Death Scythes, however, are not made from physical weapons; rather, they are born from human hybrids who have the ability to transform their bodies into Demon Weapons, and only after they have consumed the souls of 99 evil beings and one witch''s soul. 
 
Soul Eater Evans, a Demon Scythe who only seems to care about what''s cool, aims to become a Death Scythe with the help of his straight-laced wielder, or meister, Maka Albarn. The contrasting duo work and study alongside the hot headed Black☆Star and his caring weapon Tsubaki, as well as the Shinigami''s own son, Death the Kid, an obsessive-compulsive dual wielder of twin pistols Patty and Liz. 
 
 Soul Eater  follows these students of Shibusen as they take on missions to collect souls and protect the city from the world''s threats while working together under the snickering sun to become sounder in mind, body, and soul. 
 
[Written by MAL Rewrite]','Action, Fantasy, Comedy, Supernatural, Shounen','Apr 7, 2008 to Mar 30, 2009',51,970841,32,606,7.99,'https://cdn.myanimelist.net/images/anime/9/7804.jpg','https://myanimelist.net/anime/3588/Soul_Eater');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (30831,'Kono Subarashii Sekai ni Shukufuku wo!','After dying a laughable and pathetic death on his way back from buying a game, high school student and recluse Kazuma Satou finds himself sitting before a beautiful but obnoxious goddess named Aqua. She provides the NEET with two options: continue on to heaven or reincarnate in every gamer''s dream—a real fantasy world! Choosing to start a new life, Kazuma is quickly tasked with defeating a Demon King who is terrorizing villages. But before he goes, he can choose one item of any kind to aid him in his quest, and the future hero selects Aqua. But Kazuma has made a grave mistake—Aqua is completely useless! 
 
Unfortunately, their troubles don''t end here; it turns out that living in such a world is far different from how it plays out in a game. Instead of going on a thrilling adventure, the duo must first work to pay for their living expenses. Indeed, their misfortunes have only just begun! 
 
[Written by MAL Rewrite]','Adventure, Comedy, Fantasy, Magic, Parody, Supernatural','Jan 14, 2016 to Mar 17, 2016',10,866116,46,339,8.18,'https://cdn.myanimelist.net/images/anime/8/77831.jpg','https://myanimelist.net/anime/30831/Kono_Subarashii_Sekai_ni_Shukufuku_wo');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (28223,'Death Parade','After death, there is no heaven or hell, only a bar that stands between reincarnation and oblivion. There the attendant will, one after another, challenge pairs of the recently deceased to a random game in which their fate of either ascending into reincarnation or falling into the void will be wagered. Whether it''s bowling, darts, air hockey, or anything in between, each person''s true nature will be revealed in a ghastly parade of death and memories, dancing to the whims of the bar''s master. Welcome to Quindecim, where Decim, arbiter of the afterlife, awaits! 
 
 Death Parade  expands upon the original one-shot intended to train young animators. It follows yet more people receiving judgment—until a strange, black-haired guest causes Decim to begin questioning his own rulings. 
 
[Written by MAL Rewrite]','Game, Mystery, Psychological, Drama, Thriller','Jan 10, 2015 to Mar 28, 2015',12,864345,47,308,8.22,'https://cdn.myanimelist.net/images/anime/5/71553.jpg','https://myanimelist.net/anime/28223/Death_Parade');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (10793,'Guilty Crown','Japan, 2039. Ten years after the outbreak of the "Apocalypse Virus," an event solemnly regarded as "Lost Christmas," the once proud nation has fallen under the rule of the GHQ, an independent military force dedicated to restoring order. Funeral Parlor, a guerilla group led by the infamous Gai Tsutsugami, act as freedom fighters, offering the only resistance to GHQ''s cruel despotism. 
  
Inori Yuzuriha, a key member of Funeral Parlor, runs into the weak and unsociable Shuu Ouma during a crucial operation, which results in him obtaining the "Power of Kings"—an ability which allows the wielder to draw out the manifestations of an individual''s personality, or "voids." Now an unwilling participant in the struggle against GHQ, Shuu must learn to control his newfound power if he is to help take back Japan once and for all. 
  
 Guilty Crown  follows the action-packed story of a young high school student who is dragged into a war, possessing an ability that will help him uncover the secrets of the GHQ, Funeral Parlor, and Lost Christmas. However, he will soon learn that the truth comes at a far greater price than he could have ever imagined. 
 
[Written by MAL Rewrite]','Action, Sci-Fi, Super Power, Drama, Romance, Mecha','Oct 14, 2011 to Mar 23, 2012',22,781239,57,1271,7.65,'https://cdn.myanimelist.net/images/anime/8/33713.jpg','https://myanimelist.net/anime/10793/Guilty_Crown');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (29803,'Overlord','The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own! 
 
Confronted with this abnormal situation, Momonga commands his loyal servants to help him investigate and take control of this new world, with the hopes of figuring out what has caused this development and if there may be others in the same predicament. 
 
[Written by MAL Rewrite]','Action, Adventure, Fantasy, Game, Magic, Supernatural','Jul 7, 2015 to Sep 29, 2015',13,742933,65,515,8.05,'https://cdn.myanimelist.net/images/anime/7/88019.jpg','https://myanimelist.net/anime/29803/Overlord');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (13759,'Sakura-sou no Pet na Kanojo','When abandoned kittens and his good conscience force second year Sorata Kanda to move into Suimei High School’s infamous Sakura Hall, the satellite dorm and its eccentric, misfit residents turn his life upside down. The decidedly average Sorata finds it difficult to fit in with the bizarre collection of dorm residents like Misaki, an energetic animator; Jin, a playwright playboy; Ryuunosuke, a reclusive programmer; and Chihiro, the dorm manager, art teacher, and party girl. 
 
Sorata''s friend Nanami, a second year student and aspiring voice actress, pushes him to find new owners for the many cats so that he can quickly move back into the regular dorms. However, his desire to escape Sakura Hall wavers when the pet-like and infantile second year Mashiro Shiina, a world-class artistic savant looking to become a mangaka, transfers in during the spring trimester and quickly latches onto him. 
 
Supported by each other''s quirks, Sorata and Mashiro come out of their shells and trigger change in the lives of those around them. Based on the light novel series of the same name,  Sakurasou no Pet na Kanojo  explores the fine threads connecting talent, hard work, romance, and friendship with its ensemble cast. 
 
[Written by MAL Rewrite]','Slice of Life, Comedy, Drama, Romance, School','Oct 9, 2012 to Mar 26, 2013',24,705020,68,268,8.27,'https://cdn.myanimelist.net/images/anime/4/43643.jpg','https://myanimelist.net/anime/13759/Sakura-sou_no_Pet_na_Kanojo');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (18897,'Nisekoi','Raku Ichijou, a first-year student at Bonyari High School, is the sole heir to an intimidating yakuza family. Ten years ago, Raku made a promise to his childhood friend. Now, all he has to go on is a pendant with a lock, which can only be unlocked with the key which the girl took with her when they parted. 
 
Now, years later, Raku has grown into a typical teenager, and all he wants is to remain as uninvolved in his yakuza background as possible while spending his school days alongside his middle school crush Kosaki Onodera. However, when the American Bee Hive Gang invades his family''s turf, Raku''s idyllic romantic dreams are sent for a toss as he is dragged into a frustrating conflict: Raku is to pretend that he is in a romantic relationship with Chitoge Kirisaki, the beautiful daughter of the Bee Hive''s chief, so as to reduce the friction between the two groups. Unfortunately, reality could not be farther from this whopping lie—Raku and Chitoge fall in hate at first sight, as the girl is convinced he is a pathetic pushover, and in Raku''s eyes, Chitoge is about as attractive as a savage gorilla.  
 
 Nisekoi  follows the daily antics of this mismatched couple who have been forced to get along for the sake of maintaining the city''s peace. With many more girls popping up his life, all involved with Raku''s past somehow, his search for the girl who holds his heart and his promise leads him in more unexpected directions than he expects. 
 
[Written by MAL Rewrite]','Harem, Comedy, Romance, School, Shounen','Jan 11, 2014 to May 24, 2014',20,651656,82,1017,7.75,'https://cdn.myanimelist.net/images/anime/13/75587.jpg','https://myanimelist.net/anime/18897/Nisekoi');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (23283,'Zankyou no Terror','Painted in red, the word "VON" is all that is left behind after a terrorist attack on a nuclear facility in Japan. The government is shattered by their inability to act, and the police are left frantically searching for ways to crack down the perpetrators. The public are clueless—until, six months later, a strange video makes its way onto the internet. In it, two teenage boys who identify themselves only as "Sphinx" directly challenge the police, threatening to cause destruction and mayhem across Tokyo. Unable to stop the mass panic quickly spreading through the city and desperate for any leads in their investigation, the police struggle to act effectively against these terrorists, with Detective Kenjirou Shibazaki caught in the middle of it all. 
 
 Zankyou no Terror  tells the story of Nine and Twelve, the two boys behind the masked figures of Sphinx. They should not exist, yet they stand strong in a world of deception and secrets while they make the city fall around them, all in the hopes of burying their own tragic truth. 
 
[Written by MAL Rewrite]','Mystery, Psychological, Thriller','Jul 11, 2014 to Sep 26, 2014',11,642866,84,363,8.17,'https://cdn.myanimelist.net/images/anime/4/64447.jpg','https://myanimelist.net/anime/23283/Zankyou_no_Terror');
INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,link) VALUES (19815,'No Game No Life','No Game No Life  is a surreal comedy that follows Sora and Shiro, shut-in NEET siblings and the online gamer duo behind the legendary username "Blank." They view the real world as just another lousy game; however, a strange e-mail challenging them to a chess match changes everything—the brother and sister are plunged into an otherworldly realm where they meet Tet, the God of Games. 
 
The mysterious god welcomes Sora and Shiro to Disboard, a world where all forms of conflict—from petty squabbles to the fate of whole countries—are settled not through war, but by way of high-stake games. This system works thanks to a fundamental rule wherein each party must wager something they deem to be of equal value to the other party''s wager. In this strange land where the very idea of humanity is reduced to child''s play, the indifferent genius gamer duo of Sora and Shiro have finally found a real reason to keep playing games: to unite the sixteen races of Disboard, defeat Tet, and become the gods of this new, gaming-is-everything world. 
 
[Written by MAL Rewrite]','Game, Adventure, Comedy, Supernatural, Ecchi, Fantasy','Apr 9, 2014 to Jun 25, 2014',12,1291615,8,201,8.34,'https://cdn.myanimelist.net/images/anime/5/65187.jpg','https://myanimelist.net/anime/19815/No_Game_No_Life');


CREATE TABLE `User`(
    id INT NOT NULL,
    email VARCHAR(400),
	name VARCHAR(400),
	password VARCHAR(400),
    PRIMARY KEY(id)
);

CREATE TABLE Homepage
AS (SELECT uid, title, img_url, genre, episodes, score, link
	FROM Anime);

