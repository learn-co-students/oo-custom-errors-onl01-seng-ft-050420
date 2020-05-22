class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
  if person.class != Person
   begin
    raise PartnerError #we are calling the partner error method
  rescue PartnerError => error
    puts error.message
   end
    else
      person.partner = self
  end
  end

  class PartnerError < StandardError #here is the method right here
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

#begin
#  raise YourCustomError
#rescue YourCustomError
#end
