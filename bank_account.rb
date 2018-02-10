Class BankAccount
    attr_accessor :account, :account_checking, :account_savings
    @@number_of_account = 0

    def initialize
        @account = generate_account
        @account_checking
        @account_savings
        @@number_of_account += 1
    end

    def account_information 
        "User account: #{@account}\n#{total}\nChecking Balance: #{@acct_checking}\nSavings Balance: #{@acct_savings}\nInterest Rate: #{@interest_rate}\n"
    end
    
    def deposit(account, amount)
        if account.downcase=checking
            @acct_checking += amount
        else
            @acct_savings += amount
        end
    end
    
        def withdrawal(account, amount)
            if account.downcase == "checking"
                if @acct_checking - amount < 0
                    raise "Insufficient Funds, you have #{@acct_checking} in this account"
                else
                    @acct_checking -= amount
                end
            else
                if @acct_savings - amount < 0 
                    raise "Insufficient Funds, you have #{@acct_savings} in this account"
                else
                    @acct_savings -= amount
                end
            end
        end

        def total 
            "Your total balance is " + (@acct_checking+@acct_savings).to_s
        end
          
    private
    def  generate_account
        Array.new(10).map {rand(1..9)}.join
    end
    
end

  franklin = BankAccount.new
  puts franklin.account_information,"\n"





