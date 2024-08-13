defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    # IO.puts("Users fiunction hit! ")
    # Created map
    users = [
      %{id: 1, name: "Gabe", email: "test@email.com"},
      %{id: 2, name: "Jen", email: "Jen@email.com"}
    ]
    # render(conn, :users, users: users, layout: false)

    # Created json data
    json(conn, %{users: users})
  end


end
