require_relative 'main.rb'

describe Main do

    describe '::main' do 

        it '.returns 1 + 1 = 2' do

           
            expect(1 + 1).to eq 2 

        end

        it 'should return the unique strings in both' do
            puts Main.get_unique_words("testing", "test")
            puts Main.get_unique_words_readable("testing", "test")
        end

    end 

    describe '::another' do 

        it '.should return 1 - 1 = 0' do

            expect(1-1).to eq 0 

        end

    end 

end 

    
