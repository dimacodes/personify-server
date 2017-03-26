module Api::V1
  class PeopleController < ApiController
    before_action :set_person, only: [:show, :destroy]

    # GET /people
    def index
      @people = Person.all
      json_response(@people)
    end

    # POST /people
    def create
      @person = Person.create!(person_params)
      json_response(@person, :created)
    end

    # GET /people/:id
    def show
      json_response(@person)
    end

    # PUT /people/:id
    def update
      @person.update(person_params)
      json_response(@person)
    end

    # DELETE /people/:id
    def destroy
      @person.destroy
    end

    private

    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.permit(:name, :favoriteCity)
    end
  end
end
