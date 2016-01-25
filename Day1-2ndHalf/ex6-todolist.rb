class List

  attr_accessor :name, :tasks, :tags, :checked_off_tasks

  def initialize(name, tasks=[], tags=[])
    @name = name
    @tasks = []
    @tags = tags
    @checked_off_tasks = []
  end

  def add_task(new_task)
  end

  def checkoff_task
    return false unlcess @tasks.include? task
  end

  def add_tag(new_tag)
    @tags << new_tag
    @tags = @tags.uniq
  end

  def print_tasks
    puts @tasks
  end

end


class Task

  attr_accessor :description

  def initialize (description)
    @description = description
  end

end


class Tag

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
