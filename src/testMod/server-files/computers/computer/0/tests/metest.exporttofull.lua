local p = peripheral.find("meBridge")
test.assert(p)
local data = p.getItem({name = "minecraft:cobblestone"})
test.eq(384, data.amount, "corruption before change")
test.eq("minecraft:cobblestone", data.name, "corruption before change")
local exportResult = p.exportItem({name="minecraft:cobblestone", count=32}, "UP")
test.eq(exportResult, 0)
local data2 = p.getItem({name = "minecraft:cobblestone"})
test.eq(data.amount, data2.amount, "corruption after change")
test.eq(data.name, data2.name, "corruption after change")