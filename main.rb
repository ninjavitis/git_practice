def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  system "clear"
  puts '1: enter git command'
  puts '2: Exit'
  choice = gets.to_i
  case choice  
  when 1
    puts 'Enter git command'
    puts_git(gets.strip)
    menu
  when 2
    Exit
  else
    puts 'Invalid choice'
    menu
  end
end
menu