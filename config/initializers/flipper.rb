require 'flipper/adapters/active_record'

# Add an admins group for an easy way to add all admins to have access.
Flipper.register(:admins) do |user, _context|
  user.respond_to?(:is_admin?) && user.is_admin?
end

# Students group
Flipper.register(:students) do |user, _context|
  user.respond_to?(:is_student?) && user.is_student?
end

# Teachers group
Flipper.register(:teachers) do |user, _context|
  user.respond_to?(:is_teacher?) && user.is_teacher?
end
