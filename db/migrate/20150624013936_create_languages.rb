class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.boolean :JavaScript
      t.boolean :Java
      t.boolean :Ruby
      t.boolean :C
      t.boolean :CSS
      t.boolean :PHP
      t.boolean :Python
      t.boolean :CPlusPlus
      t.boolean :ObjectiveC
      t.boolean :CSharp
      t.boolean :Shell
      t.boolean :R
      t.boolean :CoffeeScript
      t.boolean :Go
      t.boolean :Perl
      t.boolean :Scala
      t.boolean :VimL
      t.boolean :Clojure
      t.boolean :Haskell
      t.boolean :Erlang
      t.boolean :Rust
      t.boolean :Swift
      t.timestamps null: false
    end
  end
end
