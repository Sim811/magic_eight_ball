require "colorize"

class Magic8
  
  def initialize
    @print_answers = [
      "It is certain", 
      "As I see it, yes", 
      "Reply hazy, try again", 
      "Don't count on it", 
      "It is decidedly so", 
      "Most likeyly", 
      "Ask again later", 
      "My reply is no",
       "Without a doubt", 
      "Outlook good", 
      "Better not tell you now", 
      "My sources say no", 
      "Yes definitely", 
      "Yes", 
      "Cannot predict now", 
      "Outlook not so good", 
      "You may rely on it", 
      "Signs point to yes", 
      "Concentrate and ask again",
       "Very doubtful", 
       "Signs point to maybe"
    ] 
    menu
  end

  def menu
    puts ""
    puts "-- Welcome to the Magic Eight Ball --".colorize(:red)
    puts ""
    puts "Type a question to get an answer, or type E to quit".colorize(:red)
    
    question = gets.strip 
    case question
    when "E"
      print "Thank you for playing".colorize(:yellow)
      sleep(2)
      print `clear`
      exit
      
    else
    puts @print_answers.sample.colorize(:yellow)
    sleep(3)
    print `clear`
    menu
    end
  end


end

Magic8.new