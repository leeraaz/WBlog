require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
Post.blueprint do
  title { "Post #{sn}" }
  body  { "Lorem ipsum..." }
end

User.blueprint do
  email { "email@email.com#{sn}" }
  password { "123456789" }
  password_confirmation { "123456789" }
end

