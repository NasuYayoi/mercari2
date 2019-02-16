
20.times do |n|
     Item.create(
        name: Faker::Food.fruits,
        price: Faker::Commerce.price,
        category_id: Faker::Number.between(1, 10),
        size_id: Faker::Number.between(1, 10),
        condition_id: Faker::Number.between(1, 10),
        delivery_fee_id: Faker::Number.between(1, 10),
        delivery_day_id: Faker::Number.between(1, 10),
        ships_forms_id: Faker::Number.between(1, 10),
      )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Size.create([{size: "XXS以下"}, {size: "XS(SS)"}, {size: "S"}, {size: "M"}, {size: "L"}, {size: "XL(LL)"}, {size: "2XL(3L)"}, {size: "3XL(4L)"}, {size: "4XL(5L)以上"}, {size: "FREE SIZE"}])

Condition.create([{condition: "新品"}, {condition: "未使用品"}, {condition: "未使用に近い"}, {condition: "目立った傷や汚れなし"}, {condition: "やや傷や汚れあり"}, {condition: "傷や汚れあり"}, {condition: "全体的に状態が悪い"}])

DeliveryFee.create([{fee: "送料込み(出品者負担)"}, {fee: "着払い(購入者負担)"}])

DeliveryDay.create([{day: "1~2日で発送"}, {day: "2~3日で発送"}, {day: "4~7日で発送"}])

DeliveryMethod.create([{method: "未定", delivery_fee_id: "1"}, {method: "らくらくメルカリ便", delivery_fee_id: "1"}, {method: "ゆうメール", delivery_fee_id: "1"}, {method: "レターパック", delivery_fee_id: "1"}, {method: "普通郵便(定型、定形外)", delivery_fee_id: "1"}, {method: "クロネコヤマト", delivery_fee_id: "1"}, {method: "ゆうパック", delivery_fee_id: "1"}, {method: "クリックポスト", delivery_fee_id: "1"},{method: "ゆうパケット", delivery_fee_id: "1"},{method: "未定", delivery_fee_id: "2"}, {method: "クロネコヤマト", delivery_fee_id: "2"}, {method: "ゆうパック", delivery_fee_id: "2"}, {method: "ゆうメール", delivery_fee_id: "2"}])

北海道, 青森県, 岩手県 ,宮城県 ,秋田県 ,山形県 ,福島県 ,茨城県 ,栃木県 ,群馬県 ,埼玉県 ,千葉県 ,東京都 ,神奈川県 ,新潟県 ,富山県 ,石川県 ,福井県 ,山梨県 ,長野県 ,岐阜県 ,静岡県 ,愛知県 ,三重県 ,滋賀県 ,京都府 ,大阪府 ,兵庫県 ,奈良県 ,和歌山県 ,鳥取県 ,島根県 ,岡山県 ,広島県 ,山口県 ,徳島県 ,香川県 ,愛媛県 ,高知県 ,福岡県 ,佐賀県 ,長崎県 ,熊本県 ,大分県 ,宮崎県 ,鹿児島県, 沖縄県 = Prefecture.create([{name: "北海道"}, {name: "青森県"}, {name: "岩手県"}, {name: "宮城県"}, {name: "秋田県"}, {name: "山形県"}, {name: "福島県"}, {name: "茨城県"}, {name: "栃木県"}, {name: "群馬県"}, {name: "埼玉県"}, {name: "千葉県"}, {name: "東京都"}, {name: "神奈川県"}, {name: "新潟県"}, {name: "富山県"}, {name: "石川県"}, {name: "福井県"}, {name: "山梨県"}, {name: "長野県"}, {name: "岐阜県"}, {name: "静岡県"}, {name: "愛知県"}, {name: "三重県"}, {name: "滋賀県"}, {name: "京都府"}, {name: "大阪府"}, {name: "兵庫県"}, {name: "奈良県"}, {name: "和歌山県"}, {name: "鳥取県"}, {name: "島根県"}, {name: "岡山県"}, {name: "広島県"}, {name: "山口県"}, {name: "徳島県"}, {name: "香川県"}, {name: "愛媛県"}, {name: "高知県"}, {name: "福岡県"}, {name: "佐賀県"}, {name: "長崎県"}, {name: "熊本県"}, {name: "大分県"}, {name: "宮崎県"}, {name: "鹿児島県"}, {name: "沖縄県"}])

