class Author < ApplicationRecord
    has_and_belongs_to_many :books
    
    before_destroy :delete_author

    private
        def delete_author
            self.class.delete_all "author_id = #{id}"
        end
end
