module Spree
  module SpreeRepeatedOrder
    module ControllerHelpers
      module RepeatedOrder

        def duplicate_order(past_order, new_order)
          new_line_items = []
          past_order.line_items.each do |line_item|
            new_line_items << line_item.dup
          end

          new_order.line_items = new_line_items
        end

      end
    end
  end
end
