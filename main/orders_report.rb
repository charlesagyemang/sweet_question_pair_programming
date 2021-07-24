
class DateRange < Struct.new(:start_date, :end_date)

    def include?(date)
        (start_date..end_date).cover?(date)
    end
    
end


class Order < Struct.new(:product_name, :placed_at, :amount)

    def placed_between?(date_range)
        date_range.include?(placed_at)
    end

end

class OrdersReport

    attr_accessor :orders, :date_range

    def initialize(orders, date_range)
      @orders     = orders
      @date_range = date_range
    end

    def total_sales_within_date_range
        total_sales(orders_within_range)
    end

    def total_sales(orders)
        orders_within_range.map(&:amount).inject(0, :+)
        # orders.inject(0) { |count, order| count + order.amount }
    end
    
    def orders_within_range
        # @orders.select { |order| order.placed_at >= @start_date && order.placed_at <= @end_date} 
        @orders.select { |order| order.placed_between?(@date_range) }
    end

end


