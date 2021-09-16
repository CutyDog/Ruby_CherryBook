
def regexp_checker
  retry_count = 0 
  
  print 'Text?: '
  text = gets.chomp
  
  begin
    print 'Pattern?: '
    pattern = gets.chomp
    regexp = Regexp.new(pattern)
  rescue RegexpError
    retry_count += 1
    case retry_count
    when (1...3)
      puts "This pattern is invalid : #{pattern}"
      retry
    else
      puts 'Sorry, it could not be continued..'
      return
    end
  end
  
  matches = text.scan(regexp)
  if matches.size > 0
    puts "Matched: #{matches.join(', ')}"
  else
    puts 'Nothing matched.'
  end
end

regexp_checker
