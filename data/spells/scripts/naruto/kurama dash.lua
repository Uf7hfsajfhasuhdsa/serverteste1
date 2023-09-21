local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)


local condition = createConditionObject(CONDITION_HASTE)

setConditionParam(condition, CONDITION_PARAM_TICKS, 22000)
setConditionFormula(condition, 4.0, 4.0, 4.0, 4.0)
setCombatCondition(combat, condition)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)

end
