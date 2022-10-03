RSpec.describe PostsController do
  describe 'GET index' do
    let(:posts) { create_list(:post, 9) }

    it 'assigns first 8 posts' do
      get :index
      expect(assigns(:posts)).to eq(posts.first(8))
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
