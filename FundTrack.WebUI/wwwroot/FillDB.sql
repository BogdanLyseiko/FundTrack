﻿

DELETE from Organizations
DBCC CHECKIDENT ('Organizations', RESEED, 0);
DELETE from Events
DBCC CHECKIDENT ('Events', RESEED, 0);
DELETE from EventImages
DBCC CHECKIDENT ('EventImages', RESEED, 0);
DELETE from Roles
DBCC CHECKIDENT ('Roles', RESEED, 0);
DELETE from Statuses
DBCC CHECKIDENT ('Statuses', RESEED, 0);
DELETE from GoodsTypes
DBCC CHECKIDENT ('GoodsTypes', RESEED, 0);
DELETE from GoodsCategories
DBCC CHECKIDENT ('GoodsCategories', RESEED, 0);
DELETE from RequestedItems
DBCC CHECKIDENT ('RequestedItems',RESEED,0);

INSERT INTO dbo.Organizations
VALUES 
(N'Громадська ініціатива АРМІЯ SOS координує зусилля народу з допомоги військовим України. Ми організовуємо закупівлі необхідної амуніції, засобів захисту, зв’язку та розвідки,
харчів та форми, доставляємо їх безпосередньо на позиції та передаємо в руки бійцям на фронті',
N'АРМІЯ SOS'),
(N'Благодійна Організація «Міжнародний благодійний фонд «Повернись живим» — один із найбільших фондів допомоги українським військовим у зоні АТО. 
Спеціалізується на технічному забезпеченні, насамперед на нічній оптиці. Крім того, займається навчальними, медичними, та іншими проектами.',
N'Повернись живим'),
(N'Здійснення діяльності, направленої на ліквідацію причин соціальних проблем українського суспільства та на сприяння соціального розвитку суспільства;
надання інформаційної, правової, соціальної, психологічної підтримки учасникам та постраждалим в ході проведення АТО (антитерористичної операції) та родинам мобілізованих і добровольців;
сприяння у створенні та діяльності інституцій – об’єднань учасників АТО та їх родин',
N'ДемАльянс Допомога'),
(N'CF `International Charitable Foundation `Everybody Can` - is an initiative of rapid action, which was started in response to social needs related to the tense situation in Ukraine.
Our mission is to improve the life and well-being of the vulnerable Ukrainians through taking actions and promoting philanthropy, volunteerism and meaningful input of everyone.
Everybody can support us.',
N'Кожен Може/Everybody Can'),
(N'Фонд помощи стране «Крылья Феникса» это ты, я и все те, кто участвует в оказании помощи Украине. Для этого не нужны политики или «крыша». Мы все – волонтёры.
 Все что нужно – только твоё добровольное участие. Какое угодно. Просто сделаем дело вместе! ',
N'Фонд помощи стране Крылья Феникса'),
(N'Миссия Матеріальне забезпечення бійців АТО, що воюють на сході.',
N'Волонтери без кордонів'),
(N'Допомога Збройним Силам України під час війни на Сході України.',
N'Наш солдат')
GO

INSERT INTO dbo.Roles
VALUES
('partner'),
('admin'),
('superadmin'),
('moderator')
GO

