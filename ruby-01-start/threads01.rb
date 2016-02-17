
def runnable1
  i=0
  while i<=10
    puts "runnable1 at #{Time.now}"
    sleep(2)
    i=i+1
  end
end

def runnable2
  j=0
  while j<=10
    puts "runnable2 at #{Time.now}"
    sleep(2)
    j=j+1
  end
end

puts "Started At #{Time.now}"
t1=Thread.new{runnable1()}
t2=Thread.new{runnable2()}
t1.join
t2.join
puts "End at #{Time.now}"
