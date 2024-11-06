local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Đây là các vị trí của các Boss trong Blox Fruits (thí dụ, bạn cần thay đổi tọa độ dựa trên vị trí của Boss)
local bossPositions = {
    Vector3.new(100, 0, 200), -- Thay thế bằng vị trí của Boss 1
    Vector3.new(300, 0, 400), -- Thay thế bằng vị trí của Boss 2
    Vector3.new(500, 0, 600)  -- Thay thế bằng vị trí của Boss 3
}

-- Hàm di chuyển tới vị trí Boss
local function moveToPosition(targetPosition)
    local hrp = character:WaitForChild("HumanoidRootPart")
    hrp.CFrame = CFrame.new(targetPosition) -- Di chuyển đến vị trí của Boss
end

-- Hàm tấn công Boss
local function attackBoss(boss)
    -- Giả lập tấn công (ở đây bạn sẽ thay đổi bằng cách tấn công thực tế)
    -- Bạn cần phải làm việc với các công cụ chiến đấu trong game, ví dụ: kỹ năng đặc biệt của người chơi.
    humanoid:MoveTo(boss.Position)  -- Di chuyển gần Boss
    -- Ví dụ: kích hoạt skill hoặc tấn công theo thời gian
    wait(1)  -- Chờ 1 giây giữa các đợt tấn công
end

-- Vòng lặp liên tục để tự động farm Boss
while true do
    for _, position in pairs(bossPositions) do
        moveToPosition(position)  -- Di chuyển đến vị trí của Boss
        wait(2)  -- Chờ một chút để đảm bảo di chuyển xong

        -- Giả sử Boss là một đối tượng có thể tấn công, bạn sẽ gọi hàm attackBoss
        local boss = workspace:FindFirstChild("BossName") -- Thay "BossName" bằng tên của Boss
        if boss then
            attackBoss(boss)  -- Tấn công Boss
        end
        wait(3)  -- Thời gian giữa các đợt farm Boss
    end
end
loadstring(game:HttpGet(""))()