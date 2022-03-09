class Tasks

  def initialize
    @task_array = []
  end

  def add_task(task)
    fail "Empty string." if task.empty?
    @task_array.push(task)
  end

  def complete(task)
    fail "The task doesn't exist." if !@task_array.include? task
    @task_array.delete(task)
  end

  def list_tasks
    fail "Empty list. Please add a task." if @task_array.empty?
    return @task_array
  end

  end