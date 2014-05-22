class Model

attr_accessor :list

  def initialize
	@list = []
  end

  def print
    if @list.length > 0
    	puts "The items on your list are as follows: "
    	task_number = 1
    	@list.map {|task| puts "#{task_number}) #{task}"; task_number += 1}
    else 
    	puts "There are currently no items on your task list."
    end
  end

  def add_task(new_task)
    list << "#{new_task}\n"
  end

  def delete_task(trashed_task)
    index = get_index(trashed_task)
    if index <= @list.length
      @list.delete_at(index)
    end
  end

  def mark_complete(completed)
    index = get_index(completed)
    if index <= @list.length
      @list[index].insert(-2, " - COMPLETE")
    end
  end

  def get_index(task)
    index = task.to_i - 1
  end

end