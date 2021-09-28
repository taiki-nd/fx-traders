crumb :root do
  link "Home", root_path
end

# user-------------------------------------------------------

crumb :user_signup do
  link "ユーザー登録", new_user_registration_path
  parent :root
end

crumb :user_signin do
  link "ログイン", new_user_session_path
  parent :root
end

crumb :user_show do |user|
  link "#{user.name}さんの詳細ページ", user_path
  parent :root
end

  crumb :user_records do |user|
    link "#{user.name}さんの取引履歴一覧", index_records_path
    parent :user_show
  end

  crumb :user_rules do |user|
    link "#{user.name}さんの取引手法一覧", index_rules_path
    parent :user_show
  end

  crumb :user_edit do |user|
    link "#{user.name}さんの登録情報の編集", edit_user_path
    parent :user_show
  end

  crumb :user_followers do |user|
    link "#{user.name}さんのフォロワー", user_followers_path
    parent :user_show
  end

  crumb :user_followers do |user|
    link "#{user.name}さんがフォロー", user_followings_path
    parent :user_show
  end

# record-------------------------------------------------------

crumb :records_index do
  link "取引記録一覧", records_path
  parent :root
end

  crumb :record_show do
    link "取引記録一覧", record_path
    parent :records_index
  end

    crumb :record_edit do
      link "取引記録一覧", edit_record_path
      parent :record_show
    end

crumb :record_new do
  link "新規取引記録", new_record_path
  parent :root
end

# rule-------------------------------------------------------

crumb :rules_index do
  link "取引記録一覧", rules_path
  parent :root
end

  crumb :rule_show do
    link "取引記録一覧", rule_path
    parent :rules_index
  end

    crumb :record_edit do
      link "取引記録一覧", edit_rule_path
      parent :rule_show
    end

crumb :rule_new do
  link "新規取引記録", new_rule_path
  parent :root
end

# static page ----------------------------------------------

crumb :disclaimer  do
  link "免責事項", disclaimer_path
  parent :root
end

crumb :privacy_policy  do
  link "プライバシーポリシー", privacy_policy_path
  parent :root
end

# ad -------------------------------------------------------

crumb :ad_new  do
  link "広告作成", new_advertisement_path
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).