def make_an_array
  array = []
  10_000_000.times do
    array <<  "a string"
  end
  return nil
end

GC.start
before = GC.stat(:total_freed_objects)

make_an_array

GC.start
after = GC.stat(:total_freed_objects)
puts "Objects Freed in retained objects: #{after - before}"
