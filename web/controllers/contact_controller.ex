defmodule HelloPhoenix.ContactController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.Contact

  def index(conn, _params) do
    contacts = Repo.all(Contact)
    render conn, contacts: contacts
  end
end
