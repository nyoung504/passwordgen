#Password Generator
#todos
#1. How do we generate a password in ruby?

def ask_user_for_password_length
puts "How many characters would you like your password to be?"
print "> "
gets.chomp.to_i
end

def generate_password 
  password_length = ask_user_for_password_length
  password = ""
  password_length.times do
  ascii_decimal = rand(33..126)
  password += ascii_decimal.chr
  end
  return password

end

def menu
  puts "Welcome to password generator"
  puts "What would you like to do? (type 1 or 2)"
  puts "1. Generate new password"
  puts "2. Exit"
  print "> "
  gets.chomp.to_i
end

def user_selection
  menu
  gets.chomp.to_i
end


loop do
  case user_selection
  when 1
    puts generate_password
  when 2
    exit
  else
    puts "Wrong user input"
    puts "Please type a 1 or a 2"
    end
  end



#2 how will the user ask for a new password
#3. how will we store the password in memory?
#4. how many characters will be in password?