INSERT INTO dbo.Events
VALUES 
('20170620',
N'Все таємне колись стає явним.
(приглушеним голосом) Прийшов час зняти гриф секретності з ще одного високотехнологічного напрямку, який підтримує Армія СОС поряд з планшетами, безпілотниками, РЕР та автомобілями.
(пошепки) Проект "У̶д̶а̶р̶н̶и̶й̶ тактичний віник". ПРИЄДНУЙТЕСЬ',
1),
('20170619',
N'Дуже люблю один рядок з вірша Сергія Жадана - "не треба рятувати світ, спробуй врятувати хоча б когось".
Для мене ця фраза має особливе "місце" у житті.
Можна битися цілодобово головою о стіну, голосно всім про це розпинатися, але не мати з цього ніякого вихлопу, окрім розбитої голови, звичайно.
А можна тихо робити якісь, здавалось би, для тебе незначні речі, але... ті речі завдяки яким хтось тобі зовсім байдужий, тобі взагалі незнайомий - на сьогодні не має інвалідності, має цілі кінцівки. Або гарний та якісний протез.
Мені б дуже хотілось щоб люди, які просять не афішувати таку їх допомогу знали наскільки важливим є те, чим ви займаєтеся там, у мирному житті, перебуваючи за кордоном, якщо ви маєте змогу оплачувати тим, хто Захищає нашу Україну операції в 8 000$, 11 000€, передавати діткам, які втратили своїх тат 10 000$ , і на мій черговий терміновий клич скидати моментально 600$, яких не вистачає для покупки протезу бійцю.
Коли мені не стає сил витримувати навколишній п%дєц - я завжди думаю : знаючи, що ти можеш врятувати ще хоч одне життя, що можеш зробити хоча б одне життя твого воїна "повноцінним" - хіба не є причиною продовжувати боротьбу?
На всіх фронтах.
',
1),
('20170618',
N'Чергова група наших Захисників почала навчання з управління БПЛА Валькірія від АРМИЯ SOS.
Звіт та фотографії з передачі вже готуємо ))
Приєднуйтеся то важливої допомоги!
- БПЛА (безпілотна розвідка)
- планшети з МАПА для арти та розвідки
- радіоелектронна розвідка
- ремонт військових машин',
1),
('20170620',
N'Последняя неделя ознаменовалась обсуждениями законопроекта, который предположительно радикально изменит статус ситуации на Донбассе.
РНБО, с подачи Президента Украины, готовит документ, которым планируется урегулировать все спорные вопросы, тем или иным образом связанные с войной. 
На фоне этих анонсов Президент Петр Порошенко планирует сегодня встретиться с Президентом США Дональдом Трампом.
Станет ли эта встреча отправной точкой, с которой Украина начнет диктовать украинские интересы в войне на Донбассе? 
Найдет ли Президент поддержку в США для более эффективных решений ситуации на востоке Украины? Что войдет в финальную версию законопроекта о реинтеграции Донбасса?
Сегодня у нас больше вопросов, чем ответов. Но как бы ни называли войну в документах, война остается войной.
И значит - нам держать оборону. Всем вместе, и каждому',
2),
('20170619',
N'«Білка», «Кішка», «Риська»… Ти зустрічаєш там їх всюди: у медичній службі, на позиціях із гранатометом чи біля міномету, і навіть у складі снайперських пар.
Наш фонд лише в цьому році розповідав вам історії декількох жінок, що воюють за Україну, але їх насправді тисячі.
За даними офіційної статистики зараз службу в ЗСУ проходять 21 363 жінки (!). Лише за останній місяць контракт підписало понад 1 тис жінок!',
2),
('20170618',
N'Днями нашому фонду передали благодійний внесок – 100 тисяч гривень. Але ця історія не про гроші. Вона про Людей.
Час від часу нам перераховують суми такого масштабу, і найчастіше ми знаємо, від кого вони. За кожним рядком у нашій звітності глибокий контекст: 
людина, що допомогла армії, її життя, думки, сумніви, рішення. Але наскільки особливий саме цей внесок, зробіть висновки самі.
На тлі війни і подій, що сталися за ці три з половиною роки, Майдан з явища перетворюється на сторінку історії. Але є ті, для кого це болюча рана, 
що її регулярно відкривають наново. Це родини героїв Небесної Сотні.
Поки триває війна з окупантом, тривають і їхні особисті війни – з системою, окремими діячами, які затягують розслідування і розгляд справ. 
З собою, бо доводиться щораз оновлювати у пам’яті те, про що згадувати вже несила. Хочеться просто кинути все і забути. Мабуть, на те і розрахунок. Бій на виснаження, хто перший впаде – система чи діти, дружини, батьки, брати і сестри загиблих.
Пані Галина, дружина одного з Героїв Небесної Сотні, у цій битві встояла. Рік тому було винесено перший обвинувальний вирок проти беркуту. 
Беркутівця, що побив її чоловіка, було засуджено, але окрім того суд зобов’язав МВС, (як роботодавця злочинця) виплатити дружині загиблого моральну шкоду – 200 тисяч гривень.
Міністерство своїх не лишило. Прикривало, заважало розслідуванню, затягувало справу скільки могло. Два місяці тому воно навіть спробувало подати апеляцію, незважаючи на те, 
що усі терміни давно минули. Але суд не погодився поновити строк для її подання. І от нарешті компенсацію виплатили. Половину цієї суми пані Галина віддала на армію.
Хай ці два абзаци не здаються вам занадто сухими і беземоційними. Що б ми не написали, воно все одно і близько не передасть того, що діялося весь цей час у душі цієї мужньої жінки. 
А фальшивити ми не вміємо. Галю, ми знаємо, що Ви не хотіли говорити цього публічно. І дуже вдячні, що все-таки зважилися.
Ваш вчинок – він про величезну, глибоку Гідність. Про пам’ять, яка продовжується у всіх тих, кого Ви захистите на фронті. Про силу, якої вистачило не просто витримати усе, що на Вас впало, 
а й не зневіритися. Це не поверне Вам чоловіка. Але завдяки Вам хтось інший повернеться живим.
Ми не зможемо до кінця осягнути Вашого горя. Але знайте, що кожен з тих, хто дізнається про Вашу історію з цього тексту, думатиме про Вас із теплом і любов’ю – так само, 
як Ви думали про хлопців на фронті. І дуже хочеться вірити, що ми всі хоч на дрібку розділимо Ваш біль. ',
2),
('20170620',
N'Ставте будь-яке питання щодо прав і пільг ветеранів АТО вже о 13:05 за телефоном прямого ефіру 0 800 750 490',
3),
('20170619',
N'Другий законопроект гарантує бійцям, які зараз захищають територіальну цілісність та суверенітет України і які отримали інвалідність після поранень, 
100% покриття всіх медичних послуг на все життя',
3),
('20170618',
N'Ще трошки кровозупиняючих бинтів для наших бійців. Вдячність всім небайдужим!',
3),
('20170620',
N'Друзі, дякуємо кожному з вас! Саме ви рятуєте важкохворих дітей та допомагаєте стареньким, пораненим та родинам загиблих військових. Саме завдяки вам в українських лікарнях 
з''являється нове обладнання, а у талановитих підлітків та молоді можливості розвитку. Завдяки вашим благодійним внескам, волонтерській допомозі, вашим репостам та відповідальності, 
завдяки вашим серцям.
Фонд Кожен Може/Everybody Can це спільнота, яку об''єднують цінності та бажанння змін. Спільнота, яка постійно діє та починає зміни з себе. Це ми з вами! ',
4),
('20170619',
N'Чудово, коли є можливість підтримати людину, яка звернулася по допомогу. Щодня люди звертаються у фонд за допомогою у боротьбі з хворобами.
Особливо важко стареньким, які наприкінці життя стали вигнанцями у власній країні. Їх рідні домівки зруйновані, вони живуть за межею бідності, не мають можливості купити життєзабезпечуючі ліки.
Вони намагаються щосили боротися, але обставини сильніше. Тільки завдяки вашим благодійним внескам ми допомагаємо їм ліками. Але у стареньких є дуже багато потреб. Найпростіших,
 таких як їжа та засоби гігієни.Ми дуже раді, що завдяки соціальній відповідальності Henkel Україна ми змогли допомогти їм наборами з побутовою хімією. 
 І ця підтримка дуже важлива бабуся та дідусям, вони відчувають, що не залишилася наодинці. Дякуємо!',
4),
('20170618',
N'Сьогодні Всесвітній день донора, він відмічається на честь тих, хто добровольно здає кров та рятує життя. Цей день було обрано не випадково, аби нагадати про велике відкриття імунолога та лікаря,
Нобелівского лауреата Карла Ландштейнера. Завдяки його дослідженням світ дізнався про існування різних груп крові.
Донорська кров в достатній кількості - це безпека для кожного, адже кров може знадобитися будь-якої миті будь-якій людині.
Щороку День донора проходить під різними гаслами. 2017-го воно звучить так: "Чим ви можете допомогти?".
Світові організації охорони здоров''я наголошують, що забезпечити потреби в донорській крові буде можливо лише при свідомому підході до цієї проблеми у кожній країні.',
4),
('20170620',
N'55-я арта обожает перцовые пластыри!',
5),
('20170619',
N'Началось всё с носков.
- Женя, твоим носки нужны?
- Носки ни когда не бывают лишними))

