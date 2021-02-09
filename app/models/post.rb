class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags
    

    validates :name, presence: true, uniqueness: true
    validates :content, presence: true

    def post_tag_attributes=(post_tag_attributes)
        byebug
        post_tag_attributes.values.each do |post_tag_attribute|
            byebug
            post_tag = Post_tag.create(post_tag_attribute)
        end
    end
  
end
