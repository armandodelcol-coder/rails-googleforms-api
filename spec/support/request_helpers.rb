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
    def headers_with_authentication user
      return user.create_new_auth_token.merge({'Accept' => 'application/json'})
    end

    def headers_without_authentication
      return { 'content-type' => 'application/json' }
    end
  end
end
