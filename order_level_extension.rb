class OrderLevelExtension < Spree::Extension
    version "0.1"
    description "Establishes a minimum order quantity and order increment for a product"

    url "git://github.com:stevemac/spree-order-levels.git"
    def activate
        Variant.additional_fields += [
            {:name => 'Order Minimum', :only => [:product], :format => "%d"},
            {:name => 'Order Increment', :only => [:product], :format => "%d"}
        ]

        LineItem.class_eval do
            before_save  :check_order_levels
            # This extensions migration adds a comment field to
            # line_items. 
            def check_order_levels
                min = variant.product.order_minimum
                inc = variant.product.order_increment
                if min  > 1
                    if self.quantity < min
                        self.quantity = min
                        self.comment = "quantity_minimum_adjusted"
                    end
                    if inc > 1
                        base = self.quantity / min
                        mod = self.quantity % inc
                        if mod != 0
                            self.quantity = (base + 1) * inc
                            self.comment = "quantity_increment_adjusted"
                        end
                    end
                end
            end # check_order_levels
        end # class_eval
    end #activate
end
