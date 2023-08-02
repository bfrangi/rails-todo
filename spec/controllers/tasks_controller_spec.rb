require 'rails_helper'
require 'support/authentication_spec_helper'

describe TasksController do
  context 'when logged in' do
    before :each do
      @logged_in_user = User.create(
        email: 'some.email@some.domain',
        password: 'some_password'
      )
      @other_user = User.create(
        email: 'some.other.email@some.domain',
        password: 'some_other_password'
      )

      sign_in @logged_in_user
    end

    describe 'GET index' do
      it 'assigns @tasks correctly' do
        task = @logged_in_user.tasks.create(content: 'some content')
        task_by_other_user = @other_user.tasks.create(content: 'some different content')
        get :index
        expect(assigns(:tasks)).to eq([task])
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
