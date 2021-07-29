require_relative 'test.rb'

describe Test do

    describe '::main' do 

        it '.returns 1 + 1 = 2' do

           
            expect(1 + 1).to eq 2 

        end

    end 

    describe '::another' do 

        it '.should return 1 - 1 = 0' do

            expect(1-1).to eq 0 

        end

    end 

end 

    
