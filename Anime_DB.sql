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
   url_link       VARCHAR(138) NOT NULL
);

CREATE TABLE `User`(
	username VARCHAR(10),
	fullName VARCHAR(20),
	email VARCHAR(20),
	userPassword VARCHAR(10)
);


INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(28891, 'Haikyuu!! Second Season',
'Following their participation at the Inter-High, the Karasuno High School volleyball team attempts to refocus their efforts, aiming to conquer the Spring tournament instead. When they receive an invitation from long-standing rival Nekoma High, Karasuno agrees to take part in a large training camp alongside many notable volleyball teams in Tokyo and even some national level players. By playing with some of the toughest teams in Japan, they hope not only to sharpen their skills, but also come up with new attacks that would strengthen them. Moreover, Hinata and Kageyama attempt to devise a more powerful weapon, one that could possibly break the sturdiest of blocks. Facing what may be their last chance at victory before the senior players graduate, the members of Karasuno''s volleyball team must learn to settle their differences and train harder than ever if they hope to overcome formidable opponents old and new—including their archrival Aoba Jousai and its world-class setter Tooru Oikawa. [Written by MAL Rewrite]',
'[''Comedy'', ''Sports'', ''Drama'', ''School'', ''Shounen'']', 'Oct 4, 2015 to Mar 27, 2016',
25.0, 489888, 141, 25.0, '8.82','https://cdn.myanimelist.net/images/anime/9/76662.jpg',
'https://myanimelist.net/anime/28891/Haikyuu_Second_Season');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(23273,'Shigatsu wa Kimi no Uso',
'Music accompanies the path of the human metronome, the prodigious pianist Kousei Arima. But after the passing of his mother, Saki Arima, Kousei falls into a downward spiral, rendering him unable to hear the sound of his own piano. Two years later, Kousei still avoids the piano, leaving behind his admirers and rivals, and lives a colorless life alongside his friends Tsubaki Sawabe and Ryouta Watari. However, everything changes when he meets a beautiful violinist, Kaori Miyazono, who stirs up his world and sets him on a journey to face music again. Based on the manga series of the same name,  Shigatsu wa Kimi no Uso  approaches the story of Kousei''s recovery as he discovers that music is more than playing each note perfectly, and a single melody can bring in the fresh spring air of April. [Written by MAL Rewrite]',
'[''Drama'', ''Music'', ''Romance'', ''School'', ''Shounen'']','Oct 10, 2014 to Mar 20, 2015',
22.0,995473,28,24.0,'8.83','https://cdn.myanimelist.net/images/anime/3/67177.jpg',
'https://myanimelist.net/anime/23273/Shigatsu_wa_Kimi_no_Uso');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(5114,'Fullmetal Alchemist: Brotherhood',
'"In order for something to be obtained, something of equal value must be lost." Alchemy is bound by this Law of Equivalent Exchange—something the young brothers Edward and Alphonse Elric only realize after attempting human transmutation: the one forbidden act of alchemy. They pay a terrible price for their transgression—Edward loses his left leg, Alphonse his physical body. It is only by the desperate sacrifice of Edward''s right arm that he is able to affix Alphonse''s soul to a suit of armor. Devastated and alone, it is the hope that they would both eventually return to their original bodies that gives Edward the inspiration to obtain metal limbs called "automail" and become a state alchemist, the Fullmetal Alchemist. Three years of searching later, the brothers seek the Philosopher''s Stone, a mythical relic that allows an alchemist to overcome the Law of Equivalent Exchange. Even with military allies Colonel Roy Mustang, Lieutenant Riza Hawkeye, and Lieutenant Colonel Maes Hughes on their side, the brothers find themselves caught up in a nationwide conspiracy that leads them not only to the true nature of the elusive Philosopher''s Stone, but their country''s murky history as well. In between finding a serial killer and racing against time, Edward and Alphonse must ask themselves if what they are doing will make them human again... or take away their humanity. [Written by MAL Rewrite]',
'[''Action'', ''Military'', ''Adventure'', ''Comedy'', ''Drama'', ''Magic'', ''Fantasy'', ''Shounen'']','Apr 5, 2009 to Jul 4, 2010',
64.0,1615084,4,1.0,'9.23','https://cdn.myanimelist.net/images/anime/1223/96541.jpg',
'https://myanimelist.net/anime/5114/Fullmetal_Alchemist__Brotherhood');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(37510,'Mob Psycho 100 II',
'Shigeo "Mob" Kageyama is now maturing and understanding his role as a supernatural psychic that has the power to drastically affect the livelihood of others. He and his mentor Reigen Arataka continue to deal with supernatural requests from clients, whether it be exorcizing evil spirits or tackling urban legends that haunt the citizens. While the workflow remains the same, Mob isn''t just blindly following Reigen around anymore. With all his experiences as a ridiculously strong psychic, Mob''s supernatural adventures now have more weight to them. Things take on a serious and darker tone as the dangers Mob and Reigen face are much more tangible and unsettling than ever before. [Written by MAL Rewrite]',
'[''Action'', ''Slice of Life'', ''Comedy'', ''Supernatural'']','Jan 7, 2019 to Apr 1, 2019',
13.0,442310,176,21.0,'8.89','https://cdn.myanimelist.net/images/anime/1918/96303.jpg',
'https://myanimelist.net/anime/37510/Mob_Psycho_100_II');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(38000,'Kimetsu no Yaiba',
'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado''s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night. When he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister''s humanity. [Written by MAL Rewrite]',
'[''Action'', ''Demons'', ''Historical'', ''Shounen'', ''Supernatural'']','Apr 6, 2019 to Sep 28, 2019',
26.0,575037,106,19.0,'8.92','https://cdn.myanimelist.net/images/anime/1286/99889.jpg',
'https://myanimelist.net/anime/38000/Kimetsu_no_Yaiba');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(2904,'Code Geass: Hangyaku no Lelouch R2',
'One year has passed since the Black Rebellion, a failed uprising against the Holy Britannian Empire led by the masked vigilante Zero, who is now missing. At a loss without their revolutionary leader, Area 11''s resistance group—the Black Knights—find themselves too powerless to combat the brutality inflicted upon the Elevens by Britannia, which has increased significantly in order to crush any hope of a future revolt.  Lelouch Lamperouge, having lost all memory of his double life, is living peacefully alongside his friends as a high school student at Ashford Academy. His former partner C.C., unable to accept this turn of events, takes it upon herself to remind him of his past purpose, hoping that the mastermind Zero will rise once again to finish what he started, in this thrilling conclusion to the series. [Written by MAL Rewrite]',
'[''Action'', ''Military'', ''Sci-Fi'', ''Super Power'', ''Drama'', ''Mecha'']','Apr 6, 2008 to Sep 28, 2008',
25.0,992196,27,17.0,'8.93','https://cdn.myanimelist.net/images/anime/4/9391.jpg',
'https://myanimelist.net/anime/2904/Code_Geass__Hangyaku_no_Lelouch_R2');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(34096,'Gintama.',
'After joining the resistance against the bakufu, Gintoki and the gang are in hiding, along with Katsura and his Joui rebels. The Yorozuya is soon approached by Nobume Imai and two members of the Kiheitai, who explain that the Harusame pirates have turned against 7th Division Captain Kamui and their former ally Takasugi. The Kiheitai present Gintoki with a job: find Takasugi, who has been missing since his ship was ambushed in a Harusame raid. Nobume also makes a stunning revelation regarding the Tendoushuu, a secret organization pulling the strings of numerous factions, and their leader Utsuro, the shadowy figure with an uncanny resemblance to Gintoki''s former teacher. Hitching a ride on Sakamoto''s space ship, the Yorozuya and Katsura set out for Rakuyou, Kagura''s home planet, where the various factions have gathered and tensions are brewing. Long-held grudges, political infighting, and the Tendoushuu''s sinister overarching plan finally culminate into a massive, decisive battle on Rakuyou. [Written by MAL Rewrite]',
'[''Action'', ''Comedy'', ''Historical'', ''Parody'', ''Samurai'', ''Sci-Fi'', ''Shounen'']','Jan 9, 2017 to Mar 27, 2017',
12.0,139309,800,15.0,'8.94','https://cdn.myanimelist.net/images/anime/3/83528.jpg',
'https://myanimelist.net/anime/34096/Gintama');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(4181,'Clannad: After Story',
'Clannad: After Story , the sequel to the critically acclaimed slice-of-life series  Clannad , begins after Tomoya Okazaki and Nagisa Furukawa graduate from high school. Together, they experience the emotional rollercoaster of growing up. Unable to decide on a course for his future, Tomoya learns the value of a strong work ethic and discovers the strength of Nagisa''s support. Through the couple''s dedication and unity of purpose, they push forward to confront their personal problems, deepen their old relationships, and create new bonds. Time also moves on in the Illusionary World. As the plains grow cold with the approach of winter, the Illusionary Girl and the Garbage Doll are presented with a difficult situation that reveals the World''s true purpose. Based on the visual novel by Key and produced by Kyoto Animation,  Clannad: After Story  is an impactful drama highlighting the importance of family and the struggles of adulthood. [Written by MAL Rewrite]',
'[''Slice of Life'', ''Comedy'', ''Supernatural'', ''Drama'', ''Romance'']','Oct 3, 2008 to Mar 27, 2009',
24.0,740101,64,12.0,'8.97','https://cdn.myanimelist.net/images/anime/13/24647.jpg',
'https://myanimelist.net/anime/4181/Clannad__After_Story');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(30276,'One Punch Man',
'The seemingly ordinary and unimpressive Saitama has a rather unique hobby: being a hero. In order to pursue his childhood dream, he trained relentlessly for three years—and lost all of his hair in the process. Now, Saitama is incredibly powerful, so much so that no enemy is able to defeat him in battle. In fact, all it takes to defeat evildoers with just one punch has led to an unexpected problem—he is no longer able to enjoy the thrill of battling and has become quite bored. This all changes with the arrival of Genos, a 19-year-old cyborg, who wishes to be Saitama''s disciple after seeing what he is capable of. Genos proposes that the two join the Hero Association in order to become certified heroes that will be recognized for their positive contributions to society, and Saitama, shocked that no one knows who he is, quickly agrees. And thus begins the story of  One Punch Man , an action-comedy that follows an eccentric individual who longs to fight strong enemies that can hopefully give him the excitement he once felt and just maybe, he''ll become popular in the process. [Written by MAL Rewrite]',
'[''Action'', ''Sci-Fi'', ''Comedy'', ''Parody'', ''Super Power'', ''Supernatural'', ''Seinen'']','Oct 5, 2015 to Dec 21, 2015',
12.0,1475219,5,50.0,'8.68','https://cdn.myanimelist.net/images/anime/12/76049.jpg',
'https://myanimelist.net/anime/30276/One_Punch_Man');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(20507,'Noragami',
'In times of need, if you look in the right place, you just may see a strange telephone number scrawled in red. If you call this number, you will hear a young man introduce himself as the Yato God. Yato is a minor deity and a self-proclaimed "Delivery God," who dreams of having millions of worshippers. Without a single shrine dedicated to his name, however, his goals are far from being realized. He spends his days doing odd jobs for five yen apiece, until his weapon partner becomes fed up with her useless master and deserts him. Just as things seem to be looking grim for the god, his fortune changes when a middle school girl, Hiyori Iki, supposedly saves Yato from a car accident, taking the hit for him. Remarkably, she survives, but the event has caused her soul to become loose and hence able to leave her body. Hiyori demands that Yato return her to normal, but upon learning that he needs a new partner to do so, reluctantly agrees to help him find one. And with Hiyori''s help, Yato''s luck may finally be turning around. [Written by MAL Rewrite]',
'[''Action'', ''Adventure'', ''Comedy'', ''Supernatural'', ''Shounen'']','Jan 5, 2014 to Mar 23, 2014',
12.0,1125472,16,445.0,'8.1','https://cdn.myanimelist.net/images/anime/9/77809.jpg',
'https://myanimelist.net/anime/20507/Noragami');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(35363,'Kobayashi-san Chi no Maid Dragon: Valentine, Soshite Onsen! - Amari Kitai Shinaide Kudasai',
'Unaired episode included with the 7th volume of the BD/DVD release of  Kobayashi-san Chi no Maid Dragon .',
'[''Slice of Life'', ''Comedy'', ''Fantasy'']','Sep 20, 2017',
1.0,87716,1238,794.0,'7.86','https://cdn.myanimelist.net/images/anime/5/88486.jpg',
'https://myanimelist.net/anime/35363/Kobayashi-san_Chi_no_Maid_Dragon__Valentine_Soshite_Onsen_-_Amari_Kitai_Shinaide_Kudasai');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(22673,'Kuroko no Basket 2nd Season NG-shuu',
'Animated bloopers, based on the extra section of the original manga series, included with the BD/DVD series for Kuroko no Basket Second Season (both limited and normal editions).',
'[''Comedy'', ''Sports'']','Jan 29, 2014 to Sep 24, 2014',
9.0,38046,2263,795.0,'7.86','https://cdn.myanimelist.net/images/anime/13/59027.jpg',
'https://myanimelist.net/anime/22673/Kuroko_no_Basket_2nd_Season_NG-shuu');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(5680,'K-On!',
'Hirasawa Yui, a young, carefree girl entering high school, has her imagination instantly captured when she sees a poster advertising the "Light Music Club." Being the carefree girl that she is, she quickly signs up; however, Yui has a problem, she is unable to play an instrument. When Yui goes to the clubroom to explain, she''s greeted by the other members: Ritsu, Mio, and Tsumugi. Although disheartened at Yui''s lack of musical know-how, they still try to convince her to stay to prevent the club''s disbandment. After playing Yui a short piece which re-ignites her imagination, they succeed in keeping their new member and guitarist. Along with the tasks of school and homework, Yui begins to learn the guitar with the help of the other band members, experiencing many mishaps along the way. However, with the school festival drawing near and Yui getting stuck with her practice, will the Light Music Club be ready in time for their debut? [Written by MAL Rewrite]',
'[''Slice of Life'', ''Comedy'', ''Music'', ''School'']','Apr 3, 2009 to Jun 26, 2009',
13.0,610222,90,792.0,'7.86','https://cdn.myanimelist.net/images/anime/10/76120.jpg',
'https://myanimelist.net/anime/5680/K-On');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(19111,'Love Live! School Idol Project 2nd Season',
'Otonokizaka High School has been saved! Despite having to withdraw from the Love Live!, the efforts of μ''s were able to garner enough interest in their school to prevent it from being shut down. What more, following the conclusion of the first, a second Love Live! is announced, this time on an even larger stage than before. Given a chance for redemption, the nine girls come together once more to sing their hearts out and claim victory. However, with the end of the school year approaching, the graduation of the third years draws near. As they attempt to reach the top of the Love Live!, they must also consider their future and choose what path the group will take. Though the question of whether to continue without the third years or disband weighs heavily on the minds of its members, μ''s must quickly come to an answer with graduation right around the corner. Love Live! School Idol Project 2nd Season  continues the story of the girls as they laugh, cry, sing, and dance in their journey to determine the future of their group and conquer the Love Live! in their last chance to win with all nine girls together. [Written by MAL Rewrite]',
'[''Music'', ''School'', ''Slice of Life'']','Apr 6, 2014 to Jun 29, 2014',
13.0,170880,641,697.0,'7.91','https://cdn.myanimelist.net/images/anime/10/59101.jpg',
'https://myanimelist.net/anime/19111/Love_Live_School_Idol_Project_2nd_Season');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(14349,'Little Witch Academia',
'For young witches everywhere, the world-renowned witch Shiny Chariot reigns as the most revered and celebrated role model. But as the girls age, so do their opinions of her—now just the mention of Chariot would get a witch labeled a child. However, undeterred in her blind admiration for Chariot, ordinary girl Atsuko Kagari enrolls into Luna Nova Magical Academy, hoping to someday become just as mesmerizing as her idol. However, the witch academy isn''t all the fun and games Atsuko thought it would be: boring lectures, strict teachers, and students who mock Chariot plague the campus. Coupled with her own ineptness in magic, she''s seen as little more than a rebel student. But when a chance finally presents itself to prove herself to her peers and teachers, she takes it, and now it''s up to her to stop a rampaging dragon before it flattens the entire academy.  [Written by MAL Rewrite]',
'[''Adventure'', ''Comedy'', ''Magic'', ''Fantasy'', ''School'']','Mar 2, 2013',
1.0,224526,470,696.0,'7.91','https://cdn.myanimelist.net/images/anime/2/42989.jpg',
'https://myanimelist.net/anime/14349/Little_Witch_Academia');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(4898,'Kuroshitsuji',
'Young Ciel Phantomhive is known as "the Queen''s Guard Dog," taking care of the many unsettling events that occur in Victorian England for Her Majesty. Aided by Sebastian Michaelis, his loyal butler with seemingly inhuman abilities, Ciel uses whatever means necessary to get the job done. But is there more to this black-clad butler than meets the eye? In Ciel''s past lies a secret tragedy that enveloped him in perennial darkness—during one of his bleakest moments, he formed a contract with Sebastian, a demon, bargaining his soul in exchange for vengeance upon those who wronged him. Today, not only is Sebastian one hell of a butler, but he is also the perfect servant to carry out his master''s orders—all the while anticipating the delicious meal he will eventually make of Ciel''s soul. As the two work to unravel the mystery behind Ciel''s chain of misfortunes, a bond forms between them that neither heaven nor hell can tear apart. [Written by MAL Rewrite]',
'[''Action'', ''Mystery'', ''Comedy'', ''Historical'', ''Demons'', ''Supernatural'', ''Shounen'']','Oct 3, 2008 to Mar 27, 2009',
24.0,684593,71,695.0,'7.91','https://cdn.myanimelist.net/images/anime/5/27013.jpg',
'https://myanimelist.net/anime/4898/Kuroshitsuji');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(249,'InuYasha (TV)',
'Based on the Shogakukan award-winning manga of the same name,  InuYasha  follows Kagome Higurashi, a fifteen-year-old girl whose normal life ends when a demon drags her into a cursed well on the grounds of her family''s Shinto shrine. Instead of hitting the bottom of the well, Kagome ends up 500 years in the past during Japan''s violent Sengoku period with the demon''s true target, a wish-granting jewel called the Shikon Jewel, reborn inside of her. After a battle with a revived demon accidentally causes the sacred jewel to shatter, Kagome enlists the help of a young hybrid dog-demon/human named Inuyasha to help her collect the shards and prevent them from falling into the wrong hands. Joining Kagome and Inuyasha on their quest are the orphan fox-demon Shippo, the intelligent monk Miroku, and the lethal demon slayer Sango. Together, they must set aside their differences and work together to find the power granting shards spread across feudal Japan and deal with the threats that arise. [Written by MAL Rewrite]',
'[''Action'', ''Adventure'', ''Comedy'', ''Historical'', ''Demons'', ''Supernatural'', ''Magic'', ''Romance'', ''Fantasy'', ''Shounen'']','Oct 16, 2000 to Sep 13, 2004',
167.0,456015,164,694.0,'7.91','https://cdn.myanimelist.net/images/anime/1589/95329.jpg',
'https://myanimelist.net/anime/249/InuYasha_TV');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(269,'Bleach',
'Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo''s family from the assailant. To save his family, Ichigo accepts Rukia''s offer of taking her powers and becomes a Soul Reaper as a result. However, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that plague their town. However, he is not alone in his fight, as he is later joined by his friends—classmates Orihime Inoue, Yasutora Sado, and Uryuu Ishida—who each have their own unique abilities. As Ichigo and his comrades get used to their new duties and support each other on and off the battlefield, the young Soul Reaper soon learns that the Hollows are not the only real threat to the human world. [Written by MAL Rewrite]',
'[''Action'', ''Adventure'', ''Comedy'', ''Super Power'', ''Supernatural'', ''Shounen'']','Oct 5, 2004 to Mar 27, 2012',
366.0,1002578,25,757.0,'7.87','https://cdn.myanimelist.net/images/anime/3/40451.jpg',
'https://myanimelist.net/anime/269/Bleach');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(25777,'Shingeki no Kyojin Season 2',
'For centuries, humanity has been hunted by giant, mysterious predators known as the Titans. Three mighty walls—Wall Maria, Rose, and Sheena—provided peace and protection for humanity for over a hundred years. That peace, however, was shattered when the Colossus Titan and Armored Titan appeared and destroyed the outermost wall, Wall Maria. Forced to retreat behind Wall Rose, humanity waited with bated breath for the Titans to reappear and destroy their safe haven once more. In  Shingeki no Kyojin Season 2 , Eren Yeager and others of the 104th Training Corps have just begun to become full members of the Survey Corps. As they ready themselves to face the Titans once again, their preparations are interrupted by the invasion of Wall Rose—but all is not as it seems as more mysteries are unraveled. As the Survey Corps races to save the wall, they uncover more about the invading Titans and the dark secrets of their own members. [Written by MAL Rewrite]',
'[''Action'', ''Drama'', ''Fantasy'', ''Military'', ''Mystery'', ''Shounen'', ''Super Power'']','Apr 1, 2017 to Jun 17, 2017',
12.0,979627,31,141.0,'8.42','https://cdn.myanimelist.net/images/anime/4/84177.jpg',
'https://myanimelist.net/anime/25777/Shingeki_no_Kyojin_Season_2');

