users = User.create([
  {
  email: "blank@blank.com",
  password: "1234",
  password_confirmation: "1234"
  },
  {
    email: "testemail@email.com",
    password: "5678",
    password_confirmation: "5678"
  }   
])

transactions = Transaction.create([
  {
    coin: "bitcoin",
    transaction_date: 20210101,
    total_coin: 0.001,
    total_cost: 36,
    cost_per_coin: 36000,
    user_id: users.first.id
  },
  {
    coin: "bitcoin",
    transaction_date: 20210531,
    total_coin: 0.234,
    total_cost: 8424,
    cost_per_coin: 36000,
    user_id: users.first.id
  },
  {
    coin: "cardano",
    transaction_date: 20210623,
    total_coin: 4,
    total_cost: 7,
    cost_per_coin: 1.58,
    user_id: users.last.id
  }

])