北海道, 青森県, 岩手県 ,宮城県 ,秋田県 ,山形県 ,福島県 ,茨城県 ,栃木県 ,群馬県 ,埼玉県 ,千葉県 ,東京都 ,神奈川県 ,新潟県 ,富山県 ,石川県 ,福井県 ,山梨県 ,長野県 ,岐阜県 ,静岡県 ,愛知県 ,三重県 ,滋賀県 ,京都府 ,大阪府 ,兵庫県 ,奈良県 ,和歌山県 ,鳥取県 ,島根県 ,岡山県 ,広島県 ,山口県 ,徳島県 ,香川県 ,愛媛県 ,高知県 ,福岡県 ,佐賀県 ,長崎県 ,熊本県 ,大分県 ,宮崎県 ,鹿児島県, 沖縄県 = ShipsForm.create([{area: "北海道"}, {area: "青森県"}, {area: "岩手県"}, {area: "宮城県"}, {area: "秋田県"}, {area: "山形県"}, {area: "福島県"}, {area: "茨城県"}, {area: "栃木県"}, {area: "群馬県"}, {area: "埼玉県"}, {area: "千葉県"}, {area: "東京都"}, {area: "神奈川県"}, {area: "新潟県"}, {area: "富山県"}, {area: "石川県"}, {area: "福井県"}, {area: "山梨県"}, {area: "長野県"}, {area: "岐阜県"}, {area: "静岡県"}, {area: "愛知県"}, {area: "三重県"}, {area: "滋賀県"}, {area: "京都府"}, {area: "大阪府"}, {area: "兵庫県"}, {area: "奈良県"}, {area: "和歌山県"}, {area: "鳥取県"}, {area: "島根県"}, {area: "岡山県"}, {area: "広島県"}, {area: "山口県"}, {area: "徳島県"}, {area: "香川県"}, {area: "愛媛県"}, {area: "高知県"}, {area: "福岡県"}, {area: "佐賀県"}, {area: "長崎県"}, {area: "熊本県"}, {area: "大分県"}, {area: "宮崎県"}, {area: "鹿児島県"}, {area: "沖縄県"}])

レディース, メンズ, ベビー・キッズ, インテリア・住まい・小物, 本・音楽・ゲーム, おもちゃ・ホビー・グッズ, コスメ・香水・美容, 家電・スマホ・カメラ, スポーツ・レジャー, ハンドメイド, チケット, 自動車・オートバイ, その他  = Category.create([{name: "レディース"}, {name: "メンズ"}, {name: "ベビー・キッズ"}, {name: "インテリア・住まい・小物"}, {name: "本・音楽・ゲーム"}, {name: "おもちゃ・ホビー・グッズ"}, {name: "コスメ・香水・美容"}, {name: "家電・スマホ・カメラ"}, {name: "スポーツ・レジャー"}, {name: "ハンドメイド"}, {name: "チケット"}, {name: "自動車・オートバイ"}, {name: "その他"}])


トップス, ジャケット_アウター, パンツ, スカート, ワンピース, 靴, ルームウェア_パジャマ, レッグウェア, 帽子, バッグ, アクセサリー, ヘアアクセサリー, 小物, 時計, ウィッグ_エクステ, 浴衣_水着, スーツ_フォーマル_ドレス, マタニティ, その他女 = レディース.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "靴"}, {name: "ルームウェア/パジャマ"}, {name: "レッグウェア"}, {name: "帽子"}, {name: "バッグ"}, {name: "アクセサリー"}, {name: "ヘアアクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "ウィッグ/エクステ"}, {name: "浴衣/水着"}, {name: "スーツ/フォーマル/ドレス"}, {name: "マタニティ"}, {name: "その他"}])

Tシャツ_カットソー_半袖_袖なし, Tシャツ_カットソー_七分_長袖, シャツ_ブラウス_半袖_袖なし, シャツ_ブラウス_七分_長袖, ポロシャツ, キャミソール, タンクトップ, ホルターネック, ニット_セーター, チュニック, カーディガン_ボレロ, アンサンブル, ベスト_ジレ, パーカー, トレーナー_スウェット, ベアトップ_チューブトップ, ジャージ, その他 = トップス.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルターネック"}, {name: "ホルターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ボレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}, {name: "トレーナー/スウェット"}, {name: "ベアトップ/チューブトップ"}, {name: "ジャージ"}, {name: "その他"}])

テーラードジャケット, ノーカラージャケット = ジャケット_アウター.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}])

デニム_ジーンズ, ショートパンツ = パンツ.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}])

ミニスカート, ひざ丈スカート = スカート.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}])

ミニワンピース, ひざ丈ワンピース = ワンピース.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}])

ハイヒール_パンプス, ブーツ = 靴.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}])

パジャマ, ルームウェア = ルームウェア_パジャマ.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])

ソックス, スパッツ_レギンス = レッグウェア.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}])

ニットキャップ_ビーニー, ハット = 帽子.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}])

ハンドバッグ ,トートバッグ = バッグ.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}])

ネックレス, ブレスレット= アクセサリー.children.create([{name: "ネックレス"}, {name: "ブレスレット"}])

ヘアゴム_シュシュ,ヘアバンド_カチューシャ = ヘアアクセサリー.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}])

長財布, 折り財布 = 小物.children.create([{name: "長財布"}, {name: "折り財布"}])

腕時計_アナログ, 腕時計_デジタル = 時計.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}])

前髪ウィッグ, ロングストレート= ウィッグ_エクステ.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}])

