module RequestHelpers
    def response_json
        json = JSON.parse(response.body)
    end
end