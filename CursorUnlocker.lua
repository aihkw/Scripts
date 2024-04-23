-- Gui to Lua
-- Version: 3.2

-- Instances:

local CursorLockHandler = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CursorStatus = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

CursorLockHandler.Name = "CursorLockHandler"
CursorLockHandler.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CursorLockHandler.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CursorLockHandler
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, -50)
Frame.Size = UDim2.new(0, 200, 0, 50)

CursorStatus.Name = "CursorStatus"
CursorStatus.Parent = Frame
CursorStatus.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
CursorStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
CursorStatus.BorderSizePixel = 0
CursorStatus.Size = UDim2.new(0, 200, 0, 50)
CursorStatus.Font = Enum.Font.SourceSans
CursorStatus.Text = "Locked: true"
CursorStatus.TextColor3 = Color3.fromRGB(0, 0, 0)
CursorStatus.TextSize = 20.000

UICorner.Parent = CursorStatus

-- Scripts:

local function FHCNBHF_fake_script() -- CursorStatus.LocalScript 
	local script = Instance.new('LocalScript', CursorStatus)

	local UIS = game:GetService("UserInputService")
	local TB = script.Parent
	
	function update()
		if TB.Modal then
			TB.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
			TB.Text = "Locked: false"
		else
			TB.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
			TB.Text = "Locked: true"
		end
	end
	
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.LeftControl then
			TB.Modal = not TB.Modal
			update()
		end
	end)
end
coroutine.wrap(FHCNBHF_fake_script)()
