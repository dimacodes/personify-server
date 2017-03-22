require 'rails_helper'

RSpec.describe 'Personify API', type: :request do
  let!(:people) { create_list(:person, 10) }
  let(:person_id) { people.first.id }

  # Test suite for GET /people
  describe 'GET /people' do
    # make HTTP get request before each example
    before { get '/people' }

    it 'returns people' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /people/:id
  describe 'GET /people/:id' do
    before { get "/people/#{person_id}" }

    context 'when the record exists' do
      it 'returns the person' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(person_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:person_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find person/)
      end
    end
  end

  # Test suite for POST /people
  describe 'POST /people' do
    # valid payload
    let(:valid_attributes) { { name: 'Sean', favoriteCity: 'New York' } }

    context 'when the request is valid' do
      before { post '/people', params: valid_attributes }

      it 'creates a person' do
        expect(json['name']).to eq('Sean')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/people', params: { name: 'Mike' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: favoriteCity can't be blank/)
      end
    end
  end

  # Test suite for PUT /people/:id
  describe 'PUT /people/:id' do
    let(:valid_attributes) { { name: 'Simone' } }

    context 'when the record exists' do
      before { put "/people/#{person_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /people/:id
  describe 'DELETE /people/:id' do
    before { delete "/people/#{person_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
