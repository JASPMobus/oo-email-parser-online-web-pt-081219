# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_addresses
  
  def initialize(email_addresses)
    @email_addresses =  email_addresses
  end 
  
  def parse
    ret = @email_addresses.split(" ")
    
    ret.each_with_index do |email_address, index| 
      ret[index] = email_address.gsub(/,/, "")
    end
    
    ret.uniq
  end 
end