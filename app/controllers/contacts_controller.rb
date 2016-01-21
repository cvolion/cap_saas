class ContactsController < ApplicationController
    def new         # works with app/views/contacts/new.html.erb
     @contact = Contact.new
    end
    def create
    end
end