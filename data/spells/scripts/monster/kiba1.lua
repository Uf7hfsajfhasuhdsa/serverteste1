local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 147)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10000, -10000, -10000, -10000)
function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end
