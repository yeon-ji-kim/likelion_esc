class LectureEvalEwha < ActiveRecord::Base
    validates_presence_of :title
    searchable do
        text :title
    end
end
