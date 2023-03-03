db.createUser({
    user: "admin",
    pwd: "password",
    roles: [{ role: "userAdminAnyDatabase", db: "admin" }]
  });
  
  db.createCollection("countries");
  
  db.countries.insertMany([
    {
      id: "TUN",
      name: "Tunisia",
      continent: "Africa"
    },
    {
        id: "TUN1",
        name: "Tunisia1",
        continent: "Africa"
      },
      {
        id: "TUN1",
        name: "Tunisia1",
        continent: "Africa"
      },
      {
        id: "TUN1",
        name: "Tunisia1",
        continent: "Africa"
      }
  ]);
  