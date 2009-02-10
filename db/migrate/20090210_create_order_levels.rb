class CreateOrderLevels < ActiveRecord::Migration
    def self.up
        change_table :products do |t|
            t.integer :order_minimum, :default => 1
            t.integer :order_increment, :default => 1
        end
    end

    def self.down
        change_table :products do |t|
            t.remove :order_minimum
            t.remove :order_increment
        end
    end
end
