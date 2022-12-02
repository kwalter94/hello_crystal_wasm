require "kemal"

module HelloCrystalWasm
  VERSION = "0.1.0"

  get "/" do |env|
    env.redirect("/index.html")
  end

  Kemal.run
end
