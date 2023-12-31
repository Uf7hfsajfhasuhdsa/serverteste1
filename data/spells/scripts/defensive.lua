local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 13)

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)


function onGetFormulaValues(cid, level, maglevel)
min = (level * 3 + maglevel * 1.5) * 12
max = (level * 3 + maglevel * 1.5) * 12.1	

return min, max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end