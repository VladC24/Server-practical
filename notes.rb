class NoteList
  attr_reader :list

  def initialize
    @list = []
  end

  def menu
    while true do
      puts "What would you like to do?\n"
      # puts "1. Add note\n"
      puts "2. Display all notes\n"
      puts "3. Delete note\n"
      puts "9. Quit\n"
      option = gets.chomp.to_i
      # if option == 1
      #   add_note
      #   puts ""
      if option == 2
        display_notes
        puts ""
      elsif option == 3
        delete_note
        puts ""
      elsif option == 9
        break
      else
        puts "Try again\n"
      end 
    end
  end

  def add_note(note)
    # puts "Input the note"
    # note = gets.chomp.to_s
    # puts "Note has been added to the list!\n"
    @list << note
  end

  def display_notes
    puts "See the list of notes\n"
    puts ""
    puts @list
    puts "\n"
  end

  def delete_note
    puts "Which note would you like to delete? Input a number:"
    puts @list
    puts ""
    index = gets.chomp.to_i
    puts ""
    if @list.length == 0
      puts "There are no items in the list!"
      puts ""
    elsif @list.length < index
      puts "Not so many notes in the list. Try again!"
    else  @list.delete_at(index - 1)
      puts "Note has been deleted!\n"
    end
  end

end