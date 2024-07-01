if false
  greeting = "hello world"
end

greeting

# "greeting" returns nil because the local variable "greeting" was initialized
# inside of the if conditional but the conditional was not executed, which
# causes "greeting" to reference "nil"