require_relative 'crud'


users = [
  {'username': 'vinicius', 'password':'password'},
  {'username': 'jack', 'password':'password1'},
  {'username': 'logan', 'password':'password2'},
  {'username': 'douglas', 'password':'password3'},
  {'username': 'leopoldo', 'password':'password4'},
]

users_secured = Crud.create_secure_users(users)
puts users
