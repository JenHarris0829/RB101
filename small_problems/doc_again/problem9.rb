require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# https://docs.ruby-lang.org/en/master/Psych.html
#load_file(filename, **kwargs)
# Loads the document contained in filename. Returns the yaml contained in filename
# as a Ruby object, or if the file is empty, it returns the specified fallback
# return value, which defaults to false. See load for options.