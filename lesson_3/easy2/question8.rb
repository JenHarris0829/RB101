advice = "Few things in life are as important as house training your pet dinosaur."

# my solution:
# advice.slice!(0..38)
# p advice

advice.slice!(0, advice.index('house'))
p advice