# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixCoherence.Repo.insert!(%PhoenixCoherence.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will halt execution if something goes wrong.


PhoenixCoherence.User.changeset(%PhoenixCoherence.User{}, %{name: "Suraj kumar", email: "ravi.suraj110@gmail.com", password: "secret", password_confirmation: "secret"})
|> PhoenixCoherence.Repo.insert!
