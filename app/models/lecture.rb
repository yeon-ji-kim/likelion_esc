class Lecture < ActiveRecord::Base
    
    validates_presence_of :title, :courseno, :instructor
    searchable do
        string :title
        string :courseno
        string :instructor
    end
end
 