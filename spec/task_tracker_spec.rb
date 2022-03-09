require 'task_tracker'

RSpec.describe Tasks do

  context "When a task is created" do
      it "adds the task to the task list" do
          task = Tasks.new
          task.add_task("Wash the dishes")
          expect(task.list_tasks).to eq ["Wash the dishes"]
      end
  end

  context "When another task is created" do
    it "adds the task to the task list" do
        task = Tasks.new
        task.add_task("Wash the dishes")
        task.add_task("Walk the dog")
        expect(task.list_tasks).to eq ["Wash the dishes", "Walk the dog"]
    end
  end   

  context "When no task is created" do
    it "fails" do
        task = Tasks.new
        expect { task.add_task("") }.to raise_error "Empty string."
    end
  end
  
  context "When a task is completed" do
    it "removes the completed task from the array" do
        task = Tasks.new
        task.add_task("Wash the dishes")
        task.add_task("Walk the dog")
        task.complete("Wash the dishes")
        expect(task.list_tasks).to eq ["Walk the dog"]
    end
  end

  context "When all tasks are completed" do
    task = Tasks.new
      it "fails when we call for the tasks list" do
        task.add_task("Walk the dog")
        task.add_task("Wash the dishes")
        task.complete("Walk the dog")
        task.complete("Wash the dishes")
        expect { task.list_tasks }.to raise_error "Empty list. Please add a task."
      end
  end

  context "when trying to remove / complete a task that doesn't exist" do
      it "fails" do
        task = Tasks.new
        expect { task.complete("Pick up the children") }.to raise_error "The task doesn't exist."
      end
  end
  
end