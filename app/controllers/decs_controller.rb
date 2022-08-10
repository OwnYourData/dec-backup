class DecsController < ApplicationController
    include ApplicationHelper

    # Input 
    # {
    #   "username": "john_doe",
    #   "password": "password in cleartext"
    # }
    def checkuser
        username = params[:username].to_s
        password = params[:password].to_s
        puts "User: " + username
        puts "Pwd: " + password

        # check user
        # -> does exist: check password
        # -> does not exist: OK

        did = {"did" => "did:oyd:zQmTEKF31rRUBsagv8DeCWHxoGuJZmZ96YQRN6Ai5SEW7mv"}
        render json: did.to_json,
               status: 200
    end

    def backup
        render json: {"method": "backup"},
               status: 200
    end

    def restore
        render json: {"method": "restore"},
               status: 200
    end

end
