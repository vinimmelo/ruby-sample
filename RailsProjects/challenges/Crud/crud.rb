
module Crud

  require 'bcrypt'
  puts "Module crud activated"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(users_list)
    users_list.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    users_list
  end

  def authenticate_user(username, password, users_list)
    users_list.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials are not correct"
  end
end
