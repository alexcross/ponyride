use "json"

actor Main
  new create(env: Env) =>
    let jsonDoc: JsonDoc = jsonDoc.create()

    let tree: JsonObject = JsonObject.create()
    tree.data("type") = "apple"
    tree.data("color") = "red"

    let flower: JsonObject = JsonObject.create()
    flower.data("type") = "rose"
    flower.data("color") = "pink"
    flower.data("size") = "10"

    let root: JsonObject = JsonObject.create()
    root.data("tree") = tree
    root.data("flower") = flower

    jsonDoc.data = root

    env.out.print(jsonDoc.string())
