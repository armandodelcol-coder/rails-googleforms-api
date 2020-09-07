user_time = FFaker::Time.between Date.yesterday - 50, Date.today - 1

# CREATE USERS
User.create!(
  [
    {
      uid: "user1_teste",
      email: "user1@teste.com",
      name: "User 1",
      nickname: "userTester1",
      password: "12345678",
      provider: "email",
      confirmed_at: user_time,
      created_at: user_time,
      updated_at: user_time,
      confirmation_token: SecureRandom.hex(10)
    },
    {
      uid: "user2_teste",
      email: "user2@teste.com",
      name: "User 2",
      nickname: "userTester2",
      password: "12345678",
      provider: "email",
      confirmed_at: user_time,
      created_at: user_time,
      updated_at: user_time,
      confirmation_token: SecureRandom.hex(10)
    },
    {
      uid: "user3_teste",
      email: "user3@teste.com",
      name: "User 3",
      nickname: "userTester3",
      password: "12345678",
      provider: "email",
      confirmed_at: user_time,
      created_at: user_time,
      updated_at: user_time,
      confirmation_token: SecureRandom.hex(10)
    },
    {
      uid: "user4_teste",
      email: "user4@teste.com",
      name: "User 4",
      nickname: "userTester4",
      password: "12345678",
      provider: "email",
      confirmed_at: user_time,
      created_at: user_time,
      updated_at: user_time,
      confirmation_token: SecureRandom.hex(10)
    },
  ]
)

# CREATE FORMS
owner_user = User.find_by(uid: 'user1_teste')

Form.create!(
  [
    {
      title: 'Formulario 1',
      description: 'Formulario de teste 1',
      user: owner_user,
      primary_color: "##{FFaker::Color.hex_code}",
      enable: true
    },
    {
      title: 'Formulario 2',
      description: 'Formulario de teste 2',
      user: owner_user,
      primary_color: "##{FFaker::Color.hex_code}",
      enable: true
    }
  ]
)

# CREATE QUESTIONS

form1 = Form.first
form2 = Form.last

Question.create!(
  [
    {
      title: "Questão1",
      kind: "short_text",
      form: form1
    },
    {
      title: "Questão2",
      kind: "long_text",
      form: form1
    },
    {
      title: "Questão3",
      kind: "integer",
      form: form1
    },
    {
      title: "Questão4",
      kind: "boolean" ,
      form: form1
    },
    {
      title: "Questão1",
      kind: "short_text",
      form: form2
    },
    {
      title: "Questão2",
      kind: "long_text",
      form: form2
    },
    {
      title: "Questão3",
      kind: "integer",
      form: form2
    },
    {
      title: "Questão4",
      kind: "boolean" ,
      form: form2
    }
  ]
)
