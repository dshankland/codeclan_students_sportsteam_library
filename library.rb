class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def get_book_info(book_title)
    # for book in @books
    #   if book[:title] == book_title
    #     return book
    #   end
    # end
    # refactored to use select again..
    return @books.select{|book| book[:title] == book_title}[0]
  end

end