А давай отправим им ещё Пантенол, моющее, мыльно-рыльное, и ящик жевачек анти-сон.
Так и собрали небольшую посылку бойцам и механикам в первую танковую, тому самому легендарному Евгению Межевикину Адаму.',
5),
('20170618',
N'В этом случае тяжело описывать ситуацию, не научились писать красивыми словами.
У нас на складе была детская коляска для ДЦП и мы долго не могли найти кому её передать, что бы конкретно в руки. Были люди, которые довезли бы, передали бы, и т.п., но всё мимо.
И вот по рекомендациям Loboda Ev нашли семью с ребёнком, которые остро нуждаются в подобной коляске. Проживают не далеко от Киева под Чернобылем - помчали на доставку и знакомиться!
Вошли во двор и, после слов мамы ребёнка, далее не смогли: "давайте я дочь вынесу, ей 8 лет, но она маленькая для этого кресла, головку не держит, возможно вы назад кресло заберёте..."
Тяжело даже сейчас, после возвращения.
Кресло мы конечно же оставили, пожелали скорейшего выздоровления. Попользуются креслом сколько нужно будет, а нет - передадут другим нуждающимся, из своего круга...
Нуждающиеся люди вокруг нас есть, их много, многие не могут выйти из дома.',
5),
('20170620',
N'Здравствуйте, коллеги!
Вот такой, как на картинке, мед-мобиль из 93 срочно ищет моториста в Киеве.
Fiat Ducato 1987 года, на балансе ВСУ.
Предварительный диагноз - "закончился" двигатель и проблемы в топливной системе.',
6),
('20170619',
N'Шановні військовослужбовці, добровольці та демобілізовані!
24 вересня, у Києві на території ВДНГ відбудеться фестиваль для вас!
Організатори фестивалю:
- Благодійний фонд Чисте Небо
- Центр допомоги учасникам АТО та їх сім''ям /Київська область/
Запрошуємо вас разом із сім`ями та дітьми!',
6),
('20170618',
N'Нещодавно нами були закулпені та передані на передову до одного з підрозділів ЗСУ 2 комплекти інструменту, який допоможе в оперативному ремонті військової техніки.
Щиро вдячні тим, хто допоміг у закупівлі інструменту та магазину http://miolshop.com.ua за якість та велику знижку.
Разом до перемоги!',
6),
('20170620',
N'Таке довгоочікуване багатьма літо не тільки радує теплом та сонцем, але й продовжує забирати життя і здоров''я наших воїнів. Вже четверте літо. 
Тільки уявіть собі! Щоб хоч якось мінімізувати втрати та зберегти життя та здоров''я наших солдат ми продовжуємо збирати гроші на коробку передач на мединий УАЗ для піхоти 92-ї бригади.
Наразі є 7809 грн. з потрібних 16000. Здається, що залишилася ще досить значна сума. Та насправді, якщо кожен з підписників нашої сторінки перекаже всього лише 10 грн.
 - ми матимемо всю необхідну суму! Тож, долучайтеся! Допомагати часом набагато простіше, ниж може здатися. ',
7),
('20170619',
N'Друзі! Тепер ви можете відслідковувати всі надходження і витрати нашої волонтерської групи у режимі реального часу за цим посиланням: https://goo.gl/7zMxjQ
ПІДСУМКИ ЗА ТРАВЕНЬ:
Надійшло: 7100 грн
Витрачено: 5651 грн
(Залишок надходжень буде використано коли назбирається необхідна сума на наступні покупки: на разі, це коробка передач для медичного мікроавтобуса)',
7),
('20170618',
N'Висловлюємо подяку від піхоти 30-ї бригади всім тим, хто долучився до придбання запчастини для їхнього медичного бусу - набір тросів. Піхотні підрозділи перебувають на самому "нулі",
 і, на жаль, не уникають поранень. Цей бус слугуватиме саме транспортуванню поранених до найближчого шпиталю.
Але виявилось, що є ще один дефект, а саме, з головкою блоку циліндрів. Його вартість складає 9000 грн. Ми хотіли б допомогти з остаточним ремонтом цього бусу.
Але ще хотіли нагадати, що наразі збираємо кошти на коробку передач на медичний УАЗ для піхоти вже 92-ї бригади. Тобто, загальна сума запчастин складає наразі 25 000 грн., з яких у наявності є 5000.
Просимо підтримати наших військових у цій допомозі.',
7)
GO

INSERT INTO dbo.EventImages
VALUES 
(1,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-0/p320x320/19275152_1920296758229529_7523884034439723634_n.jpg?oh=9dc342b79aa12d890085d0e694f7607e&oe=59E637A2',
1),
(2,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19397065_1915532365381360_3277652959035811026_n.jpg?oh=3106a56771a678dcdd1f16ab7ce1948b&oe=59CEE830',
1),
(3,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19248059_841269326025055_2823380829229008327_n.jpg?oh=6f1cfc969fb9893f9e6befe35b7ad6d1&oe=59CE1DEE',
1),
(4,
'http://day.kyiv.ua/sites/default/files/styles/460-news/public/news/13112015/1_2.jpg?itok=wdMK56xQ',
1),
(5,
'http://galinfo.com.ua/media/gallery/full/1/0/10830688750548_o.jpg',
1),
(6,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19225923_845917948898977_2732805724612612825_n.jpg?oh=0560d61745167087606fceedf5c03b60&oe=59E8D418',
1),
(7,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/16729415_1430878806963697_4436842430847296734_n.jpg?oh=0ab697499d4aa37f2f5dc9c52bd1bc0c&oe=59CC0F17',
1),
(8,
'http://dem-alliance.org/system/districtnews/2873/large/2873.jpeg?1458596695',
1),
(9,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/17523696_1372066196205738_4029488974432525562_n.jpg?oh=74b685c7af623b5c53814f25a1d3a980&oe=59DC8464',
1),
(10,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/17553896_1416282698444800_8448048968912576298_n.jpg?oh=ea9d3a1eeb2d1ca9a273bf92974ffd2d&oe=59D8828C',
1),
(11,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19366309_1515747475164988_6849503395355686283_n.jpg?oh=5e1eb9b24b5fc84184b31a9a50628a5d&oe=59E49D63',
1),
(12,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19060029_1508181542588248_2629962287875256605_n.jpg?oh=c9530e183226832102d508c7dd75339d&oe=59D2632D',
1),
(13,
'https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/19223021_842861732531303_8855121307758056269_o.jpg?oh=2a4901ebc348fd6e64a2c6ad9a3e331e&oe=59D396CF',
1),
(14,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19247578_829462867216897_7712629058282702202_n.jpg?oh=329dc529db3685c68cf23b967d7ec653&oe=59E82E8A',
1),
(15,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-0/s480x480/19225018_827432557419928_8140525195459433069_n.jpg?oh=d82c10add8220b460e2b173b1d5a6473&oe=59E6E97B',
1),
(16,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/14716149_1209735042416638_6741796248845332808_n.jpg?oh=32d0da4e10cec4af839dd9554b64d23f&oe=59E7A59D',
1),
(17,
'http://rda-kalanchak.gov.ua/uploads/img_9145.jpg',
1),
(18,
'https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/14435316_1068546633264872_523344377092376755_o.jpg?oh=7a9e01c239c8757e73abb55ea388371f&oe=59E6C01D',
1),
(19,
'https://static.life.ru/posts/2016/03/400578/17bba1f9637bd132665e0ee89f343cdf__980x.jpg',
1),
(20,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/18893159_701804223361724_6130108124031571708_n.png?oh=3f2e697dc80690b6971245d4b8f7bd43&oe=59E60F2C',
1),
(21,
'https://scontent-waw1-1.xx.fbcdn.net/v/t31.0-8/18836795_698639290344884_2001069689308999914_o.jpg?oh=9654b422b51f7d1c10a83e034b0cc273&oe=59E31CA0',
1)
GO

INSERT INTO dbo.EventImages
VALUES 
(3,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19397065_1915532365381360_3277652959035811026_n.jpg?oh=3106a56771a678dcdd1f16ab7ce1948b&oe=59CEE830',
0),
(3,
'https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/19248059_841269326025055_2823380829229008327_n.jpg?oh=6f1cfc969fb9893f9e6befe35b7ad6d1&oe=59CE1DEE',
0)

INSERT INTO dbo.Statuses
VALUES
(N'Новий'),
(N'В процесі'),
(N'Виконаний'),
(N'Активний'),
(N'Неактивний')
GO

INSERT INTO dbo.GoodsTypes
VALUES
(N'Взуття'),
(N'Ліки'),
(N'Їжа'),
(N'Техніка'),
(N'Засоби захисту'),
(N'Одяг'),
(N'Інше')
GO

INSERT INTO dbo.Currencies
VALUES
(N'Долар США','USD'),
(N'Євро','EUR'),
(N'Гривня','UAH')
GO

INSERT INTO dbo.GoodsCategories
VALUES
(1,N'Валянки'),
(2,N'Антибіотики'),
(2,N'Перша допомога'),
(1,N'Берци'),
(3,N'Крупи'),
(6,N'Термобілизна')

INSERT INTO dbo.RequestedItems
VALUES
(N'Перш за все, слід зазначити, що без сучасного екіпірування та обмундирування будь-якої підготовки буде недостатньо. Наприклад, у багатьох солдатів немає такої базової речі, як хороші сучасні черевики, 2 пар черевиків. Чи буде солдат ходити по калюжах і бруду, якщо він знає, що його ноги одразу ж промокнуть і у нього ще кілька діб не буде можливості змінити взуття? Те саме стосується й форми. Під час занять із фізичної підготовки, а без цього ніяк не можна, необхідні кросівки. Змушувати солдатів бігати в берцях – злочин.'
,5,N'Черевики',1,1),
(N'• консерва м’ясна (тушкована яловичина або свинина. Можна скляна, але краще металева банка) Непогано також м’ясні консервації сільські (домашня ковбаса, паштети, кров’янка, кашанка і т.д) 
• консерва “Паштет м’ясний\печінковий” 
• сир, ковбаса та інші м’ясні продукти у вакуумних упаковках 
• м’який маргарин, масло-спред в твердих упаковках 
• сухі супи в брикетах 
• борщові, супові заправки 
• кетчуп, майонез, томатна паста 
• лимони, імбир (має високі антизастудні та зігріваючі властивості) 
• консерва рибна (краще в олії) 
• консерва “Каша з м’ясом” або “Квасоля з м’ясом” (краще в металевих банках) 
• консерва овочева (кукурудза, горошок, квасоля, оливки, ананаси та ін.) 
'
,5,N'Харчування',2,1),
(N'Якісна термобілизна конче необхідна для дій взимку. Непромокальний одяг потрібен восени і взимку, а також непромокальні блокноти. В індивідуальному наборі також мають бути викрутки, ручки і маркери і обовязково набори для чищення зброї.'
,6,N'Холодно-зима',4,1),
(N'В аптечці є один препарат, який так само складно знайти, як хороший «бронік» і шолом. Це кровоспинні засоби - Celox (Великобританія), QuikClot (США) або Гемостоп (Росія). Їх найпростіше купити за кордоном.
Одна аптечка повинна бути завжди з солдатом. На розвантажувальному жилеті спереду є невелика сумочка для аптечки. У неї потрібно покласти обовязково кровоспинний засіб - Celox, QuikClot, Гемостоп або їх аналоги.'
,3,N'Перша допомога',3,1)

INSERT INTO dbo.RequestedItemImages
VALUES
('http://terraincognita.ua/img/catalog/obuv/big/snowblime.jpg',0,1),
('http://shop.ice-age.ru/images/track_shoes/orig/1263138363-Scarpa-ZG10.jpg',1,1),
('http://sportlandia.net.ua/wa-data/public/shop/products/89/97/19789/images/24813/24813.970.jpg',0,1),
('http://terraincognita.ua/img/catalog/obuv/big/vista.jpg',0,1),
('http://www.surv24.ru/blogs/wp-content/uploads/2014/11/celox_v_granulah_v_poroshke.jpg',1,4),
('https://www.1staidsupplies.com/sc_images/products/quikclot-acs-hemostatic-sponge_1008_large_image.jpg',0,4),
('http://www.surv24.ru/blogs/wp-content/uploads/2014/11/gemostop1.png',0,4)

select * from dbo.Organizations
select * from dbo.Events
select * from dbo.EventImages
select * from dbo.GoodsTypes
select * from dbo.RequestedItems