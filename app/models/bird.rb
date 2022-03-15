class Bird < ApplicationRecord
    def create
        bird = Bird.create(bird_params)
        render json: bird, status: :created
      end

      private
        # all methods below here are private

        def bird_params
            params.permit(:name, :species)
        end

end

end
