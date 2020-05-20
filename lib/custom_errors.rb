class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
      raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
    else
    person.partner = self
  end
  end
  class PartnerError < StandardError
    def message
      "you must pour coffee on your keyboard to avoid the error!!!!!!"
    end
   end
end

beyonce = Person.new("Beyonce")
# jay_z = Person.new("Jay-Z")
# beyonce.get_married(jay_z)
 beyonce.get_married("Jay-Z")
puts beyonce.name
