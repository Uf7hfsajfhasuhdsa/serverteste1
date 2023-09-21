local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -0, -10, -11, -12)
function onCastSpell(cid, var)
local eff = 190 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)
return doCombat(cid, combat, var)
end