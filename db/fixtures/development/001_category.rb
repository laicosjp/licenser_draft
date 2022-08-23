categories = [
  "基礎教育・趣味・教養",
  "事務・法務・経営",
  "IT・情報処理",
  "語学・国際ビジネス",
  "財務・金融・会計",
  "医療・福祉・介護",
  "健康・心理・スポーツ",
  "美容・ファッション",
  "不動産・建築・工事",
  "調理・衛生・飲食",
  "生活・サービス・冠婚葬祭",
  "デザイン・クリエイティブ",
  "自然・環境・生物",
  "公務員・教育",
  "車両・航空・船舶・無線",
  "工業・技術・技能",
  "ご当地・娯楽"
]

category_params = []

categories.each do |category|
  category_params << { name: category }
end

Category.seed(category_params)
