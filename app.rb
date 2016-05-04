class Logger
  def self.say_something
    puts 'hehe'
  end

  def self.log_something(what)
    f = File.open('log.txt', 'a')
    f.puts what
    f.close
  end
end

Logger.log_something('logged action')