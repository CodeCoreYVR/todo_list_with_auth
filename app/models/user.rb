class User < ApplicationRecord
    has_secure_password
    # Authentication
    # -  We need to have users in our app to authenticate
    # -  and that including Sign Up (registration or create
    #    a user in user's table) and Sign In(creating a session)

    # We use bcypt to secure the password and save them as a
    # hash in our user's table. And for that we need
    #   1 - User's table
    #   2 - bcrypt gem 
    #   3 - a field in user's table that's called password_digest
    #   4 - having has_secure_password in user's model
end
