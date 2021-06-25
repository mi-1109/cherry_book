def fizz_buzz(n)
  if n % 15 == 0
    n.to_s + ': FizzBuzz'
  elsif n % 3 == 0
    n.to_s + ': Fizz'
  elsif n % 5 == 0
    n.to_s + ': Buzz'
  else
    n.to_s
  end
end

1.upto(30) {|n| 
  puts fizz_buzz(n)
}
  