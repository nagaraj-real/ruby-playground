require "./name"

class Employee
  include Name
  attr_reader :firstName
  attr_reader :lastName
  attr_reader :address
  attr_reader :phone

  def initialize(firstName,lastName,address,phone)
    @firstName=firstName
    @lastName=lastName
    @address=address
    @phone=phone
  end

  def to_s
    fullName
  end

end

class Worker
  include Name
  attr_reader :firstName
  attr_reader :lastName
  def initialize(firstName,lastName)
    @firstName=firstName
    @lastName=lastName
  end

  def to_s
    fullName
  end
end

emp1 = Employee.new('Raj','R','address 1',12344)
puts emp1

work1 = Worker.new('Rocky','Rambo')
puts work1
