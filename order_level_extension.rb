# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class OrderLevelExtension < Spree::Extension
    version "0.1"
    description "Establishes a minimum order quantity and order increment for a variant"
    
    url "git://github.com/stevemac/spree.git"

    define_routes do |map|
        map.namespace :admin do |admin|
            admin.resources :order_levels, :collection => {:variants => :get}
        end  
        map.namespace :admin do |admin|
            admin.resources :variants, :has_one => :order_level , :dependent => :destroy, :attributes => true
        end  
    end #routes

    def activate
        Variant.class_eval do
            has_one :order_level
        end
    end
end
