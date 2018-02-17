alias NavitatBack.Repo
alias NavitatBack.Clients.Artist

Repo.delete_all(Artist)
Ecto.Adapters.SQL.query!(Repo, "ALTER SEQUENCE artists_id_seq RESTART WITH 1", [])

Repo.insert!(
  %Artist {
    name: "Nathan"   
  }
)
Repo.insert!(
  %Artist {
    name: "Tyler"   
  }
)
