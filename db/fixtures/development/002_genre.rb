items = [
  { category: "基礎教育・趣味・教養", genres: [{ name: "基礎教育" }, { name: "趣味・教養" }] },
  { category: "事務・法務・経営", genres: [{ name: "事務・ビジネススキル" }, { name: "法律・法務" }, { name: "人事・労務" }, { name: "経営・品質管理" }] },
  { category: "IT・情報処理", genres: [{ name: "ビジネス系" }, { name: "エンジニア系" }, { name: "クリエイティブ系" }] },
  { category: "語学・国際ビジネス", genres: [{ name: "英語" }, { name: "外国語" }, { name: "国際ビジネス" }] },
  { category: "財務・金融・会計", genres: [{ name: "税務・財務" }, { name: "金融・証券" }, { name: "会計" }] },
  { category: "医療・福祉・介護", genres: [{ name: "医療" }, { name: "医療事務" }, { name: "福祉・介護" }] },
  { category: "健康・心理・スポーツ", genres: [{ name: "健康・癒し" }, { name: "心理・メンタル" }, { name: "スポーツ" }] },
  { category: "美容・ファッション", genres: [{ name: "美容" }, { name: "ファッション" }] },
  { category: "不動産・建築・工事", genres: [{ name: "不動産" }, { name: "建築・施工・土木" }] },
  { category: "調理・衛生・飲食", genres: [{ name: "調理・飲食" }, { name: "衛生" }] },
  { category: "生活・サービス・冠婚葬祭", genres: [{ name: "販売・サービス" },  { name: "生活" }, { name: "旅行・観光・イベント" }, { name: "冠婚葬祭" }] },
  { category: "デザイン・クリエイティブ", genres: [{ name: "色彩・デザイン" }, { name: "インテリア"}] },
  { category: "自然・環境・生物", genres: [{ name: "自然・環境" }, { name: "生物・ペット"}] },
  { category: "公務員・教育", genres: [{ name: "公務員・採用試験" }, { name: "教育"}] },
  { category: "車両・航空・船舶・無線", genres: [{ name: "車両・運輸" }, { name: "航空" }, { name: "船舶" }, { name: "無線" }] },
  { category: "工業・技術・技能", genres: [{ name: "工業・危険物" }, { name: "設備管理" }, { name: "電気" }] },
  { category: "ご当地・娯楽", genres: [{ name: "ご当地検定" }, { name: "娯楽" }] }
]

genre_params = []

items.each do |item|
  category = Category.find_by!(name: item[:category])
  item[:genres].each do |genre|
    genre_params << { category_id: category.id, name: genre[:name] }
  end
end

Genre.seed(genre_params)
