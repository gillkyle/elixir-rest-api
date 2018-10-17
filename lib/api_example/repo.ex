defmodule ApiExample.Repo do
  # use Ecto.Repo, otp_app: :api_example
  def all(ApiExample.User) do
    [
      %ApiExample.User{ id: 1,
                        name: "Aang",
                        email: "aang@example.com",
                        password: "testing",
                        power: "Air Bending"},
      %ApiExample.User{ id: 2,
                        name: "Zuko",
                        email: "zuko@example.com",
                        password: "testing",
                        power: "Fire Bending"},
      %ApiExample.User{ id: 3,
                        name: "Toph",
                        email: "toph@example.com",
                        password: "testing",
                        power: "Earth Bending"},
    ]
  end

  def get(module, id) do
    Enum.find all(module), fn elem -> elem.id == id end
  end
end
