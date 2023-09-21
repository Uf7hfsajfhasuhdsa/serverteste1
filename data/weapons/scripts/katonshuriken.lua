local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, 1)

setCombatParam(combat, COMBAT_PARAM_BLOCKSHIELD, 1)

setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)

setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 82)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 96, 96, 96, 96)



function onUseWeapon(cid, var)
return doCombat(cid, combat, var)

end
