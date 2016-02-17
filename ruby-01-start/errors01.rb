
puts 'Hello'
at_exit do
  puts 'Exiting'
end
raise 'error'