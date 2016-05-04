class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

 #class variable
  @@a = nil

  def self.instance
    if @@a == nil
      @@a = Logger.new
    end
    return @@a
  end


  # instance method
  def log_something(what)
    @f.puts what
  end
end

Logger.instance.log_something('logged action')