# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Find the candidate with the given id
  @candidates.find { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
  # Check if the candidate has 2 years of experience or more
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  # Filter candidates based on criteria
  candidates.select do |candidate|
    experienced?(candidate) &&
      candidate[:github_points] >= 100 &&
      (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
      candidate[:date_applied] >= 15.days.ago.to_date &&
      candidate[:age] > 17
  end
end

def ordered_by_qualifications(candidates)
  # Sort candidates by experience and Github points
  candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end
end
  
  # More methods will go below