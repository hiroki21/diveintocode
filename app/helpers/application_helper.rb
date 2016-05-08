module ApplicationHelper

    def profile_image(user)
      if user.provider == 'facebook'
        image_url = "https://graph.facebook.com/#{user.uid}/picture?width=320&height=320"
      elsif user.provider == 'twitter'
        image_url = "http://furyu.nazo.cc/twicon/#{user.uid}"
      else
        image_url = 'noimage.png'
      end
      image_tag(image_url, alt: user.name)
    end

end
