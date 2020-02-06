# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



lady = ItemCategory.create(name:"レディース")
men = ItemCategory.create(name:"メンズ")


lady_tops = lady.children.create(name:"トップス")
lady_bottoms = lady.children.create(name:"ボトムス")

men_tops = men.children.create(name:"トップス")
men_bottoms = men.children.create(name:"ボトムス")

lady_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ/ブラウス（半袖/袖なし）"},
                           {name:"シャツ/ブラウス（七分/長袖）"},{name:"キャミソール"},{name:"タンクトップ"},{name:"ホルターネック"},
                           {name:"ニット/セーター"},{name:"チュニック"},{name:"パーカー"},])
lady_bottoms.children.create([{name:"デニム/ジーンズ"}, {name:"ショートパンツ"},{name:"オールインワン"},
                              {name:"サルエルパンツ"},{name:"ガウチョパンツ"},{name:"ハーフパンツ"},{name:"ミニスカート"},
                              {name:"ひざ丈スカート"},{name:"ロングスカート"},{name:"キュロット"},])                          


men_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ"},
                          {name:"ポロシャツ"},{name:"タンクトップ"},{name:"ニット/セーター"},{name:"パーカー"},
                          {name:"スウェット"},{name:"カーディガン"},{name:"ベスト"},])
men_bottoms.children.create([{name:"デニム/ジーンズ"}, {name:"ショートパンツ"},{name:"ワークパンツ/カーゴパンツ"},
                             {name:"スラックス"},{name:"チノパン"},{name:"ハーフパンツ"},{name:"ペインターパンツ"},
                             {name:"サルエルパンツ"},{name:"オーバーオール"},{name:"ワイドパンツ"},])            
