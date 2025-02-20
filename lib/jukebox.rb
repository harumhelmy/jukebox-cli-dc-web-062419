require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, i| puts "#{i+1}. #{song}" }
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
    if songs.include?(user_input)
      puts "Playing #{user_input}"
    elsif (1..9).to_a.include?(user_input.to_i)
      puts "Playing #{songs[user_input.to_i - 1]}"
    else 
      puts "Invalid input, please try again"
    end
end

def run(songs)
  command = ""
  help
  while 1 == 1 do
  puts "Please enter a command:"
  command = gets.chomp
    if command == "list"
      list(songs)
      play(songs)
    elsif command == "play"
      list(songs)
      play(songs)
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    else 
      puts "Please enter a valid command"
      help
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end