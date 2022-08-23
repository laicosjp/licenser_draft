categories = [
  { ja_name: "基礎教育・趣味・教養", en_name: "culture" },
  { ja_name: "事務・法務・経営", en_name: "office" },
  { ja_name: "IT・情報処理", en_name: "it" },
  { ja_name: "語学・国際ビジネス", en_name: "language" },
  { ja_name: "財務・金融・会計", en_name: "finance" },
  { ja_name: "医療・福祉・介護", en_name: "medical" },
  { ja_name: "健康・心理・スポーツ", en_name: "health" },
  { ja_name: "美容・ファッション", en_name: "beauty" },
  { ja_name: "不動産・建築・工事", en_name: "realestate" },
  { ja_name: "調理・衛生・飲食", en_name: "food" },
  { ja_name: "生活・サービス・冠婚葬祭", en_name: "lifestyle" },
  { ja_name: "デザイン・クリエイティブ", en_name: "creative" },
  { ja_name: "自然・環境・生物", en_name: "ecology" },
  { ja_name: "公務員・教育", en_name: "public" },
  { ja_name: "車両・航空・船舶・無線", en_name: "transport" },
  { ja_name: "工業・技術・技能", en_name: "safety" },
  { ja_name: "ご当地・娯楽", en_name: "entertainment" }
]

category_params = []

categories.each do |category|
  category_params << { name: category[:ja_name], en_name: category[:en_name] }
end

Category.seed(category_params)
