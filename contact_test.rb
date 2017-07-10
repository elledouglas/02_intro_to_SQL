
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'contact.rb'

class TestContact < Minitest::Test


def setup
  @contact = Contact.create(
    first_name: 'Grace',
    last_name:  'Hopper',
    email:      'grace@hopper.com',
    note:       'computer scientist')
end
def test_update
  @contact.update(note: 'wrote the first compiler in 1952')
  assert_equal 'wrote the first compiler in 1952', @contact.note
end

def test_find_by
  assert_equal @contact, Contact.find_by(first_name: 'Grace')
end

end