INSERT INTO Anime(uid,title,synopsis,genre,aired,episodes,members,popularity,ranked,score,img_url,url_link) VALUES
(9756,'Mahou Shoujo Madoka★Magica',
'Madoka Kaname and Sayaka Miki are regular middle school girls with regular lives, but all that changes when they encounter Kyuubey, a cat-like magical familiar, and Homura Akemi, the new transfer student. Kyuubey offers them a proposition: he will grant any one of their wishes and in exchange, they will each become a magical girl, gaining enough power to fulfill their dreams. However, Homura Akemi, a magical girl herself, urges them not to accept the offer, stating that everything is not what it seems. A story of hope, despair, and friendship,  Mahou Shoujo Madoka★Magica  deals with the difficulties of being a magical girl and the price one has to pay to make a dream come true. [Written by MAL Rewrite]',
'[''Psychological'', ''Drama'', ''Magic'', ''Thriller'']','Jan 7, 2011 to Apr 22, 2011',
12.0,781975,58,139.0,'8.42','https://cdn.myanimelist.net/images/anime/11/55225.jpg',
'https://myanimelist.net/anime/9756/Mahou_Shoujo_Madoka%E2%98%85Magica');


CREATE TABLE Homepage
AS (SELECT uid, title img_url, genre, episodes, score, url_link
	FROM Anime);


CREATE TABLE MyList
AS (SELECT uid, title img_url,  score
	FROM Anime);
    
    
ALTER TABLE MyList
ADD myscore VARCHAR(18) NOT NULL,
ADD  mycomment VARCHAR(400) NOT NULL;
