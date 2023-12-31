local config = {
            exhaustionSeconds = 4, -- exausted em segundos
            storageUse = 34538 -- storage usado.
}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000) -- aqui vai o tempo de paralyze, 1000 = 1 segundo
setConditionParam(condition, CONDITION_PARAM_SPEED, -800) -- velocidade que o monstro ir� perder
setConditionFormula(condition, 0, 0, 0, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -22, 1, -24, 1)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
if(exhaustion.check(cid, config.storageUse) == TRUE) then
   if (exhaustion.get(cid, config.storageUse) >= 60) then
   doPlayerSendCancel(cid, "Vo�� s� pode usar ap�s [" .. math.floor(exhaustion.get(cid, config.storageUse) / 60 + 1) .."] minutos.")
   end
            if (exhaustion.get(cid, config.storageUse) <= 60) then
            doPlayerSendCancel(cid, "Vo�� s� pode usar ap�s [" .. exhaustion.get(cid, config.storageUse).."] segundos.")
            end
return false
end

doCombat(cid, combat, var)
exhaustion.set(cid, config.storageUse, config.exhaustionSeconds)
local eff = 240 -- ID do efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y+1, z=getCreaturePosition(target).z}
addEvent(doSendMagicEffect, 0, position, eff)

return true
end