# Exercise to work with Classes, Inheritence and Variable Scoping

class Computer 
    @@users = {}

    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end

    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "File #{filename} successfully created at #{time}"
    end 

    def read_files
        puts @files
    end

    def Computer.get_users
        return @@users
    end
end

my_computer = Computer.new("daniel", 1234)

puts my_computer.username