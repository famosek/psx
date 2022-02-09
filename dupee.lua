local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
local mybanks = lib.Network.Invoke("get my banks")
local mydiamonds = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, "%,", "")
local PetsList = {}

local request, request2 = lib.Network.Invoke("Bank Withdraw", mybanks[1]['BUID'], PetsList, mydiamonds - 1);
if request then
    lib.Message.New("Dupe starting");
else
    lib.Message.New(request2 and "Something went wrong. Try again!");
    return;
end
lib.Message.New("Dupe successfully!");
