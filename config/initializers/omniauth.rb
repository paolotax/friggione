Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '5wQobM1Y0oSXalOEBYZPEg', 'bfacz8JzWuuZLJQX88SZ5dGusaPX1t7Wy36p2Z35dc'
  provider :google_oauth2, ENV['AIzaSyCeNurhQKIJWAGS0rtubtq6jEiNM8HJ0U8'], ENV['gBz-bgbhC03I0laxGWthVC1E'], {access_type: 'online', approval_prompt: ''}
end