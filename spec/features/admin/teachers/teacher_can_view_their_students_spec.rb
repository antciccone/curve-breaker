require 'rails_helper'

describe 'Teacher' do
  context 'viewing thier students' do
    it 'as a teacher I can view my students' do
      user = create(:user)
      user.roles.create(name: 'teacher')
      teacher = Teacher.create(email: 'MyString')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      save_and_open_page

    end
  end
end
