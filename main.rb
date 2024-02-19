# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp find(7) # Example of using find method

pp qualified_candidates(@candidates) # Example of using qualified_candidates method

pp ordered_by_qualifications(@candidates) # Example of using ordered_by_qualifications method