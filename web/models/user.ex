# web/models/user.ex
defmodule ApiExample.User do
  use ApiExample.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :password, :string
    field :power, :string

    timestamps
  end
end
