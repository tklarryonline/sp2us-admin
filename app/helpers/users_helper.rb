module UsersHelper

  # Returns Gravatar of given user
  def gravatar_for(user)
    gravatar_id = 0
    if user.email
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    end
    gravatar_size = 150
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?d=mm&s=#{gravatar_size}"
    image_tag(gravatar_url, alt: user.name)
  end
end
