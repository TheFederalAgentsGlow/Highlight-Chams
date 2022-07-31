getgenv().Chams = {}

local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;

getgenv().newin = function(Object)
   local Highlight = Instance.new("Highlight");
   Highlight.Parent = Object;
   --// Add settings here
end

for k,v in next, Players do
    local Character = v.Character or v.CharacterAdded:Wait()
    getgenv().newin(Character)
    v.CharacterAdded:Connect(function()
        getgenv().newin(Character)
    end)
end

Players.PlayerAdded:Connect(function(Player)
    local Character = Player.Character or Player.CharacterAdded:Wait()
    getgenv().newin(Character)
    Player.CharacterAdded:Connect(function()
        getgenv().newin(Character)
    end)
end