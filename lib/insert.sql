INSERT INTO series (title, author_id, subgenre_id)
    VALUES 
    ("Sherlock", 1, 1),
    ("Goosebumbs", 2, 2)
;

INSERT INTO books (title, year, series_id)  
    VALUES
    ("sherlock_1", 1950, 1),
    ("sherlock_2", 1955, 1),
    ("sherlock_3", 1960, 1),
    ("goosebumps_1", 1990, 2),
    ("goosebumps_2", 1992, 2),
    ("goosebumps_3", 1995, 2)
;

INSERT INTO characters (name, motto, species,
    author_id, series_id)
    VALUES
    ("kid_1", "go into haunted house", "human", 2, 2),
    ("kid_2", "dig up grave", "human", 2, 2),
    ("kid_3", "go in strange car", "human", 2, 2),
    ("kid_4", "get lost", "human", 2, 2),
    ("sherlock", "solve mystery", "human", 1, 1),
    ("watson", "follow holmes", "human", 1, 1),
    ("lestrade", "i am confused", "human", 1, 1),
    ("moriarty", "tease holmes", "human", 1, 1)
;

INSERT INTO subgenres (name)
    VALUES
    ("mystery"),
    ("horror")
;

INSERT INTO authors (name)
    VALUES
    ("british guy"),
    ("rl stine")
;

INSERT INTO character_books (character_id, book_id)
    VALUES
    (1,2),
    (1,3),
    (1,1),
    (2,1),
    (2,2),
    (3,1),
    (4,3),
    (3,2),
    (5,4),
    (5,5),
    (5,6),
    (6,4),
    (7,6),
    (8,6),
    (6,6),
    (6,5)
;
