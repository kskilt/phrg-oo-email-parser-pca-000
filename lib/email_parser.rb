# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
attr_accessor :email
  @@email = []

  def initialize(email)
      @email = email
  end

  def parse
    parsed = []
    x = email.split(/\s|[,]/).uniq
    x.each do |y|
      if y.length > 2
        parsed << y
      end
    end
    parsed
  end

end
