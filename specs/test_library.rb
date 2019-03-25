require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class LibraryTest < MiniTest::Test

  def setup
    @starting_book = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    @starting_books = [@starting_book]
    @library_object = Library.new(@starting_books)
  end

  def test_get_books
    assert_equal(@starting_books, @library_object.get_books())
  end

  def test_get_book_details
    assert_equal(@starting_book, @library_object.get_book_details("lord_of_the_rings"))
  end

  def test_get_rental_details
    assert_equal(@starting_book[:rental_details], @library_object.get_rental_details("lord_of_the_rings"))
  end

  def test_add_book_title
    @library_object.add_book('learning_ruby')
    assert_equal({title: "learning_ruby",rental_details: {student_name: "",date: ""}}, @library_object.get_book_details("learning_ruby"))
  end

  def test_add_rental_details
    @library_object.add_rental_details("lord_of_the_rings", "Darren", "25/03/19")
    assert_equal({student_name: "Darren",date: "25/03/19"}, @library_object.get_rental_details("lord_of_the_rings"))
  end

end

