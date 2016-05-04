class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

 #class variable
  @@a = nil
  @b = 2 # instance variable

  def self.instance
    if @@a == nil
      @@a = Logger.new
    end

    return @@a
  end

  # class method
  def self.say_something
    puts 'hehe'
  end

  # instance method
  def log_something(what)
    @f.puts what
  end
end

Logger.instance.log_something('logged action')