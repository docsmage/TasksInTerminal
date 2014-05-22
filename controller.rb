require_relative 'model'
require_relative 'view'

class Todolist
  def initialize(view, model)
    @view = view
    @model = model
  end

  def display_list
    list = @model.print
    @view.print(list)
  end

  def add_task
    new_task = @view.add_task
    @model.add_task(new_task)
  end

  def delete_task
    trashed_task = @view.delete_task
    @model.delete_task(trashed_task)
  end

  def mark_complete
    completed = @view.mark_complete
    @model.mark_complete(completed)
  end

  def choose_option
    option = @view.menu.to_i
    case option
    when 1
      display_list
      choose_option
    when 2      
      display_list
      add_task
      display_list
      choose_option
    when 3
      display_list
      delete_task
      display_list
      choose_option
    when 4
      display_list
      mark_complete
      display_list
      choose_option
    when 5
      puts "Goodbye!"
      return 
    else
      @view.error
    end
  end

end