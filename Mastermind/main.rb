puts''   
puts "\e[34m  Welcome to my Mastermind Game  \e[0m ".center(50)
puts''
puts 'In this game you can be the code maker or the code breaker.'
puts''
puts 'The code maker creates a 4 digit code using numbers from 1 to 6. You can duplicate the numbers as well.'
puts''
puts 'The code breaker has only 12 chances to guess the code'
puts ''
puts "\e[31m May the odds be ever in your favor. \e[0m".center(50)


module Start
   NUMBER = ['1','2','3','4','5','6']
end

def decide
  include Start
  puts'Press 1 if you want to be the code maker or press 2 if you want to be the code breaker'
  decision=gets.chomp.to_s
  if decision == '1'

    c_attempt = 0

    puts 'Enter in your secret code here for the computer to guess'
    puts'Example: 9870'
    player_code=gets.chomp.to_s

    for attempt in 1..12 or p_code == player
      p_code = Start::NUMBER.sample(4)
      sleep (1)
      puts''
      c_match=p_code.any?(player_code)
      c_attempt+=1
      puts"Computer guess: #{p_code} Attempt number: [#{c_attempt}] Match: [#{c_match}]" 
  
    
      if p_code == player_code
        puts'The computer cracked the code! :/'
        puts'#{p_code}'
      else
        puts'The computer was unable to crack your code'
      end
    end
  end
  if decision == '2'
    code = Start::NUMBER.sample(4)
    attempt = -1
  
    
    for attempt in 1..12 or answer == code
      puts'Enter your guess'
      answer=gets.chomp.to_s
      match=code.any?{answer}
      attempt+=1
      puts"Attempt number: #{attempt} Match: #{match}"
    end


      if answer == code
        puts 'Congrats! You beat the computer'
        puts "#{code}"
      else
        puts'You were unable to crack the code'
        puts "#{code}"
      end
  end
end
  
def again
  puts'Enter yes if you would like to play again or no if you wish to quit'
  response=gets.chomp.capitalize
  if response == 'Yes'
    decide
  else
    puts'Okay, thanks for playing!'
  end
end
decide
again



