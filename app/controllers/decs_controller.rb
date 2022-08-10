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

    # Input
    # {
    #   "username": "john_doe",
    #   "password": "pwd",
    #   "payload": {["unencrypted JSON object"]}
    # }
    def backup
        username = params[:username].to_s
        password = params[:password].to_s
        payload = params[:payload] rescue nil
        puts "User: " + username
        puts "Pwd: " + password
        puts "Payload: ---"
        puts payload.to_json
        puts "------------"

        # get orig DID
        # encrypt payload
        # write encrypted payload
        # return DID

        did = {"did" => "did:oyd:zQmaBZTghndXTgxNwfbdpVLWdFf6faYE4oeuN2zzXdQt1kh"}
        render json: did.to_json,
               status: 200
    end

    # Input 
    # {
    #   "username": "john_doe",
    #   "password": "password in cleartext"
    # }
    def restore
        username = params[:username].to_s
        password = params[:password].to_s
        puts "User: " + username
        puts "Pwd: " + password

        # get orig DID
        # resolve DID
        # retrieve encrypted payload
        # decrypt payload

        retVal = {"key" => "value"}        
        render json: retVal.to_json,
               status: 200
    end

end
