class Author

    attr_reader :name;

        @@all = []

    def initialize(name)
        @name = name;
        @@all<<self
    end

    def self.all
        @@all
    end

    def articles
     Article.all.select { |article| article.author.name == @name }
    end

    def magazines                                     
        articles.map { |article| article.magazine }.uniq
    end

    def add_article(magazine, title)
        Article.new(author: self, magazine: magazine, title: title)
    end

    def topic_areas
        articles.map { |article| article.magazine.category }.uniq
    end

end