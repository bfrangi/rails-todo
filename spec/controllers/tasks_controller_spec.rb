require 'rails_helper'
require 'support/authentication_spec_helper'

describe TasksController do
  context 'when logged in' do
    before :each do
      @user = create(:user_with_tasks)
      @other_user = create(:user_with_tasks)

      sign_in @user
    end

    describe 'GET index' do
      it 'assigns @tasks correctly' do
        get :index

        expect(assigns(:tasks)).to eq(@user.tasks)
      end

      it 'renders the index template' do
        get :index
        expect(response).to render_template('index')
      end
    end
  end

  context 'when not logged in' do
    describe 'GET index' do
      it 'redirects to the sign_in template' do
        get :index
        expect(response).to redirect_to('/users/sign_in')
      end
    end
  end
end