浴衣, 着物= 浴衣_水着.children.create([{name: "浴衣"}, {name: "着物"}])

スカートスーツ上下, パンツスーツ上下 = スーツ_フォーマル_ドレス.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}])

トップス, アウター = マタニティ.children.create([{name: "トップス"}, {name: "アウター"}])

コスプレ, 下着 = その他女.children.create([{name: "コスプレ"}, {name: "下着"}])

トップス, ジャケット_アウター, パンツ, 靴, バッグ, スーツ, 帽子, アクセサリー, 小物, 時計, 水着, レッグウェア, アンダーウェア, その他 = メンズ.children.create([{name: "トップス"}, {name: "ジャケット/アウター"}, {name: "パンツ"}, {name: "靴"}, {name: "バッグ"}, {name: "スーツ"}, {name: "帽子"}, {name: "アクセサリー"}, {name: "小物"}, {name: "時計"}, {name: "水着"}, {name: "レッグウェア"}, {name: "アンダーウェア"}, {name: "その他"}])

Tシャツ_カットソー_半袖_袖なし, Tシャツ_カットソー_七分_長袖 = トップス.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}])

テーラードジャケット, ノーカラージャケット = ジャケット_アウター.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}])

デニム_ジーンズ, ワークパンツ_カーゴパンツ = パンツ.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}])

スニーカー, サンダル = 靴.children.create([{name: "スニーカー"}, {name: "サンダル"}])

ショルダーバッグ, トートバッグ = バッグ.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"}])

スーツジャケット, スーツベスト = スーツ.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}])

キャップ, ハット = 帽子.children.create([{name: "キャップ"}, {name: "ハット"}])

ネックレス, ブレスレット= アクセサリー.children.create([{name: "ネックレス"}, {name: "ブレスレット"}])

長財布, 折り財布 = 小物.children.create([{name: "長財布"}, {name: "折り財布"}])

腕時計_アナログ, 腕時計_デジタル = 時計.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}])

一般水着, スポーツ用 = 水着.children.create([{name: "一般水着"}, {name: "スポーツ用"}])

ソックス, レギンス_スパッツ = レッグウェア.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}])

トランクス, ボクサーパンツ = アンダーウェア.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}])

ベビー服_女の子用_95cm, ベビー服_男の子用_95cm, ベビー服_男女兼用_95cm, キッズ服_男の子用_100cm_, キッズ服_男女兼用_100cm_, キッズ靴, 子ども用ファッション小物, おむつ_トイレ_バス, 外出_移動用品, 授乳_食事, ベビー家具_寝具_室内用品, おもちゃ, 行事_記念品, その他 = ベビー・キッズ.children.create([{name: "ベビー服(女の子用) ~95cm"}, {name: "ベビー服(男の子用) ~95cm"}, {name: "ベビー服(男女兼用) ~95cm"}, {name: "キッズ服(男の子用) 100cm~"}, {name: "キッズ服(男女兼用) 100cm~"}, {name: "キッズ靴"}, {name: "子ども用ファッション小物"}, {name: "おむつ/トイレ/バス"}, {name: "外出/移動用品"}, {name: "授乳/食事"}, {name: "ベビー家具_寝具_室内用品"}, {name: "おもちゃ"}, {name: "行事/記念品"}, {name: "その他"}])

トップス, アウター = ベビー服_女の子用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

トップス, アウター = ベビー服_男の子用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

トップス, アウター = ベビー服_男女兼用_95cm.children.create([{name: "トップス"}, {name: "アウター"}])

コート, ジャケット_上着 = キッズ服_男の子用_100cm_.children.create([{name: "コート"}, {name: "ジャケット/上着"}])

コート, ジャケット_上着 = キッズ服_男女兼用_100cm_.children.create([{name: "コート"}, {name: "ジャケット/上着"}])

スニーカー, サンダル = キッズ靴.children.create([{name: "スニーカー"}, {name: "サンダル"}])

靴下_スパッツ, 帽子 = 子ども用ファッション小物.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}])

おむつ用品, おまる_補助便座 = おむつ_トイレ_バス.children.create([{name: "おむつ用品"}, {name: "おまる/補助便座"}])

ベビーカー, 抱っこひも_スリング = 外出_移動用品.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}])

ミルク, ベビーフード = 授乳_食事.children.create([{name: "ミルク"}, {name: "ベビーフード"}])

ベッド, 布団_毛布 = ベビー家具_寝具_室内用品.children.create([{name: "ベッド"}, {name: "布団/毛布"}])

おふろのおもちゃ, がらがら = おもちゃ.children.create([{name: "おふろのおもちゃ"}, {name: "がらがら"}])

お食い初め用品, お食い初め用品 = 行事_記念品.children.create([{name: "お食い初め用品"}, {name: "お食い初め用品"}])

母子手帳用品, その他 = その他.children.create([{name: "母子手帳用品"}, {name: "その他"}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])

 # = .children.create([{name: ""}, {name: ""}])



