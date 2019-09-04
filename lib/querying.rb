def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  INNER JOIN series
  ON books.series_id = series.id
  WHERE series.id = 1
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS occurence
  FROM characters
  GROUP BY species
  ORDER BY occurence DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  JOIN authors
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT title
  FROM (
    SELECT *
    FROM series
    JOIN authors
    ON authors.id = series.author_id
    JOIN characters
    ON characters.author_id = authors.id
  )
  WHERE species = 'human'
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(book_id) AS occurences
  FROM (
    SELECT *
    FROM character_books
    JOIN characters
    ON characters.id = character_books.character_id
  )
  GROUP BY name
  ORDER BY occurences DESC"
end
