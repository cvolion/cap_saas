class ContactsController < ApplicationController
    
    def new         # works with app/views/contacts/new.html.erb
        @contact = Contact.new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = "Thank you! An owl has been dispatched with your comment and our goblin staff will follow up appropriately!"
            redirect_to new_contact_path
        else
            flash[:danger] = "Merlin's Beard! You can't send that without filling in all of the required fields!"
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
    
end