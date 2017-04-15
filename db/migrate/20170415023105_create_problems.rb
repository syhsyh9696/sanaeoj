class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title,  null: false 
      t.text :description
      t.text :input
      t.text :output
      t.text :samplein
      t.text :sampleout
      t.string :source
      t.string :hint
      t.integer :ptype, null: false, default: 0
      t.text :sjcode
      t.integer :timelimit, null: false, default: 1000
      t.integer :memlimit, null: false, default: 65536

      t.timestamps null: false
    end
  end
end
