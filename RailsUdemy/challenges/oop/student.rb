class Student
  attr_accessor :first_name, :last_name, :email, :username

  def initialize(first_name, last_name, username, email)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end

end


vini = Student.new('Vinicius', 'Melo', 'vinimmelo', 'vini@teste.com')

puts vini
