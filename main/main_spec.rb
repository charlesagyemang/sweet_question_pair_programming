require_relative 'main.rb'

describe Main do

    describe '::Sample Test' do 
        it '1 + 1 Should return Two' do
            expect(1 + 1).to eq(2) 
        end
    end 

    describe "::ancestory test instance method" do


        it '.returns the method of the class singleton method' do

            main = Main.new

            def main.name
                "Singleton Main"
            end

            expect(main.name).to      eq "Singleton Main"

        end
        
        it '.instance should look for the prepended module if singleton class doesnt exists' do

            main = Main.new

            expect(main.name).to  eq "Emeka" 
           
        end 
        
        it '.instance should look for the method in its class if there is no prepend & eigenclass methods' do

            main = MainTwo.new

            expect(main.name).to  eq "MainTwo" 
           
        end 

        it '.instance should look for the method in include module if theres it is not in its class, prepend and eigneclass' do

            main = MainThree.new

            expect(main.name).to  eq "Anthony" 
           
        end 

        it '.instance should throw a no method error if it checks eigenclass, prepend, self and include and its not there' do

            main = MainFour.new

            expect{main.name}.to raise_exception(NoMethodError)
           
        end


    end

    describe "::ancestory test class methods" do
        it 'return the value of the extended class' do

            expect(Main.name).to  eq "Ishmael"
            p Main.ancestors
            
        end
    end
    

end 

    
