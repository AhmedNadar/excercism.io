class Anagram
  def initialize(candidate)
    @candidate = candidate
  end
  def match(applicants)
    output = []
    applicants.each { |applicant| output << applicant if (applicant.downcase.chars.sort.eql?(@candidate.downcase.chars.sort) && !applicant.downcase.eql?(@candidate.downcase))}
    output
  end
end
