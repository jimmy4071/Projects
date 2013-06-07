class Contact

  attr_accessor :id, :firstname, :lastname, :email, :notes

  def initialize(id, firstname, lastname, email, notes)
    @id         = id
    @firstname  = firstname
    @lastname   = lastname
    @email      = email
    @notes      = notes
  end

  def contact_display
    puts ""
    puts "=========================="
    puts "ID:          #{@id}"
    puts "First name:  #{@firstname}"
    puts "Last name:   #{@lastname}"
    puts "Email:       #{@email}"
    puts "Notes:       #{@notes}"
    puts "=========================="
    puts ""
  end

end
