require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class CodeClanStudentTest < MiniTest::Test

  def setup
    @student = Student.new('Darren', 'G12')
  end

  def test_get_student_name
    # student = Student.new('Darren', 'G12')
    assert_equal('Darren', @student.get_student_name())
  end

  def test_get_student_cohort
    # student = Student.new('Darren', 'G12')
    assert_equal('G12', @student.get_student_cohort())
  end

  def test_set_student_name
    # student = Student.new('Darren', 'G12')
    @student.set_student_name('Billy')
    assert_equal('Billy', @student.get_student_name())
  end

  def test_set_student_cohort
    # student = Student.new('Darren', 'G12')
    @student.set_student_cohort('E12')
    assert_equal('E12', @student.get_student_cohort())
  end

  def test_student_speaks
    # student = Student.new('Darren', 'G12')
    assert_equal("I can talk!", @student.speaks())
  end

  def test_student_say_favourite_language
    # student = Student.new('Darren', 'G12')
    language = "Ruby"
    assert_equal("I love #{language}!", @student.say_favourite_language(language))
  end

end