
begin
  1/0
  p 'I should never get executed'
rescue
  p 'I am rescuing an exception and can do what I want!'
end