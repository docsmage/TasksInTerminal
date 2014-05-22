require_relative 'controller'

todo = Todolist.new(View.new, Model.new)
todo.choose_option