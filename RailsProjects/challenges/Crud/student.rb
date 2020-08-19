require_relative 'crud'


class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  include Crud

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end

end


vini = Student.new('Vinicius', 'Melo', 'vinimmelo',
                   'vini@teste.com', 'password')

puts vini
hashed = vini.create_hash_digest(vini.password)
puts hashed
