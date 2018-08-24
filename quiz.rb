def greeting
  puts "This is a Palindrome tester."
  print "press enter to continue..."
  gets
  puts "Give me a word and I'll tell you if it's a Palindrome"
  print "press enter to continue..."
  gets
  checker
end

def intro
  puts "Would you like to test another word?"
  puts "yes or no"
  response = gets.chomp
  case response
  when "yes"
    puts "Please give me another word."
    checker
  when "no"
    puts "Thanks for joining us today."
    exit_program
  else
    puts "Please enter yes or no."
  end
end

def checker
  print "> "
  word = gets.chomp.strip.downcase
  backwords_word = ""
  x = 1
  while word.length >= x
      backwords_word += word[-x]
      x += 1
  end

  if backwords_word == word
      puts "YES"
      gets
  else
      puts "NO"
      gets
  end
  intro
end

def exit_program
  exit
end


greeting
