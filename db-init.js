db.createUser({
    user: "user",
    pwd: "secretPassword",
    roles: [ { role: "dbOwner", db: "my-db" } ]
  })
  
  db.users.insert({
    name: "user"
  })