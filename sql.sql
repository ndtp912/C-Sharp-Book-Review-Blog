USE [Project_Blog]
GO
/****** Object:  Table [dbo].[account]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[userName] [nvarchar](10) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[displayName] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[role_id] [bit] NOT NULL,
	[gender] [bit] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[lifestory] [nvarchar](2000) NOT NULL,
	[nation] [nvarchar](100) NOT NULL,
	[DOB] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shortDes] [nvarchar](500) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[createby] [nvarchar](10) NOT NULL,
	[language] [nvarchar](10) NOT NULL,
	[image] [nvarchar](10) NOT NULL,
	[published] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_Author]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_Author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [int] NOT NULL,
	[authorid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_Categories]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 4/2/2021 5:26:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [int] NOT NULL,
	[comment] [nvarchar](200) NOT NULL,
	[username] [nvarchar](10) NOT NULL,
	[createdDate] [date] NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([userName], [password], [displayName], [email], [dob], [role_id], [gender], [status]) VALUES (N'cuong123', N'1234', N'Ha Pham Cuong', N'animeislife2k@gmail.com', CAST(N'2021-03-03' AS Date), 0, 0, 1)
INSERT [dbo].[account] ([userName], [password], [displayName], [email], [dob], [role_id], [gender], [status]) VALUES (N'dang', N'123456', N'Nguyen The Dang', N'hansamu@gmail.com', CAST(N'2000-09-11' AS Date), 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[author] ON 

INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (2, N'J. K. Rowling', N'bút danh là J. K. Rowling,  và Robert Galbraith. Cư ngụ tại thủ đô Edinburgh, Scotland là tiểu thuyết gia người Anh, tác giả bộ truyện giả tưởng nổi tiếng Harry Potter với bút danh J. K. Rowling.', N'England', CAST(N'1965-07-31' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (4, N'Mario Puzo', N'là một nhà văn, nhà biên kịch người Mỹ, được biết đến với những tiểu thuyết về Mafia, đặc biệt là Bố già (1969), mà sau này ông đồng chuyển thể thành một bộ phim cùng với Francis Ford Coppola. Ông đã giành được Giải Oscar cho kịch bản chuyển thể xuất sắc nhất vào giữa những năm 1972 và 1974. Dù là một nhà văn được cưng chiều của Hollywood nhưng ông vẫn luôn cảm thấy thất vọng về kinh đô điện ảnh của Mỹ.', N'Italy', CAST(N'1920-10-15' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (5, N'Dale Carnegie
', N'là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay, nội dung nói về cách ứng xử, cư xử trong cuộc sống. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác.', N'America', CAST(N'1888-11-24' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (8, N'Stephen King', N'Stephen Edwin King (born September 21, 1947) is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. His books have sold more than 350 million copies,[2] and many have been adapted into films, television series, miniseries, and comic books. King has published 62 novels, including seven under the pen name Richard Bachman, and five non-fiction books.[3] He has also written approximately 200 short stories, most of which have been published in book collections.[4][5]

King has received Bram Stoker Awards, World Fantasy Awards, and British Fantasy Society Awards. In 2003, the National Book Foundation awarded him the Medal for Distinguished Contribution to American Letters.[6] He has also received awards for his contribution to literature for his entire bibliography, such as the 2004 World Fantasy Award for Life Achievement and the 2007 Grand Master Award from the Mystery Writers of America.[7] In 2015, he was awarded with a National Medal of Arts from the U.S. National Endowment for the Arts for his contributions to literature.[8] He has been described as the "King of Horror", a play on his surname and a reference to his high standing in pop culture.[9]', N'U.S. state', CAST(N'1971-02-01' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (12, N'Kristin Hannah', N'Kristin Hannah was born in California. After she graduated with a degree in communication from the University of Washington, she worked at an advertising agency in Seattle. She graduated from the University of Puget Sound law school and practiced law in Seattle before becoming a full-time writer. Hannah wrote her first novel with her mother, who was dying of cancer at the time; the book was never published.[2]

Hannah''s best-selling work is The Nightingale, selling over two million copies and published in 43 languages.[3]

Hannah lives on Bainbridge Island, Washington,[4] with her husband and their son.', N'America', CAST(N'1960-09-25' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (14, N'Fredrik Backman', N'Fredrik Backman (born 2 June 1981) is a Swedish columnist, blogger and writer. He is the author of A Man Called Ove (2012), My Grandmother Asked Me to Tell You She''s Sorry (2013), Britt-Marie Was Here (2014), Beartown (2017), Us Against You (2018), and Anxious People (2020). The books were number one bestsellers in his home country of Sweden. Backman''s books have been published around the world in more than twenty-five languages.[1]', N'America', CAST(N'1980-06-02' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (16, N'Adam Grant', N'Adam M. Grant is an American psychologist and author who is currently a professor at the Wharton School of the University of Pennsylvania specializing in organizational psychology. He received academic tenure aged 28, making him the youngest tenured professor at the Wharton School.', N'English', CAST(N'1981-08-13' AS Date))
INSERT [dbo].[author] ([id], [name], [lifestory], [nation], [DOB]) VALUES (17, N'Ha Pham Cuong', N'aaaaaaaaaaaaaa', N'Afganistan', CAST(N'2021-03-30' AS Date))
SET IDENTITY_INSERT [dbo].[author] OFF
GO
SET IDENTITY_INSERT [dbo].[book] ON 

INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (2, N'A haunting fable of a lonely, moribund world that is entirely too plausible.', N'Klara and The Sun', N'Nobelist Ishiguro returns to familiar dystopian ground with this provocative look at a disturbing near future.

Klara is an AF, or “Artificial Friend,” of a slightly older model than the current production run; she can’t do the perfect acrobatics of the newer B3 line, and she is in constant need of recharging owing to “solar absorption problems,” so much so that “after four continuous days of Pollution,” she recounts, “I could feel myself weakening.” She’s uncommonly intelligent, and even as she goes unsold in the store where she’s on display, she takes in the details of every human visitor. When a teenager named Josie picks her out, to the dismay of her mother, whose stern gaze “never softened or wavered,” Klara has the opportunity to learn a new grammar of portentous meaning: Josie is gravely ill, the Mother deeply depressed by the earlier death of her other daughter. Klara has never been outside, and when the Mother takes her to see a waterfall, Josie being too ill to go along, she asks the Mother about that death, only to be told, “It’s not your business to be curious.” It becomes clear that Klara is not just an AF; she’s being groomed to be a surrogate daughter in the event that Josie, too, dies. Much of Ishiguro’s tale is veiled: We’re never quite sure why Josie is so ill, the consequence, it seems, of genetic editing, or why the world has become such a grim place. It’s clear, though, that it’s a future where the rich, as ever, enjoy every privilege and where children are marshaled into forced social interactions where the entertainment is to abuse androids. Working territory familiar to readers of Brian Aldiss—and Carlo Collodi, for that matter—Ishiguro delivers a story, very much of a piece with his Never Let Me Go, that is told in hushed tones, one in which Klara’s heart, if she had one, is destined to be broken and artificial humans are revealed to be far better than the real thing.

A haunting fable of a lonely, moribund world that is entirely too plausible.', N'dang', N'english', N'112.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (29, N' A memorable, provocative book that exposes an American history in which few can take pride.', N'CASTE', N'The Pulitzer Prize–winning journalist chronicles the formation and fortunes of social hierarchy.

Caste is principally associated with India, which figures in the book—an impressive follow-up to her magisterial The Warmth of Other Suns—but Wilkerson focuses on the U.S. We tend to think of divisions as being racial rather than caste-based. However, as the author writes, “caste is the infrastructure of our divisions. It is the architecture of human hierarchy, the subconscious code of instructions for maintaining, in our case, a four-hundred-year-old social order.” That social order was imposed on Africans unwillingly brought to this country—but, notes Wilkerson, “caste and race are neither synonymous nor mutually exclusive.” If Africans ranked at the bottom of the scale, members of other ethnic orders, such as Irish indentured servants, also suffered discrimination even if they were categorized as white and thus hierarchically superior. Wilkerson writes that American caste structures were broadly influential for Nazi theorists when they formulated their racial and social classifications; they “knew that the United States was centuries ahead of them with its anti-miscegenation statutes and race-based immigration bans.” Indeed, the Nazi term “untermensch,” or “under-man,” owes to an American eugenicist whose writings became required reading in German schools under the Third Reich, and the distinction between Jew and Aryan owes to the one-drop rules of the American South. If race links closely to caste in much of Wilkerson’s account, it departs from it toward the end. As she notes, the U.S. is rapidly becoming a “majority minority” country whose demographics will more closely resemble South Africa’s than the norms of a half-century ago. What matters is what we do with the hierarchical divisions we inherit, which are not hewn in stone: “We are responsible for ourselves and our own deeds or misdeeds in our time and in our own space and will be judged accordingly by succeeding generations.”

A memorable, provocative book that exposes an American history in which few can take pride.', N'dang', N'english', N'113.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (31, N'A story with both comedy and heartbreak sure to please Backman fans.', N'Anxious People', N'Eight people become unlikely friends during a hostage situation created by an inept bank robber.

In a town in Sweden, a desperate parent turns to bank robbery to help pay the rent. Unfortunately, the target turns out to be a cashless bank, which means that no robbery can take place. In an attempt to flee the police, the would-be perpetrator runs into a nearby apartment building and interrupts an open house, causing the would-be buyers to assume they''re being held hostage. After the situation has ended with an absent bank robber and blood on the carpet, a father-and-son police pair work through maddening interviews with the witnesses: the ridiculous realtor; an older couple who renovates and sells apartments in an effort to stay busy; a bickering young couple expecting their first child; a well-off woman interested only in the view from the balcony of a significant bridge in her life; an elderly woman missing her husband as New Year’s Eve approaches; and, absurdly, an actor dressed as a rabbit hired to disrupt the showing and drive down the apartment price. Backman’s latest novel focuses on how a shared event can change the course of multiple people’s lives even in times of deep and ongoing anxiousness. The observer/narrator is winding and given to tangents and, in early moments, might distract a bit too much from the strongly drawn characters. But the story gains energy and sureness as it develops, resulting in moments of insight and connection between its numerous amiable characters.

A story with both comedy and heartbreak sure to please Backman fans.', N'dang', N'english', N'114.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (32, N' BOOKSHELF For devoted Hannah fans in search of a good cry.', N'The Four Winds', N'The miseries of the Depression and Dust Bowl years shape the destiny of a Texas family.

“Hope is a coin I carry: an American penny, given to me by a man I came to love. There were times in my journey when I felt as if that penny and the hope it represented were the only things that kept me going.” We meet Elsa Wolcott in Dalhart, Texas, in 1921, on the eve of her 25th birthday, and wind up with her in California in 1936 in a saga of almost unrelieved woe. Despised by her shallow parents and sisters for being sickly and unattractive—“too tall, too thin, too pale, too unsure of herself”—Elsa escapes their cruelty when a single night of abandon leads to pregnancy and forced marriage to the son of Italian immigrant farmers. Though she finds some joy working the land, tending the animals, and learning her way around Mama Rose''s kitchen, her marriage is never happy, the pleasures of early motherhood are brief, and soon the disastrous droughts of the 1930s drive all the farmers of the area to despair and starvation. Elsa''s search for a better life for her children takes them out west to California, where things turn out to be even worse. While she never overcomes her low self-esteem about her looks, Elsa displays an iron core of character and courage as she faces dust storms, floods, hunger riots, homelessness, poverty, the misery of migrant labor, bigotry, union busting, violent goons, and more. The pedantic aims of the novel are hard to ignore as Hannah embodies her history lesson in what feels like a series of sepia-toned postcards depicting melodramatic scenes and clichéd emotions.

For devoted Hannah fans in search of a good cry.', N'dang', N'english', N'115.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (33, N'Crave chills and thrills but donât have time for a King epic? This will do the job before bedtime. Not that youâll sleep.', N'LATER', N'Horrormeister King follows a boy’s journey from childhood to adolescence among the dead—and their even creepier living counterparts.

Jamie Conklin sees dead people. Not for very long—they fade away after a week or so—but during that time he can talk to them, ask them questions, and compel them to answer truthfully. His uncanny gift at first seems utterly unrelated to his mother Tia’s work as a literary agent, but the links become disturbingly clear when her star client, Regis Thomas, dies shortly after starting work on the newest entry in his bestselling Roanoke Saga, and Tia and her lover, NYPD Detective Liz Dutton, drive Jamie out to Cobblestone Cottage to encourage the late author to dictate an outline of his latest page-turner so that Tia, who’s fallen on hard times, can write it in his name instead of returning his advance and her cut. Now that she’s seen what Jamie can do, Liz takes it on herself to arrange an interview in which Jamie will ask Kenneth Therriault, a serial bomber who’s just killed himself, where he’s stowed his latest explosive device before it can explode posthumously. His post-mortem encounter with Therriault exacts a high price on Jamie, who now finds himself more haunted than ever, though he never gives up on the everyday experiences in which King roots all his nightmares.

Crave chills and thrills but don’t have time for a King epic? This will do the job before bedtime. Not that you’ll sleep.', N'dang', N'english', N'116.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (34, N'BOOKSHELF Grant breaks little to no ground but offers well-intentioned, valuable advice on periodically testing oneâs beliefs.', N'THINK AGAIN: 
THE POWER OF KNOWING WHAT YOU DON''T KNOW', N'The bestselling author of Originals (2016) returns with an exploration of the theoretical and practical values of rethinking and mental agility.

Though rethinking and unlearning are not new intellectual exercises (Socrates: “The unexamined life is not worth living”), they are worth revisiting. Our worldview—that assemblage of instincts, habits, assumptions, and experiences—is something we hold dear. Grant, who teaches organizational psychology at the Wharton School of Business, challenges readers to rethink their outlooks on an ongoing basis, and he often makes time-tested concepts feel fresh. The author consistently emphasizes the importance of lifelong learning and maintaining an open, flexible mind. Grant investigates rethinking in three areas—the individual, changing others’ minds, and collective environments—and supports his text with research in numerous disciplines as well as entertaining anecdotes on a variety of topics, including the Blackberry, the presidency of Iceland, confirmation and desirability biases, the mindsets of totalitarians, and the values of scientific thinking (“favors humility over pride, doubt over certainty, curiosity over closure”) and confident humility. Regarding the last, leaders of all stripes can learn from Grant’s incisive discussion of how “you can be confident in your ability to achieve a goal in the future while maintaining the humility to question whether you have the right tools in the present.” As in his previous books, Grant employs earnest, crisp prose and thorough research. While readers will nod along in agreement with many of his points, some may give pause. For example: “Even if we disagree strongly with someone on a social issue, when we discover that she cares deeply about the issue, we trust her more. We might still dislike her, but we see her passion for a principle as a sign of integrity. We reject the belief but grow to respect the person behind it.” Activist readers, especially those involved in anti-racism work, will certainly disagree.

Grant breaks little to no ground but offers well-intentioned, valuable advice on periodically testing one’s beliefs.', N'dang', N'english', N'117.jpg', CAST(N'2021-02-27' AS Date))
INSERT [dbo].[book] ([id], [shortDes], [name], [description], [createby], [language], [image], [published]) VALUES (51, N'aaaaaaaaaa', N'123451', N'aaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbb', N'dang', N'Bangladesh', N'117.jpg', CAST(N'2021-04-01' AS Date))
SET IDENTITY_INSERT [dbo].[book] OFF
GO
SET IDENTITY_INSERT [dbo].[book_Author] ON 

INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (1, 2, 12)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (2, 29, 5)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (3, 31, 14)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (4, 34, 16)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (6, 32, 12)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (7, 33, 8)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (8, 34, 4)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (13, 51, 2)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (14, 51, 2)
INSERT [dbo].[book_Author] ([id], [bookid], [authorid]) VALUES (15, 51, 2)
SET IDENTITY_INSERT [dbo].[book_Author] OFF
GO
SET IDENTITY_INSERT [dbo].[book_Categories] ON 

INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (1, 2, 1)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (2, 2, 2)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (3, 29, 4)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (5, 31, 1)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (6, 32, 1)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (7, 33, 3)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (8, 34, 7)
INSERT [dbo].[book_Categories] ([id], [bookid], [categoryid]) VALUES (14, 51, 1)
SET IDENTITY_INSERT [dbo].[book_Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [category]) VALUES (1, N'Fiction')
INSERT [dbo].[category] ([id], [category]) VALUES (2, N'Thriller')
INSERT [dbo].[category] ([id], [category]) VALUES (3, N'Non-Fiction')
INSERT [dbo].[category] ([id], [category]) VALUES (4, N'Hstory')
INSERT [dbo].[category] ([id], [category]) VALUES (5, N'Mystery')
INSERT [dbo].[category] ([id], [category]) VALUES (6, N'Romance')
INSERT [dbo].[category] ([id], [category]) VALUES (7, N'Business')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (9, 2, N'qqqq', N'dang', CAST(N'2021-03-25' AS Date), 0)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (11, 2, N'aa', N'dang', CAST(N'2021-03-25' AS Date), 1)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (13, 2, N'4444
', N'dang', CAST(N'2021-03-28' AS Date), 1)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (16, 29, N'cuong dz
', N'dang', CAST(N'2021-04-01' AS Date), 0)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (17, 29, N'cuong aaaaaaaa', N'dang', CAST(N'2021-04-01' AS Date), 0)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (21, 29, N'aaaaaaaaa', N'dang', CAST(N'2021-04-01' AS Date), 1)
INSERT [dbo].[comment] ([id], [bookid], [comment], [username], [createdDate], [status]) VALUES (22, 31, N'aaaaaaaa', N'dang', CAST(N'2021-04-02' AS Date), 0)
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
ALTER TABLE [dbo].[book_Author]  WITH CHECK ADD  CONSTRAINT [FK_book_Author_author] FOREIGN KEY([authorid])
REFERENCES [dbo].[author] ([id])
GO
ALTER TABLE [dbo].[book_Author] CHECK CONSTRAINT [FK_book_Author_author]
GO
ALTER TABLE [dbo].[book_Author]  WITH CHECK ADD  CONSTRAINT [FK_book_Author_book] FOREIGN KEY([bookid])
REFERENCES [dbo].[book] ([id])
GO
ALTER TABLE [dbo].[book_Author] CHECK CONSTRAINT [FK_book_Author_book]
GO
ALTER TABLE [dbo].[book_Categories]  WITH CHECK ADD  CONSTRAINT [FK_book_Categories_book] FOREIGN KEY([bookid])
REFERENCES [dbo].[book] ([id])
GO
ALTER TABLE [dbo].[book_Categories] CHECK CONSTRAINT [FK_book_Categories_book]
GO
ALTER TABLE [dbo].[book_Categories]  WITH CHECK ADD  CONSTRAINT [FK_book_Categories_category] FOREIGN KEY([categoryid])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[book_Categories] CHECK CONSTRAINT [FK_book_Categories_category]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_account] FOREIGN KEY([username])
REFERENCES [dbo].[account] ([userName])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_account]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_book] FOREIGN KEY([bookid])
REFERENCES [dbo].[book] ([id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_book]
GO
