require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'scopes' do
    describe '.completed' do
      it 'returns only completed tasks' do
        completed_task = create(:task, completed: Time.now)
        not_completed_task = create(:task, completed: nil)

        expect(Task.completed).to eq([completed_task])
      end
    end

    describe '.not_completed' do
      it 'returns only not completed tasks' do
        completed_task = create(:task, completed: Time.now)
        not_completed_task = create(:task, completed: nil)

        expect(Task.not_completed).to eq([not_completed_task])
      end
    end
  end
end
