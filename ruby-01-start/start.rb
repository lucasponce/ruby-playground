#!/usr/bin/ruby

class Start
  attr_accessor :names

  def initialize(names = "HAL")
    @names = names
  end

  def say_hello
    if @names.nil?
      puts "->"
    elsif @names.respond_to?("each")
      @names.each do |n|
        puts "Hello #{n} ..."
      end
    else
      puts "Hello #{names}"
    end
  end

  def say_goodbye
    if @names.nil?
      puts "<-"
    elsif @names.respond_to?("join")
      puts "Bye #{@names.join(", ")} ..."
    else
      puts "Bye #{@names}"
    end
  end
end

if __FILE__ == $0
  s = Start.new
  s.say_hello
  s.say_goodbye

  s.names = "David"
  s.say_hello
  s.say_goodbye

  s.names = ["David", "Frank"]
  s.say_hello
  s.say_goodbye

  s.names = nil
  s.say_hello
  s.say_goodbye
end