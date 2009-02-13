class CreateLineItemComment  < ActiveRecord::Migration
    def self.up
        change_table :line_items do |t|
            t.string  :comment
        end
    end

    def self.down
        change_table :line_items do |t|
            t.remove :comment
        end
    end
end
