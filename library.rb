class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def get_book_details(book_title)
    # for book in @books
    #   if book[:title] == book_title
    #     return book
    #   end
    # end
    # refactored to use select again..
    return @books.select{|book| book[:title] == book_title}[0]
  end

  def get_rental_details(book_title)
    return @books.select{|book| book[:title] == book_title}[0][:rental_details]
  end

  def add_book(book_title)
    new_book = {
      title: book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def add_rental_details(book_title, student_name, due_date)
    @books.select{|book| book[:title] == book_title}[0][:rental_details] = {
      student_name: student_name,
      date: due_date
    }
  end

end
