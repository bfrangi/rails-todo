require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'scopes' do
    describe '.completed' do
      it 'returns only completed tasks' do
        completed_task = create(:task, :completed)
        not_completed_task = create(:task)

        expect(Task.completed).to eq([completed_task])
      end
    end

    describe '.not_completed' do
      it 'returns only not completed tasks' do
        completed_task = create(:task, :completed)
        not_completed_task = create(:task)

        expect(Task.not_completed).to eq([not_completed_task])
      end
    end
  end

  describe 'methods' do
    describe '.completed?' do
      it 'returns false when completed is set to nil' do
        not_completed_task = build(:task)

        expect(not_completed_task.completed?).to eq(false)
      end

      it 'returns false when completed is a date in the future' do
        not_completed_task = build(:task, completed: 1.day.from_now)

        expect(not_completed_task.completed?).to eq(false)
      end

      it 'returns true when completed is a date in the past' do
        completed_task = build(:task, :completed)

        expect(completed_task.completed?).to eq(true)
      end
    end
  end
end
