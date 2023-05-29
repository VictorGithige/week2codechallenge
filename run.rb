require_relative 'Author'
require_relative 'Magazine'
require_relative 'Article'


author1 = Author.new("Eric Arama")
author2 = Author.new("No Face")
magazine1 = Magazine.new("Aviation Daily","Movie hub")
magazine2 = Magazine.new("Moringa Daily","Eric Dentals")


article1 = Article.new(author1, magazine1, "Boeing News")
article2 = Article.new(author2, magazine1, "United States Airforce")
article3 = Article.new(author1, magazine2, "The new flybird 560")
article4 = Article.new(author2 , magazine2, "DC Legends")

puts "Author name: #{author1.name}"
puts "Magazine name: #{magazine1.name}"
puts "Author of article: #{article1.author.name}"
puts "Article Title: #{article1.title}"
puts "Magazine article: #{article1.magazine.name}"
