class Seed

  def call
    create_languages
    create_users
    create_user_languages
    create_matches
  end

  def create_languages
    puts "creating languages"
    Language.create(name: "JavaScript")
    Language.create(name: "Java")
    Language.create(name: "Ruby")
    Language.create(name: "C")
    Language.create(name: "CSS")
    Language.create(name: "PHP")
    Language.create(name: "Python")
    Language.create(name: "C++")
    Language.create(name: "Objective-C")
    Language.create(name: "C#")
    Language.create(name: "Shell")
    Language.create(name: "R")
    Language.create(name: "CoffeeScript")
    Language.create(name: "Go")
    Language.create(name: "Perl")
    Language.create(name: "Scala")
    Language.create(name: "VimL")
    Language.create(name: "Clojure")
    Language.create(name: "Haskell")
    Language.create(name: "Erlang")
    Language.create(name: "Rust")
    Language.create(name: "Swift")
  end


  def create_users
    puts "creating_users"

    User.create(
        nickname:"121watts",
        uid: 7582765,
        avatar_url: "https://avatars.githubusercontent.com/u/7582765?v=3",
        html_url: "https://github.com/121watts",
        description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
        nickname:"alanbsmith",
        uid: 4818182,
        avatar_url: "https://avatars.githubusercontent.com/u/4818182?v=3",
        html_url: "https://github.com/alanbsmith",
        description: "i am so alone plz pair with me")

    User.create(
        nickname:"allisonlarson",
        uid: 7552541,
        avatar_url: "https://avatars.githubusercontent.com/u/7552541?v=3",
        html_url: "https://github.com/allisonlarson",
        description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
        nickname:"AndyDangerous",
        uid: 2694765,
        avatar_url: "https://avatars.githubusercontent.com/u/2694765?v=3",
        html_url: "https://github.com/AndyDangerous",
        description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
        nickname:"BobGu",
        uid: 4348166,
        avatar_url: "https://avatars.githubusercontent.com/u/4348166?v=3",
        html_url: "https://github.com/BobGu",
        description: "i am so alone plz pair with me")

    User.create(
        nickname:"chadbrading",
        uid: 6863100,
        avatar_url: "https://avatars.githubusercontent.com/u/6863100?v=3",
        html_url: "https://github.com/chadbrading",
        description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
        nickname:"coreyd303",
        uid: 6662565,
        avatar_url: "https://avatars.githubusercontent.com/u/6662565?v=3",
        html_url: "https://github.com/coreyd303",
        description: "i am so alone plz pair with me")

    User.create(
        nickname:"emilyadavis303",
        uid: 7103421,
        avatar_url: "https://avatars.githubusercontent.com/u/7103421?v=3",
        html_url: "https://github.com/emilyadavis303",
        description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
        nickname:"ericfransen",
        uid: 5271281,
        avatar_url: "https://avatars.githubusercontent.com/u/5271281?v=3",
        html_url: "https://github.com/ericfransen",
        description: "i am so alone plz pair with me")

    User.create(
      nickname:"GusVilla303",
      uid: 6902951,
      avatar_url: "https://avatars.githubusercontent.com/u/6902951?v=3",
      html_url: "https://github.com/GusVilla303",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"Hilaryous",
      uid: 5042071,
      avatar_url: "https://avatars.githubusercontent.com/u/5042071?v=3",
      html_url: "https://github.com/Hilaryous",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"HoracioChavez",
      uid: 3926939,
      avatar_url: "https://avatars.githubusercontent.com/u/3926939?v=3",
      html_url: "https://github.com/HoracioChavez",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"jcasimir",
      uid: 43102,
      avatar_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      html_url: "https://github.com/jcasimir",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"marcgarreau",
      uid: 3621728,
      avatar_url: "https://avatars.githubusercontent.com/u/3621728?v=3",
      html_url: "https://github.com/marcgarreau",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"tanmdoan",
      uid: 7057689,
      avatar_url: "https://avatars.githubusercontent.com/u/7057689?v=3",
      html_url: "https://github.com/tanmdoan",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"timproctor",
      uid: 5150213,
      avatar_url: "https://avatars.githubusercontent.com/u/5150213?v=3",
      html_url: "https://github.com/timproctor",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"tyrbo",
      uid: 2217533,
      avatar_url: "https://avatars.githubusercontent.com/u/2217533?v=3",
      html_url: "https://github.com/tyrbo",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"wfro",
      uid: 6454987,
      avatar_url: "https://avatars.githubusercontent.com/u/6454987?v=3",
      html_url: "https://github.com/wfro",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"a6ftcruton",
      uid: 5419731,
      avatar_url: "https://avatars.githubusercontent.com/u/5419731?v=3",
      html_url: "https://github.com/a6ftcruton",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"awortham",
      uid: 6271986,
      avatar_url: "https://avatars.githubusercontent.com/u/6271986?v=3",
      html_url: "https://github.com/awortham",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"glenegbert",
      uid: 5980245,
      avatar_url: "https://avatars.githubusercontent.com/u/5980245?v=3",
      html_url: "https://github.com/glenegbert",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"ianderse",
      uid: 5242189,
      avatar_url: "https://avatars.githubusercontent.com/u/5242189?v=3",
      html_url: "https://github.com/ianderse",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"jcasimir",
      uid: 43102,
      avatar_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      html_url: "https://github.com/jcasimir",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"kavitasa",
      uid: 1514862,
      avatar_url: "https://avatars.githubusercontent.com/u/1514862?v=3",
      html_url: "https://github.com/kavitasa",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"lukeaiken",
      uid: 3201898,
      avatar_url: "https://avatars.githubusercontent.com/u/3201898?v=3",
      html_url: "https://github.com/lukeaiken",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"rNavarrete",
      uid: 3431580,
      avatar_url: "https://avatars.githubusercontent.com/u/3431580?v=3",
      html_url: "https://github.com/rNavarrete",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"smbsimon",
      uid: 5553382,
      avatar_url: "https://avatars.githubusercontent.com/u/5553382?v=3",
      html_url: "https://github.com/smbsimon",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"chandracarney",
      uid: 8561841,
      avatar_url: "https://avatars.githubusercontent.com/u/8561841?v=3",
      html_url: "https://github.com/chandracarney",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"ChasevanHekken",
      uid: 5781795,
      avatar_url: "https://avatars.githubusercontent.com/u/5781795?v=3",
      html_url: "https://github.com/ChasevanHekken",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"Copywright",
      uid: 7808793,
      avatar_url: "https://avatars.githubusercontent.com/u/7808793?v=3",
      html_url: "https://github.com/Copywright",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"dalexj",
      uid: 2790993,
      avatar_url: "https://avatars.githubusercontent.com/u/2790993?v=3",
      html_url: "https://github.com/dalexj",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"dglunz",
      uid: 2965795,
      avatar_url: "https://avatars.githubusercontent.com/u/2965795?v=3",
      html_url: "https://github.com/dglunz",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"gregnar",
      uid: 8186136,
      avatar_url: "https://avatars.githubusercontent.com/u/8186136?v=3",
      html_url: "https://github.com/gregnar",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"katelane",
      uid: 3933878,
      avatar_url: "https://avatars.githubusercontent.com/u/3933878?v=3",
      html_url: "https://github.com/katelane",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"skuhlmann",
      uid: 6923345,
      avatar_url: "https://avatars.githubusercontent.com/u/6923345?v=3",
      html_url: "https://github.com/skuhlmann",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"Tmee",
      uid: 8226837,
      avatar_url: "https://avatars.githubusercontent.com/u/8226837?v=3",
      html_url: "https://github.com/Tmee",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"trayo",
      uid: 6809782,
      avatar_url: "https://avatars.githubusercontent.com/u/6809782?v=3",
      html_url: "https://github.com/trayo",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"VikiAnn",
      uid: 5874167,
      avatar_url: "https://avatars.githubusercontent.com/u/5874167?v=3",
      html_url: "https://github.com/VikiAnn",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"zRouth",
      uid: 8505719,
      avatar_url: "https://avatars.githubusercontent.com/u/8505719?v=3",
      html_url: "https://github.com/zRouth",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"bhargavisatpathy",
      uid: 8531351,
      avatar_url: "https://avatars.githubusercontent.com/u/8531351?v=3",
      html_url: "https://github.com/bhargavisatpathy",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"bmrsny",
      uid: 8440504,
      avatar_url: "https://avatars.githubusercontent.com/u/8440504?v=3",
      html_url: "https://github.com/bmrsny",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"bryceholcomb",
      uid: 6202829,
      avatar_url: "https://avatars.githubusercontent.com/u/6202829?v=3",
      html_url: "https://github.com/bryceholcomb",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"cluhring",
      uid: 8466906,
      avatar_url: "https://avatars.githubusercontent.com/u/8466906?v=3",
      html_url: "https://github.com/cluhring",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"EmilyMB",
      uid: 8007635,
      avatar_url: "https://avatars.githubusercontent.com/u/8007635?v=3",
      html_url: "https://github.com/EmilyMB",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"Jwan622",
      uid: 6790201,
      avatar_url: "https://avatars.githubusercontent.com/u/6790201?v=3",
      html_url: "https://github.com/Jwan622",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"KristaANelson",
      uid: 8313881,
      avatar_url: "https://avatars.githubusercontent.com/u/8313881?v=3",
      html_url: "https://github.com/KristaANelson",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"larsonkonr",
      uid: 7245142,
      avatar_url: "https://avatars.githubusercontent.com/u/7245142?v=3",
      html_url: "https://github.com/larsonkonr",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"laurawhalin",
      uid: 8449527,
      avatar_url: "https://avatars.githubusercontent.com/u/8449527?v=3",
      html_url: "https://github.com/laurawhalin",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"Lydias303",
      uid: 8863407,
      avatar_url: "https://avatars.githubusercontent.com/u/8863407?v=3",
      html_url: "https://github.com/Lydias303",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"mikedao",
      uid: 3011748,
      avatar_url: "https://avatars.githubusercontent.com/u/3011748?v=3",
      html_url: "https://github.com/mikedao",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"ndwhtlssthr",
      uid: 3827810,
      avatar_url: "https://avatars.githubusercontent.com/u/3827810?v=3",
      html_url: "https://github.com/ndwhtlssthr",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"oorion",
      uid: 869456,
      avatar_url: "https://avatars.githubusercontent.com/u/869456?v=3",
      html_url: "https://github.com/oorion",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"rshea303",
      uid: 7894293,
      avatar_url: "https://avatars.githubusercontent.com/u/7894293?v=3",
      html_url: "https://github.com/rshea303",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"scottalexandra",
      uid: 8812335,
      avatar_url: "https://avatars.githubusercontent.com/u/8812335?v=3",
      html_url: "https://github.com/scottalexandra",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"scottcrawford03",
      uid: 8398867,
      avatar_url: "https://avatars.githubusercontent.com/u/8398867?v=3",
      html_url: "https://github.com/scottcrawford03",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"AllPurposeName",
      uid: 9127698,
      avatar_url: "https://avatars.githubusercontent.com/u/9127698?v=3",
      html_url: "https://github.com/AllPurposeName",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"indiesquidge",
      uid: 3409645,
      avatar_url: "https://avatars.githubusercontent.com/u/3409645?v=3",
      html_url: "https://github.com/indiesquidge",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"jgu2160",
      uid: 5934106,
      avatar_url: "https://avatars.githubusercontent.com/u/5934106?v=3",
      html_url: "https://github.com/jgu2160",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"kpearson",
      uid: 3293289,
      avatar_url: "https://avatars.githubusercontent.com/u/3293289?v=3",
      html_url: "https://github.com/kpearson",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"kyrasteen",
      uid: 6415583,
      avatar_url: "https://avatars.githubusercontent.com/u/6415583?v=3",
      html_url: "https://github.com/kyrasteen",
      description: "SalesEngine was my glory days can we work on it again?")

    User.create(
      nickname:"mcshakes",
      uid: 8164007,
      avatar_url: "https://avatars.githubusercontent.com/u/8164007?v=3",
      html_url: "https://github.com/mcshakes",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"mirjoy",
      uid: 5142805,
      avatar_url: "https://avatars.githubusercontent.com/u/5142805?v=3",
      html_url: "https://github.com/mirjoy",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"neslom",
      uid: 8800860,
      avatar_url: "https://avatars.githubusercontent.com/u/8800860?v=3",
      html_url: "https://github.com/neslom",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"paulgrever",
      uid: 3664281,
      avatar_url: "https://avatars.githubusercontent.com/u/3664281?v=3",
      html_url: "https://github.com/paulgrever",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"treyx",
      uid: 9888146,
      avatar_url: "https://avatars.githubusercontent.com/u/9888146?v=3",
      html_url: "https://github.com/treyx",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"xvalentino",
      uid: 8762410,
      avatar_url: "https://avatars.githubusercontent.com/u/8762410?v=3",
      html_url: "https://github.com/xvalentino",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"DaishaV",
      uid: 11197637,
      avatar_url: "https://avatars.githubusercontent.com/u/11197637?v=3",
      html_url: "https://github.com/DaishaV",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"jcasimir",
      uid: 43102,
      avatar_url: "https://avatars.githubusercontent.com/u/43102?v=3",
      html_url: "https://github.com/jcasimir",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"jmejia",
      uid: 73824,
      avatar_url: "https://avatars.githubusercontent.com/u/73824?v=3",
      html_url: "https://github.com/jmejia",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"JoshCheek",
      uid: 77495,
      avatar_url: "https://avatars.githubusercontent.com/u/77495?v=3",
      html_url: "https://github.com/JoshCheek",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"marissamariesmith",
      uid: 12720982,
      avatar_url: "https://avatars.githubusercontent.com/u/12720982?v=3",
      html_url: "https://github.com/marissamariesmith",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"mikedao",
      uid: 3011748,
      avatar_url: "https://avatars.githubusercontent.com/u/3011748?v=3",
      html_url: "https://github.com/mikedao",
      description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname:"novohispano",
      uid: 1654034,
      avatar_url: "https://avatars.githubusercontent.com/u/1654034?v=3",
      html_url: "https://github.com/novohispano",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"raissashafer",
      uid: 8548182,
      avatar_url: "https://avatars.githubusercontent.com/u/8548182?v=3",
      html_url: "https://github.com/raissashafer",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"rwarbelow",
      uid: 3311609,
      avatar_url: "https://avatars.githubusercontent.com/u/3311609?v=3",
      html_url: "https://github.com/rwarbelow",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname:"stevekinney",
      uid: 251000,
      avatar_url: "https://avatars.githubusercontent.com/u/251000?v=3",
      html_url: "https://github.com/stevekinney",
      description: "i am so alone plz pair with me")

    User.create(
      nickname:"worace",
      uid: 1227440,
      avatar_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
      html_url: "https://github.com/worace",
      description: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

  end

  def create_user_languages
    puts "creating_user_languages"
    User.all.each do |user|
      Language.all.each do |language|
        if rand(2) == 0
          UserLanguage.create(user_id: user.id, language_id: language.id)
        end
      end
    end
  end

  def create_matches
    puts "creating_matches"
    User.all.each do |user1|
      User.all.each do |user2|
        Match.create(user_id: user1.id, matchee_id: user2.id) unless user1.id == user2.id
      end
    end
  end

  def self.call
    new.call
  end

end

Seed.call
