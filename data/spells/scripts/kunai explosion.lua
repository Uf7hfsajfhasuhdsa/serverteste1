local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 15)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -13, -14, -15, -16)
function onCastSpell(cid, var)
local tPos = var.pos or getThingPos(var.number)
if tPos then
    tPos.x = tPos.x + 1
    tPos.y = tPos.y + 1
    doSendMagicEffect(tPos, 161)
end
return doCombat(cid, combat, var)
end