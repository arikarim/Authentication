module PostsHelper
    def post_info(post)
        if user_signed_in?
            content_tag(:div) do
                content_tag(:p, post.user.email) +
                content_tag(:p, post.title) +
                content_tag(:p, post.body)
            end
        else
            content_tag(:div) do 
                content_tag(:p, post.title) +
                content_tag(:p, post.body)
            end
        end 
    end


end
