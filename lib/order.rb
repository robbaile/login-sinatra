require "json"

class Order
    attr_reader :username, :menu
    def initialize(username)
        @username = username
        @menu = JSON.parse(File.read('./menu.json'))["menu"] 
    end
end