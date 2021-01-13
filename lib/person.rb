require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def min_max(new_value, attribute)
        if new_value > 10
            attribute = 10
        elsif new_value < 0
            attribute = 0
        else
            attribute = new_value
        end
    end

    def happiness=(new_index)
        @happiness = min_max(new_index, @happiness)
    end
    def hygiene=(new_hygiene)
        @hygiene = min_max(new_hygiene, @hygiene)
    end
    
    def state(attribute)
        if attribute > 7
            true
        else
            false
        end
    end
    
    def happy?
        state(@happiness)
    end

    def clean?
        state(@hygiene)
    end

    def get_paid(salary)
        # binding.pry
        self.bank_account = self.bank_account + salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end


end