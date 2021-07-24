require_relative 'orders_report.rb'
require 'date'

describe OrdersReport do
    
    before do 

        @reports = [ 
            Order.new('shoe',       Date.today - 5, 900),
            Order.new('chale wote', Date.today - 6, 100),
            Order.new('shoe lace',  Date.today - 3, 400),
         ]

         @orders_report = OrdersReport.new @reports, DateRange.new(Date.today - 10, Date.today - 5)
    
    end

    

    describe '::functions test' do 

        it '.selects orders withing a range' do

            within_arange = @orders_report.orders_within_range
            puts(@orders_report.total_sales_within_date_range)

            expect(within_arange.count).to eq(2)
        end

    end 

end 

    
