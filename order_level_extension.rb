class OrderLevelExtension < Spree::Extension
    version "0.1"
    description "Establishes a minimum order quantity and order increment for a product"

    url "git://github.com:stevemac/spree-order-levels.git"
    def activate
        Variant.additional_fields += [
            {:name => 'Order Minimum', :only => [:product], :format => "%d"},
            {:name => 'Order Increment', :only => [:product], :format => "%d"}
        ]

    end #activate
end
