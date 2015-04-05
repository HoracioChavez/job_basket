require 'rails_helper'

RSpec.describe 'A user favoriting jobs', type: :feature do
  let!(:job_one) { FactoryGirl.create(:job, id: 1) }
  let!(:job_two) { FactoryGirl.create(:job, id: 2) }

  context 'favoriting a job' do
    it 'can find the favorite button' do
   `   login
      click_link("Jobs")
      within("#job_1") do
        expect(page).to have_button("Favorite")
      end
    end

    it 'can favorite a job' do
      login
      visit jobs_path
      user = User.find_by(name: "Horacio Chavez")

      expect(user.favorite_jobs.count).to eq(0)
      within("#job_1") do
        click_link_or_button("Favorite")
      end

      expect(user.favorite_jobs.count).to eq(1)
      expect(user.favorite_jobs.last.job_id).to eq(1)
      expect(user.favorite_jobs.last.job_id).to_not eq(2)
    end

    it 'can see all favorite jobs' do
      login
      visit jobs_path
      within("#job_1") do
        click_link_or_button("Favorite")
      end
      visit favorite_jobs_path

      expect(page).to have_content(job_one.title)
    end

    it 'can click on name to view favorite jobs' do
      visit root_path
      login
      click_link("Welcome")

      expect(current_path).to eq(favorite_jobs_path)
    end
  end

end
