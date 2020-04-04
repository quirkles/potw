create table BRANDS (
    id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v1(),
    slug varchar(100) unique not null,
    name varchar(100) not null,
    created_at date DEFAULT now(),
    updated_at date DEFAULT now()
);

Insert into BRANDS (name, slug) values
('2(X)Ist','2-x-ist'),
('424 On Fairfax','424-on-fairfax'),
('A','a'),
('A Cold Wall','a-cold-wall'),
('A.P.C.','a-p-c'),
('Abercrombie & Fitch','abercrombie-fitch'),
('Acne Studios','acne-studios'),
('Adidas','adidas'),
('Alexander McQueen','alexander-mcqueen'),
('Alexander Wang','alexander-wang'),
('Allen Edmonds','allen-edmonds'),
('Allsaints','allsaints'),
('Alpha Industries','alpha-industries'),
('Alyx','alyx'),
('American Eagle Outfitters','american-eagle-outfitters'),
('American Vintage','american-vintage'),
('Amiri','amiri'),
('Andy Warhol','andy-warhol'),
('Ann Demeulemeester','ann-demeulemeester'),
('Anti Social Social Club','anti-social-social-club'),
('Armani','armani'),
('Armani Exchange','armani-exchange'),
('Art','art'),
('Asap Rocky','asap-rocky'),
('Asics','asics'),
('Balenciaga','balenciaga'),
('Balmain','balmain'),
('Balmain X H&M','balmain-x-h-m'),
('Banana Republic','banana-republic'),
('Band Tees','band-tees'),
('Bape','bape'),
('Barneys New York','barneys-new-york'),
('Beams Plus','beams-plus'),
('Beauty & Youth','beauty-youth'),
('Billionaire Boys Club','billionaire-boys-club'),
('Born X Raised','born-x-raised'),
('Brand','brand'),
('Brooks Brothers','brooks-brothers'),
('Burberry','burberry'),
('Cabane De Zucca','cabane-de-zucca'),
('Cactus Plant Flea Market','cactus-plant-flea-market'),
('Calvin Klein','calvin-klein'),
('Calvin Klein 205W39NYC','calvin-klein-205w39nyc'),
('Canada Goose','canada-goose'),
('Canterbury Of New Zealand','canterbury-of-new-zealand'),
('Carhartt','carhartt'),
('Carhartt Wip','carhartt-wip'),
('Cartoon Network','cartoon-network'),
('Cav Empt','cav-empt'),
('Champion','champion'),
('Chaps Ralph Lauren','chaps-ralph-lauren'),
('Christian Dior Monsieur','christian-dior-monsieur'),
('Christian Louboutin','christian-louboutin'),
('Chrome Hearts','chrome-hearts'),
('Columbia','columbia'),
('Comme Ca Ism','comme-ca-ism'),
('Comme des Garcons','comme-des-garcons'),
('Comme Des Garcons Homme Plus','comme-des-garcons-homme-plus'),
('Comme Des Garcons Play','comme-des-garcons-play'),
('Common Projects','common-projects'),
('Converse','converse'),
('Custom','custom'),
('Custom Made','custom-made'),
('D','d'),
('Designer','designer'),
('Diamond Supply Co','diamond-supply-co'),
('Diesel','diesel'),
('Dior','dior'),
('Disney','disney'),
('Distressed Denim','distressed-denim'),
('DKNY','dkny'),
('Dolce & Gabbana','dolce-gabbana'),
('Dries Van Noten','dries-van-noten'),
('Dsquared2','dsquared2'),
('Ecko Unltd.','ecko-unltd'),
('Ed Hardy','ed-hardy'),
('Eddie Bauer','eddie-bauer'),
('Edwin','edwin'),
('Ellesse','ellesse'),
('Emporio Armani','emporio-armani'),
('Enfants Riches Deprimes','enfants-riches-deprimes'),
('Engineered Garments','engineered-garments'),
('Ermenegildo Zegna','ermenegildo-zegna'),
('Ermenegildo Zegna Sport','ermenegildo-zegna-sport'),
('Etro','etro'),
('Evisu','evisu'),
('Express','express'),
('Fear of God','fear-of-god'),
('Fendi','fendi'),
('Fila','fila'),
('Flannel','flannel'),
('Flatbush Zombies','flatbush-zombies'),
('FOG','fog'),
('Fragment Design','fragment-design'),
('Fred Perry','fred-perry'),
('Fruit Of The Loom','fruit-of-the-loom'),
('Fuck The Population','fuck-the-population'),
('Fucking Awesome','fucking-awesome'),
('Fuct','fuct'),
('G Star Raw','g-star-raw'),
('Gap','gap'),
('General Quarters','general-quarters'),
('Gildan','gildan'),
('Giorgio Armani','giorgio-armani'),
('Giuseppe Zanotti','giuseppe-zanotti'),
('Givenchy','givenchy'),
('Golf Wang','golf-wang'),
('Gosha Rubchinskiy','gosha-rubchinskiy'),
('Gucci','gucci'),
('Guess','guess'),
('H&M','h-m'),
('Hai Sporting Gear','hai-sporting-gear'),
('Haider Ackermann','haider-ackermann'),
('Handmade','handmade'),
('Hanes','hanes'),
('Hanes Made In Usa','hanes-made-in-usa'),
('Hang Ten','hang-ten'),
('Harley Davidson','harley-davidson'),
('Hawaiian Shirt','hawaiian-shirt'),
('Helly Hansen','helly-hansen'),
('Helmut Lang','helmut-lang'),
('Hermes','hermes'),
('Huf','huf'),
('Hugo Boss','hugo-boss'),
('Hypebeast','hypebeast'),
('Hysteric Glamour','hysteric-glamour'),
('I Love Ugly','i-love-ugly'),
('Ian Connor','ian-connor'),
('Iceberg','iceberg'),
('Iceberg History','iceberg-history'),
('Icecream','icecream'),
('Independent Truck Co.','independent-truck-co'),
('Indigo','indigo'),
('Iron Maiden','iron-maiden'),
('Issey Miyake','issey-miyake'),
('Italian','italian'),
('Italian Designers','italian-designers'),
('Iverson Question','iverson-question'),
('Izod','izod'),
('J//','j'),
('J.Crew','j-crew'),
('Japanese Brand','japanese-brand'),
('Japanese Traditional','japanese-traditional'),
('Jay Z','jay-z'),
('Jean Paul Gaultier','jean-paul-gaultier'),
('Jewelry','jewelry'),
('John Elliott','john-elliott'),
('John Varvatos','john-varvatos'),
('Jordan Brand','jordan-brand'),
('Journal Standard','journal-standard'),
('Julius','julius'),
('Junya Watanabe','junya-watanabe'),
('Kangol','kangol'),
('Kansai Yamamoto','kansai-yamamoto'),
('Kansai Yamamoto Kbs','kansai-yamamoto-kbs'),
('Kanye West','kanye-west'),
('Kapital','kapital'),
('Kappa','kappa'),
('Karl Helmut','karl-helmut'),
('Karl Kani','karl-kani'),
('Kaws','kaws'),
('Keith Haring','keith-haring'),
('Kenneth Cole','kenneth-cole'),
('Kenzo','kenzo'),
('Kimono Japan Dragon','kimono-japan-dragon'),
('Kingsman X Mr. Porter','kingsman-x-mr-porter'),
('Kith','kith'),
('Ksubi','ksubi'),
('L.L. Bean','l-l-bean'),
('Label Under Construction','label-under-construction'),
('Lacoste','lacoste'),
('Lanvin','lanvin'),
('Le Coq Sportif','le-coq-sportif'),
('Leather Jacket','leather-jacket'),
('Led Zeppelin','led-zeppelin'),
('Lee','lee'),
('Levi''s','levis'),
('Levi''s Vintage Clothing','levis-vintage-clothing'),
('Lil Yachty','lil-yachty'),
('Louis Vuitton','louis-vuitton'),
('Luxury','luxury'),
('M','m'),
('Made In Hawaii','made-in-hawaii'),
('Made In Usa','made-in-usa'),
('Maison Margiela','maison-margiela'),
('Majestic','majestic'),
('Malcolm X','malcolm-x'),
('Marc Jacobs','marc-jacobs'),
('Mastermind Japan','mastermind-japan'),
('MCM','mcm'),
('Michael Kors','michael-kors'),
('Michiko Koshino London','michiko-koshino-london'),
('Mickey Mouse','mickey-mouse'),
('Military','military'),
('Mitchell & Ness','mitchell-ness'),
('Mki Miyuki-Zoku','mki-miyuki-zoku'),
('MLB','mlb'),
('Moncler','moncler'),
('Moschino','moschino'),
('Movie','movie'),
('N','n'),
('Naked & Famous','naked-famous'),
('NASCAR','nascar'),
('Nautica','nautica'),
('NBA','nba'),
('Needles','needles'),
('Neighborhood','neighborhood'),
('Neil Barrett','neil-barrett'),
('Nepenthes New York','nepenthes-new-york'),
('New Balance','new-balance'),
('New Era','new-era'),
('New York','new-york'),
('New York Yankees','new-york-yankees'),
('NFL','nfl'),
('Nike','nike'),
('Nike ACG','nike-acg'),
('No Brand','no-brand'),
('Noah','noah'),
('Nudie Jeans','nudie-jeans'),
('Number (N)ine','number-n-ine'),
('Oakley','oakley'),
('Obey','obey'),
('Octobers Very Own','octobers-very-own'),
('Odd Future','odd-future'),
('Off-White','off-white'),
('Old Navy','old-navy'),
('One Piece','one-piece'),
('Opening Ceremony','opening-ceremony'),
('Other','other'),
('Our Legacy','our-legacy'),
('Pacsun','pacsun'),
('Pal Zileri','pal-zileri'),
('Palace','palace'),
('Palm Angels','palm-angels'),
('Patagonia','patagonia'),
('Paul Smith','paul-smith'),
('Peanuts','peanuts'),
('Pharrell','pharrell'),
('Pierre Balmain','pierre-balmain'),
('Places + Faces','places-faces'),
('Playboy','playboy'),
('Polo Ralph Lauren','polo-ralph-lauren'),
('PPFM','ppfm'),
('Prada','prada'),
('Premium Quality Denim','premium-quality-denim'),
('Public Enemy','public-enemy'),
('Puma','puma'),
('Puma X Rihanna','puma-x-rihanna'),
('Q&R Productions','q-r-productions'),
('Quality Mending Co','quality-mending-co'),
('Quality Peoples','quality-peoples'),
('Quartersnacks','quartersnacks'),
('Quasi Skateboards','quasi-skateboards'),
('Quay','quay'),
('Queen Tour Tee','queen-tour-tee'),
('Quenchloud','quenchloud'),
('Quicksilver','quicksilver'),
('Quiksilver','quiksilver'),
('Quinn','quinn'),
('Quintin Co','quintin-co'),
('Quisling','quisling'),
('Quoddy','quoddy'),
('Quoddy X Leffot','quoddy-x-leffot'),
('QWSTION','qwstion'),
('R','r'),
('Racing','racing'),
('Raf Simons','raf-simons'),
('Rag & Bone','rag-bone'),
('Ralph Lauren','ralph-lauren'),
('Rare','rare'),
('RayBan','rayban'),
('Reebok','reebok'),
('Represent Clo.','represent-clo'),
('Revenge','revenge'),
('Revenge X Storm','revenge-x-storm'),
('Rick Owens','rick-owens'),
('Rick Owens Drkshdw','rick-owens-drkshdw'),
('Ronnie Fieg','ronnie-fieg'),
('Saint Laurent Paris','saint-laurent-paris'),
('Salvatore Ferragamo','salvatore-ferragamo'),
('Saturdays New York City','saturdays-new-york-city'),
('Sportswear','sportswear'),
('Star Wars','star-wars'),
('Starter','starter'),
('Sterling Silver','sterling-silver'),
('Stone Island','stone-island'),
('Stone Island Shadow Project','stone-island-shadow-project'),
('Streetwear','streetwear'),
('Stussy','stussy'),
('Sukajan Souvenir Jacket','sukajan-souvenir-jacket'),
('Supreme','supreme'),
('T Shirt','t-shirt'),
('Takashi Murakami','takashi-murakami'),
('Takeo Kikuchi','takeo-kikuchi'),
('The Hundreds','the-hundreds'),
('The North Face','the-north-face'),
('The Quiet Life','the-quiet-life'),
('The Weeknd','the-weeknd'),
('Thom Browne','thom-browne'),
('Thrasher','thrasher'),
('Timberland','timberland'),
('Tom Ford','tom-ford'),
('Tommy Hilfiger','tommy-hilfiger'),
('Tommy Jeans','tommy-jeans'),
('Tour Tee','tour-tee'),
('Toyo Enterprises','toyo-enterprises'),
('Travis Scott','travis-scott'),
('True Religion','true-religion'),
('Trussardi','trussardi'),
('Tsumori Chisato','tsumori-chisato'),
('U.S. Polo Assn.','u-s-polo-assn'),
('Umbro','umbro'),
('Unbranded','unbranded'),
('Undefeated','undefeated'),
('Under Armour','under-armour'),
('Undercover','undercover'),
('Uniqlo','uniqlo'),
('United Arrows','united-arrows'),
('United Colors Of Benetton','united-colors-of-benetton'),
('Universal Studios','universal-studios'),
('Unknown','unknown'),
('Urban Outfitters','urban-outfitters'),
('Us Air Force','us-air-force'),
('Usa','usa'),
('Usa Olympics','usa-olympics'),
('Versace Jeans Couture','versace-jeans-couture'),
('Vintage','vintage'),
('Vivienne Westwood','vivienne-westwood'),
('Warner Bros','warner-bros'),
('Wilson Athletics','wilson-athletics'),
('Windbreaker','windbreaker'),
('Wings + Horns','wings-horns'),
('Woolrich Woolen Mills','woolrich-woolen-mills'),
('Wrangler','wrangler'),
('Wtaps','wtaps'),
('Wwe','wwe'),
('Wwf','wwf'),
('X','x'),
('X Large','x-large'),
('Xagon Man','xagon-man'),
('Xander Montesinos','xander-montesinos'),
('Xander Zhou','xander-zhou'),
('Xavier Wulf / Hollow Squad','xavier-wulf-hollow-squad'),
('Xbox 360','xbox-360'),
('Ximon Lee','ximon-lee'),
('Xlarge','xlarge'),
('Xmi Platinum','xmi-platinum'),
('Xoxo','xoxo'),
('Xx','xx'),
('Y-3','y-3'),
('Yamaha','yamaha'),
('Yang Li','yang-li'),
('Yeezy Season','yeezy-season'),
('Yg 4hunnid X Youth Fairfax','yg-4hunnid-x-youth-fairfax'),
('Yohji Yamamoto','yohji-yamamoto'),
('Young And Reckless','young-and-reckless'),
('Ys For Men','ys-for-men'),
('Ys For Men / Yamamoto','ys-for-men-yamamoto'),
('Ys (Yamamoto)','ys-yamamoto'),
('Ysl Pour Homme','ysl-pour-homme'),
('Yves Saint Laurent','yves-saint-laurent'),
('Z Zegna','z-zegna'),
('Zadig & Voltaire','zadig-voltaire'),
('Zam Barrett','zam-barrett'),
('Zanerobe','zanerobe'),
('Zara','zara'),
('Ziggy Chen','ziggy-chen'),
('Zion Rootswear','zion-rootswear'),
('Zippo','zippo'),
('Zoo York','zoo-york'),
('Zumiez','zumiez');

CREATE INDEX ON BRANDS (lower(slug));
CREATE INDEX ON BRANDS (lower(name));