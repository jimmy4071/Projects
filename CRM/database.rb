require "./contact.rb"

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

  def add(id, firstname, lastname, email, notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end


  # given an id, return the index of that contact
  def contact_index_helper(id_number)
    idx = nil
    @contacts.each_with_index do |contact, index|
      if contact.id == id_number
        idx = index
      end
    end
    idx
  end

  def modify_contact(id_num, option, modification)
    index = contact_index_helper(id_num)
    case option
      when 1
        @contacts[index].firstname = modification
      when 2
        @contacts[index].lastname = modification
      when 3
        @contacts[index].email = modification
      when 4
        @contacts[index].notes = modification
    end
  end


  def display_all_contacts
    @contacts.each do |contact|
      contact.contact_display
    end
  end

  def display_particular_contact(id_num)
    index = contact_index_helper(id_num)
    @contacts[index].contact_display unless index.nil?
  end

  # returns an array of the specified attribute from all contacts
  def display_info_by_attribute(option)
    result = []
    @contacts.each do |contact|
      case option
        when 1
          result << contact.firstname
        when 2
          result << contact.lastname
        when 3
          result << contact.email
        when 4
          result << contact.notes
      end
    end
    result
  end

  def delete_contact(id_num)
    index = contact_index_helper(id_num)
    @contacts.delete_at(index)
  end

end

# db = Database.new

# db.add(1000, "Matt", "Emmons", "email!", "notes")

# db.display_all_contacts
# db.modify_contact(1000, 3, "em@mail.com")
# db.display_all_contacts
