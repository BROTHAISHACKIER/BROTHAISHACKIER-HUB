local hub = {}

function hub:Run(id)
	local TweenService = game:GetService("TweenService")
	local TextService = game:GetService("TextService")
	if game:GetService("CoreGui"):FindFirstChild("BIH KS") then
		game:GetService("CoreGui"):FindFirstChild("BIH KS"):Destroy()
	end
	local function discord(Url)
		local HttpService = game:GetService("HttpService")
		if not useStudio and not secureMode then
			local requestFunc = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request
			if requestFunc then
				local inviteCode = tostring(Url)
					:gsub("https://discord%.gg/", "")
					:gsub("http://discord%.gg/", "")
					:gsub("discord%.gg/", "")
				local s, e = pcall(function()
					requestFunc({
						Url = 'http://127.0.0.1:6463/rpc?v=1',
						Method = 'POST',
						Headers = {
							['Content-Type'] = 'application/json',
							Origin = 'https://discord.com'
						},
						Body = HttpService:JSONEncode({
							cmd = 'INVITE_BROWSER',
							nonce = HttpService:GenerateGUID(false),
							args = {code = inviteCode}
						})
					})
				end)
				return s
			end
		end
	end
	local Discord = "https://discord.gg/MffTRsUSpj"
	local DAva = discord("")

	local sg = Instance.new("ScreenGui", game:GetService("CoreGui"))
	sg.Name = "BIH KS"

	local shadow = Instance.new("Frame", sg)
	shadow.Size = UDim2.new(0.4, 0, 0.4, 0)
	shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	shadow.AnchorPoint = Vector2.new(0.5, 0.475)
	shadow.BackgroundColor3 = Color3.fromRGB(255/9,255/9,255/9)
	shadow.BackgroundTransparency = 0.75
	Instance.new("UICorner", shadow).CornerRadius = UDim.new(0.025, 0)
	Instance.new("UIAspectRatioConstraint", shadow).AspectRatio = 1.59

	local FullFrame = Instance.new("Frame", sg)
	FullFrame.Size = UDim2.new(0.4, 0, 0.4, 0)
	FullFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	FullFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	FullFrame.BackgroundColor3 = Color3.fromRGB(5, 27, 46)
	Instance.new("UICorner", FullFrame).CornerRadius = UDim.new(0.025, 0)
	Instance.new("UIAspectRatioConstraint", FullFrame).AspectRatio = 1.59
	Instance.new("UIDragDetector", FullFrame)

	FullFrame.Changed:Connect(function()
		shadow.Position = FullFrame.Position
	end)

	local title = Instance.new("TextLabel", FullFrame)
	title.Size = UDim2.new(1, 0, 0.1, 0)
	title.Position = UDim2.new(0, 0, 0.01, 0)
	title.Text = "BROTHAISHACKIER Key System"
	title.TextWrapped = true
	title.TextColor3 = Color3.new(1, 1, 1)
	title.BackgroundTransparency = 1
	title.TextScaled = true

	local main = Instance.new("Frame", FullFrame)
	main.Size = UDim2.new(1, 0, 0.88, 0)
	main.Position = UDim2.new(0, 0, 1, 0)
	main.AnchorPoint = Vector2.new(0, 1)
	main.BackgroundColor3 = Color3.fromRGB(10*1.5, 37*1.5, 53*1.5)
	Instance.new("UICorner", main).CornerRadius = UDim.new(0.025, 0)
	local grad = Instance.new("UIGradient", main)
	grad.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(126, 186, 222)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(126/1.5, 186/1.5, 222/1.5)),
	}
	grad.Rotation = 45

	local key = Instance.new("Frame", main)
	key.Size = UDim2.new(0.5, 0, 0.15, 0)
	key.Position = UDim2.new(0.5, 0, 0.30, 0)
	key.AnchorPoint = Vector2.new(0.5, 1)
	key.BackgroundTransparency = 0
	key.BackgroundColor3 =  Color3.fromRGB(12/1.5, 44/1.5, 62/1.5)
	Instance.new("UICorner", key).CornerRadius = UDim.new(0.2, 0)

	local key = Instance.new("TextBox", key)
	key.Size = UDim2.new(1,0,1,0)
	key.Position = UDim2.new(0,0,0.075,0)
	key.PlaceholderText = "Put key here"
	key.Text = ""
	key.TextScaled = true
	key.AnchorPoint = Vector2.new(0, 0)
	key.TextColor3 = Color3.new(1, 1, 1)
	key.BackgroundTransparency = 0
	key.ClearTextOnFocus = false
	key.BackgroundColor3 =  Color3.fromRGB(12, 44, 62)
	Instance.new("UICorner", key).CornerRadius = UDim.new(0.2, 0)

	local button = Instance.new("Frame", main)
	button.Size = UDim2.new(0.6, 0, 0.15, 0)
	button.Position = UDim2.new(0.5, 0, 0.65, 0)
	button.AnchorPoint = Vector2.new(0.5, 1)
	button.BackgroundTransparency = 0
	button.BackgroundColor3 = Color3.new(0.117647/2, 0.588235/2, 1/2)
	Instance.new("UICorner", button).CornerRadius = UDim.new(0.2, 0)

	local button = Instance.new("TextButton", button)
	button.Size = UDim2.new(1,0,1,0)
	button.Position = UDim2.new(0, 0, 0, 0)
	button.AnchorPoint = Vector2.new(0, 0.1)
	if DAva then
		button.Text = "Open Discord Key Link"
	else
		button.Text = "Copy Discord Key Link"
	end
	button.TextScaled = true
	button.TextColor3 = Color3.new(1, 1, 1)
	button.BackgroundTransparency = 0
	button.BackgroundColor3 = Color3.new(0.117647, 0.588235, 1)
	Instance.new("UICorner", button).CornerRadius = UDim.new(0.2, 0)
	button.Activated:Connect(function()
		local tween1 = TweenService:Create(
			button,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0, 0.05)}
		)
		local tween2 = TweenService:Create(
			button,
			TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{AnchorPoint = Vector2.new(0, 0)}
		)
		local tween3 = TweenService:Create(
			button,
			TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{AnchorPoint = Vector2.new(0, 0.1)}
		)

		tween1:Play()
		tween1.Completed:Wait()

		task.wait(0.1)
		task.spawn(function()
			tween2:Play()
			tween2.Completed:Wait()
			task.wait(0.35)
			tween3:Play()
		end)
		local s = discord(Discord)
		if s then
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Discord",
				Text = "Link Opened!",
				Duration = 5,
			})
		else
			setclipboard(Discord)
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Discord",
				Text = "Link Copied!",
				Duration = 5,
			})
		end
	end)
	local button = Instance.new("Frame", main)
	button.Size = UDim2.new(0.6, 0, 0.15, 0)
	button.Position = UDim2.new(0.5, 0, 0.90, 0)
	button.AnchorPoint = Vector2.new(0.5, 1)
	button.BackgroundTransparency = 0
	button.BackgroundColor3 = Color3.new(0.117647/2, 0.588235/2, 1/2)
	Instance.new("UICorner", button).CornerRadius = UDim.new(0.2, 0)

	local button = Instance.new("TextButton", button)
	button.Size = UDim2.new(1,0,1,0)
	button.Position = UDim2.new(0, 0, 0, 0)
	button.AnchorPoint = Vector2.new(0, 0.1)
	button.Text = "Submitt Key"
	button.TextScaled = true
	button.TextColor3 = Color3.new(1, 1, 1)
	button.BackgroundTransparency = 0
	button.BackgroundColor3 = Color3.new(0.117647, 0.588235, 1)
	Instance.new("UICorner", button).CornerRadius = UDim.new(0.2, 0)

	local verifyEvent = Instance.new("BindableEvent")
	local run
	button.Activated:Connect(function()
		local tween1 = TweenService:Create(
			button,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{AnchorPoint = Vector2.new(0, 0.05)}
		)

		local tween2 = TweenService:Create(
			button,
			TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{AnchorPoint = Vector2.new(0, 0)}
		)
		local tween3 = TweenService:Create(
			button,
			TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
			{AnchorPoint = Vector2.new(0, 0.1)}
		)

		tween1:Play()
		tween1.Completed:Wait()

		task.wait(0.1)
		task.spawn(function()
			tween2:Play()
			tween2.Completed:Wait()
			task.wait(0.35)
			tween3:Play()
		end)
		local HttpService = game:GetService("HttpService")

		local url = "https://bkeys.pages.dev/api"

		local body = {
			key = key.Text,
			id = id
		}

		local response = request({
			Url = url,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = HttpService:JSONEncode(body)
		})

		local data = HttpService:JSONDecode(response.Body)
		if data.success then
			run = data.code
			verifyEvent:Fire()
			sg:Destroy()
		else
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "BROTHAISHACKIER Key System",
				Text = "Wrong or old Key!",
				Duration = 5
			})
		end
	end)

	verifyEvent.Event:Wait()
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "BROTHAISHACKIER Key System",
		Text = "Verified!",
		Duration = 5
	})
	return loadstring(run)
end

return hub
