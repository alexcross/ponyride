use "collections"

//trait SetMy[A]
type ID is U64
type IDSet is SetIs[ID]

class IDTree
    let set: IDSet ref
    let id: ID

    new create(id': ID) =>
        set = IDSet
        id = id'
    fun _set_check(id': (ID | None) = None): ID =>
        match id'
            | let id'': ID => id''
            else 0
        end

    fun ref intersect(set': IDSet) => this.set.intersect(set')
    //fun ref union(set': IDSet) => this.set.union(set')
    fun values() => this.set.values()

actor Main
    new create(env: Env) =>
        env.out.print("Started".add(IDTree(1)._set_check().string()))

