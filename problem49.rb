# Problem Statement: Create a To-Do List application that allows users to add tasks, list tasks,
# mark tasks as complete, and save/load tasks from a file.

#---------------------------------------------------TO DO APPLICATION-------------------------------------------------------

class TodoListApplication
    def initialize()
        @tasks = []
        @load_from_file = 'todos.txt'
    end

    def add_tasks(description)
        task = {"description" => description, "status" => false}
        @tasks << task
        puts "Your Task '#{description}' added succesfully."
        puts "#{@tasks}"
        save_data
    end

    def mark_complete(description,status)
        if description.nil? 
            puts "Kindly enter the valid description"
        else
            @tasks.each do |task|
                if task["description"] == description && status == true
                    task["status"] = status
                    File.open(@load_from_file,"a") do |file|
                        file.write("\n Task : #{task["description"]} -------------  Completed")
                    end
                    puts "Task '#{task["description"]}' Completed."
                    @tasks.delete(task)
                end
            end

            puts "Remaining Tasks are : "
            count = 1
            @tasks.each do |task|
                puts "#{count}. #{task["description"]}"
            end
        end
    end

    def list_tasks
        puts "Your List of Task are : "
        count = 1
        @tasks.each do |task|
            puts "#{count}. #{task["description"]}"
            count += 1
        end
    end


    #File Operations

    def save_data
        File.open(@load_from_file,"w") do |file|
            @tasks.each do |task|
                file.write("\n Task : #{task["description"]} -------------  Status #{task["status"]}")
            end
        end
    end

    def load_data
        File.open(@load_from_file,"r") do |file|
            @tasks.each do |task|
                puts file.read
            end
        end
    end
end

todo = TodoListApplication.new
todo.add_tasks("Learn Ruby")
todo.add_tasks("kill bug")
todo.add_tasks("byebug")


todo.list_tasks
todo.mark_complete("kill bug",true)
puts "\n\n"
todo.load_data


