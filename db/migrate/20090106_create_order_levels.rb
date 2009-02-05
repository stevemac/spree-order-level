class CreateOrderLevels < ActiveRecord::Migration
    def self.up
        create_table :order_levels do |t|
            t.references :variant
            t.integer :order_minimum
            t.integer :order_increment

            t.timestamps
        end
    end

    def self.down
        drop_table :order_levels
    end
end
