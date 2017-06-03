# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by(email:"admin@test.com").nil?
    u = User.new
    u.email = "admin@test.com"
    u.password = "123456"
    u.password_confirmation = "123456"
    u.is_admin = true
    u.save
    puts "Admin 已经建立好了， 账号为#{u.email}, 密码为#{u.password}"
  else
    puts "Admin 已经建立过了，脚本跳过该步骤。"
  end

  #商品信息


  name = ["阿尔法·罗密欧 PANDION",
          "别克Riviera",
          "阿斯顿·马丁CC1",
          "标致Onyx",
          "阿斯顿·马丁AM-RB 001",
          "兰博基尼Egoista",
          "宝马328 Hommage",
          "雷诺DeZir",
          "宝马ConnectedDrive",
          "马自达RX-Vision",
          "本田FCEV",
          "迈凯伦X-1",
          "标致EX1"
        ]
  information = ["作为一辆梦幻般的跑车，Pandion仍然保留了阿尔法罗密欧品牌的传统特征，并加入了新的设计元素。这款概念车也是为了庆祝阿尔法·罗密欧公司成立100周年而设计。头部采用中世纪骑士头盔的样式，车门灵感来自鱼鹰的翅膀，以后轮轴为中心向上垂直90°开启。尾部看似杂乱却造就了一种破壳而出的感觉，交错的刀刃表现出慧尾的姿态，使Pandion在静止时仍能保持足够的动感。",
                "全新Riviera别克‘未来’概念车不仅在设计上，对别克‘动感流畅’的设计DNA予以大跨度的拓展，将前瞻科技、人性化功能与现代美学相融合，更对BIP别克智能驾乘体系未来技术进行了大胆创想，完美体现‘欧美科技创新体验’战略规划的同时，昭示了全球别克产品的未来发展方向。",
                "阿斯顿·马丁CC100概念车的设计灵感来自于1959年推出的经典的DBR1赛车，DBR1曾在勒芒拉力赛获得过优异的成绩，同时其经典的双座造型引领了一代设计风潮。采用碳纤维的车身结构，修长的车头看上去动感十足，同时该车还没有设计前风挡玻璃，车身上的100标识是向阿斯顿·马丁成立100周年献礼。",
                "高性能混合动力跑车Onyx，其采用了前卫的造型设计，并运用诸多勒芒赛车技术，轻量化的设计是亮点。其装备了一套高能性能混合动力系统，外形则运用前卫的超跑设计元素。采用高亮铜金色与黑色车身搭配，低矮的车身与大规格的轮毂产生鲜明对比，细节部分也彰显它足够强的攻击性。",
                "2016年7月与红牛F1车队联合发布一款全新概念超跑，搭载自然吸气式V12发动机，功率高达1000马力。这台“谜一样的猛兽”携带着全车身空气流体车身，并采用了超轻量碳纤维车身结构，配合铝、钛合金打造，空气动力学的设计在这台车上简直就是教科书般的存在。",
                "全新概念车Egoista。整车使用了大量碳纤维材质，车型采用非常独特的单座布局.其单座舱的布局来自于战斗机。整车的线条感极强，立体感和层次感非常丰富。犀利的车身线条和形似涡轮扇叶的设计都让Egoista具备了令人血脉偾张的视觉效果。Egoista装配5.2升V10发动机，性能表现出色。",
                "作为新世纪的概念车，宝马将研发重点放在了轻量化结构上，全车几乎全部由碳纤维复合材料打造，包括底盘、车架等等，即使是搭载了3.0升直列6缸发动机，整车重量也才仅仅780公斤。而且从头到尾没有任何其他颜色涂装，全部覆盖在碳纤维特殊的斜向格纹下，梦幻至极。",
                "DeZir独特的线条以及红色的内饰显得更加柔美。其造型中最夸张的地方在于其21寸硕大的车轮，独特的法系风格让人很难忘怀。两扇欧翼式车门采用完全相反的开门方向，给人耳目一新的感觉。动力来源为置于座椅后方的24kWh锂电池，内饰配色鲜艳，风格独特。",
                "宝马Vision ConnectedDrive概念车不仅让我们领略了外观设计上BMW的灵动，更让我们见识了ConnectedDrive的涵义。出彩的外观设计其实不是最大的亮点，5项服务，BMW助、BMW在线、BMW导航、BMW电话服务和车内互联网接入，所有这些提供给你独一无二的移动体验——最大化的安全、舒适和驾驶乐趣。",
                "向全球首次公开了搭载象征马自达“不懈挑战精神”的转子发动机的全新概念跑车“Mazda RX-VISION”。RX-Vision实际上代表了马自达心中一直以来的梦想。哪怕这个梦为别人所嘲笑，哪怕前行的路并不平坦，但他靠自己的努力和毅力，将自己的梦想一步一步照进了现实。",
                "超流线型车身，非交错的单一流线弧形组合车顶罩与前脸与行李箱。最有特色要属前保险杠两侧筐形进气口，向上延伸至挡风玻璃；同时后轮盖也从视觉上交相辉映至后扰流板断痕，充分考虑空气动力学。该车的氢燃料电池组可以产生100千瓦的能量，功率为3千瓦/升，相比于之前的FCX Clarity使用的电池组，功率提升了60%，重量减少了33%。",
                "迈凯轮(McLaren)X-1是基于迈凯轮旗下的MP4-12C精心打造的一款超级豪华型概念跑车车身的部分也大量采用了碳纤维来制作，并且施以钢琴镜面类似的精致烤漆，同时采用复古手法设计的隐藏式后轮，可以外掀的后叶子板，复杂的绞炼机构、碳纤维钣件的制作以及各种机具的安排等等，这些都是X1概念车型最具成就的部分。",
                "标致EX1的制造目的之一是用于纪念公司成立200周年，车身结构非常新颖，并且车身运用了极为“未来化”的设定，包括“漂浮式”的前栅格，高抛光的铝制金属组件，反向开启的车门。在车身的内部，乘客们将会享受到真皮装潢带来的舒适感，金属组件带来的豪华感和数字显示装置带来的高级感。"
              ]
  car_price = [2178000,872000,1960000,1680000,1880000,3640000,1395000,1090000,1740000,1970000,680000,2610000,1486000]
  car_quantity = [5,6,7,4,3,5,7,2,9,3,3,5,8]

  create_products = for i in 1..13 do
    Product.create!([title:name[i-1],description:information[i-1],price:car_price[i-1],quantity:car_quantity[i-1]])
  end

  puts "13 products without pics created."

  image1 = [
    "http://ww4.sinaimg.cn/large/006tNbRwgy1fg6m7ot5ihj30sc0e7130.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8eg4m1wrj30sg0lcwth.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8en493p6j30sg0lc460.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8ekrvn36j30sg0lcdph.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8eiit9nuj30sg0lcwii.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8ep8g4h1j30sg0kaq8r.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8eqqle6sj30sg0lcdiz.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8esktfn7j30sg0lcwhb.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8ettq1lkj30sg0lc0vw.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8eutswzfj30sg0lcmy5.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8ewbpsyrj30sg0lcqcw.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8f80sb7jj30sg0lcdmb.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8f92c484j30sg0lcn0c.jpg"
  ]

  image2 = [
    "http://ww1.sinaimg.cn/large/006tNbRwgy1fg60yaj0c0j30sg0g9taf.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8ehejntcj30sg0lcqca.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8en6db4uj30sg0lc7b9.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8ek6bctdj30sg0lc468.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8einq4bzj30sg0lcaeh.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8epc4zo8j30sg0kan58.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8eqs0qwcj30sg0lc76d.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8esmwqquj30sg0lcdis.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8etso4qoj30sg0lcadz.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8euy6s7pj30sg0lc42z.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8ewiovzwj30sg0lc12k.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8f7wjolzj30sg0lcwlr.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8f90asa7j30sg0lctcx.jpg"
  ]

  image3 = [
    "http://ww2.sinaimg.cn/large/006tNbRwgy1fg60w2k4r5j30sg0lcgnw.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8ehejntcj30sg0lcqca.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8enaex0cj30sg0lcdnm.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8ekchl5ij30sg0lc0z4.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8eik94dlj30sg0lcwix.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8ep72ze0j30sg0ka430.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8eqsdc6aj30sg0lcjt1.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8eslw12dj30sg0lc412.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8etqyetmj30sg0lc40i.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8euvlbxgj30sg0lctc6.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8ewfahsmj30sg0lc12s.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8f84gzxlj30sg0lc10w.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8f8ynpyrj30sg0lcjty.jpg"
  ]

  image4 = [
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8fr2671zj318g0xc0wh.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8egva0wdj30sg0lctjr.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8en1ci1pj30sg0lcahf.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8ekrvn36j30sg0lcdph.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8eihjtcuj30sg0lcdmg.jpg",
    "https://ws2.sinaimg.cn/large/006tNbRwgy1fg8ep5efdjj30sg0ka7gj.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8eqpn8ecj30sg0lcq4t.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8esjv9l5j30sg0lcgnt.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8etqllwtj30sg0lcgnm.jpg",
    "https://ws4.sinaimg.cn/large/006tNbRwgy1fg8euu17goj30sg0lc3z9.jpg",
    "https://ws1.sinaimg.cn/large/006tNbRwgy1fg8ew8y97zj30sg0lctij.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8f7t1un2j30sg0lctgg.jpg",
    "https://ws3.sinaimg.cn/large/006tNbRwgy1fg8f8x616gj30sg0lcgoq.jpg"
  ]

  create_photos = for i in 0..12 do
    Photo.create!(product_id: (i+1),avatar: open(image1[i]))
    Photo.create!(product_id: (i+1),avatar: open(image2[i]))
    Photo.create!(product_id: (i+1),avatar: open(image3[i]))
    Photo.create!(product_id: (i+1),avatar: open(image4[i]))
  end

  puts "13 photos created."
