def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# The return value is 'no' because the value from 'foo' is 'yes', and when
# passed into bar as 'yes', 'yes' == 'no' will be false