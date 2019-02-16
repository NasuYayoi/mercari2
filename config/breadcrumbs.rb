crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", user_mypage_path
  parent :root
end

crumb :profile do
  link "プロフィール", user_prof_path
  parent :mypage
end

crumb :logout do
  link "ログアウト", user_logout_path
  parent :mypage
end

crumb :search do
  link "#{ params[:q][:name_or_brand_name_or_category_name_cont_all] }", items_search_path
  parent :root
end

crumb :product do
  link "商品名（仮置き）", root_path
  parent :root
end
