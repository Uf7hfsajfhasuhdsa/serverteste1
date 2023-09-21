local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -14, -15, -16, -17)
function onCastSpell(cid, var)
local storage = 3
local time = 1
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 1
    tPos.y = tPos.y
    doSendMagicEffect(tPos, 112)
end
return doCombat(cid, combat, var)
else
     doPlayerSendCancel(cid, "Exausted")
  end
end
