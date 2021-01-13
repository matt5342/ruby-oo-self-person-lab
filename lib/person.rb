require 'pry'

class Person
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @balance = 25
    end
    attr_reader :name, :happiness, :hygiene
    def bank_account
        @balance
    end
    def bank_account=(new_balance)
        @balance = new_balance
    end

    def happiness=(new_index)
        if new_index > 10
            @happiness = 10
        elsif new_index < 0
            @happiness = 0
        else
            @happiness = new_index
        end
    end
    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
        end
    end
    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
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









end