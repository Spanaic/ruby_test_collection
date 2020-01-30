namespace :check_date do
    desc "check_state"
    task check_state: :environment do
        puts "aaa"
        # Article.where('published_at <= ?', Time.zone.now).wait_publish.each(&:published!)
    end
end
