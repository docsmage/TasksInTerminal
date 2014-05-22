class View
  def print(list)
  end

  def menu
    puts "choose an option:\n 1) display list\n 2) add task\n 3) delete task\n 4) mark completed\n 5) quit"
    option = gets.chomp
  end

  def add_task
    puts "Enter a task to add."
    new_task = gets.chomp
  end

  def delete_task
    puts "Type the task number you like to delete."
    trashed_task = gets.chomp
  end

  def mark_complete
    puts "Type the task number you like to mark complete."
    completed = gets.chomp
  end

  def error
    puts "Your selection was invalid."
  end

end