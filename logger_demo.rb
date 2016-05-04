class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

 #class variable
  @@a = Logger.new

  def self.instance
    return @@a
  end

  # instance method
  def log_something(what)
    @f.puts what
  end
  private_class_method :new
end