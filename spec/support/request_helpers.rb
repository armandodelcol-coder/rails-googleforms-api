module RequestHelpers
  module Response
    def expect_status(expectation)
      expect(response).to have_http_status(expectation)
    end

    def json
      JSON.parse(response.body)
    end
  end

  module Headers
    def header_with_authentication user
      return user.create_new_auth_token.merge({'HTTP_ACCEPT': 'application/json'})
    end

    def header_without_authentication
      return { 'content-type' => 'application/json' }
    end
  end
end