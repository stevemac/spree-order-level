# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class OrderLevelExtension < Spree::Extension
    version "0.1"
    description "Establishes a minimum order quantity and order increment for a variant"

    url "git://github.com/stevemac/spree.git"
    def activate
        Variant.additional_fields += [
            {:name => 'Order Minimum', :only => [:product], :format => "%d"},
            {:name => 'Order Increment', :only => [:product], :format => "%d"}
        ]

    end #activate
end
