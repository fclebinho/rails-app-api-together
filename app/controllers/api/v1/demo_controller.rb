class Api::V1::DemoController < Api::ApiApplicationController
  def index
    render json: { message: 'Hello World' }
  end
end
