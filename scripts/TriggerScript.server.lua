-- TriggerScript.server.lua

local trigger = script.Parent

local function onTouched(otherPart)
    local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
    if player then
        local part = Instance.new("Part")
        part.Size = Vector3.new(4, 1, 4)
        part.Position = trigger.Position + Vector3.new(0, 5, 0)
        part.Anchored = true
        part.Parent = workspace
    end
end

trigger.Touched:Connect(onTouched)