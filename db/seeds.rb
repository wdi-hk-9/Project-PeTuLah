# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User(id: integer, first_name: string, last_name: string, email: string, password_digest: string, is_admin: boolean, created_at: datetime, updated_at: datetime)

User.where(email: "ck@ck.com").first_or_create(first_name: "charlotte", last_name: "kwan", email: "ck@ck.com", password: '123123', is_admin: true)
