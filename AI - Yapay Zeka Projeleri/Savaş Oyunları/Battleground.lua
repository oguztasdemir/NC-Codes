-- =========================================================================
-- NC - AI Battleground (Savaş Alanı - 50 Silahlı Pro HUD Modu)
-- Geliştirici: AI & Oğuz Taşdemir (Devilstrk#5475)
-- İletişim: LinkedIn: linkedin.com/in/oguz-tasdemir-846889353 | IG: @_oguztasdemir
-- =========================================================================
-- HAKKINDA: Sayfalı menüden seçilebilen 50 farklı silah, kafa üstü can kalpleri,
--           lazer nişan çizgisi (⊕), dinamik silah kaydırma göstergeli HUD
--           ve 20 dönen haritalı FFA nişancı oyunu.
-- =========================================================================
local admins = {
    ["Devilstrkpro#5475"] = true,
    ["Devilstrk#5475"] = true
}

-- 50 adet özgün nitelikte silah listesi (hasar, hız, bekleme, mermi kapasitesi vb.)
local weapons = {
    { name = "Glock-18", damage = 18, cooldown = 350, speed = 25, spread = 0, pType = 2, clipSize = 20, reloadTime = 1200 },
    { name = "USP-S", damage = 22, cooldown = 400, speed = 26, spread = 0, pType = 11, clipSize = 12, reloadTime = 1400 },
    { name = "P250", damage = 24, cooldown = 450, speed = 25, spread = 1, pType = 2, clipSize = 10, reloadTime = 1300 },
    { name = "Five-SeveN", damage = 25, cooldown = 350, speed = 27, spread = 0, pType = 11, clipSize = 20, reloadTime = 1500 },
    { name = "Tec-9", damage = 20, cooldown = 250, speed = 25, spread = 2, pType = 2, clipSize = 18, reloadTime = 1600 },
    { name = "Desert Eagle", damage = 45, cooldown = 800, speed = 28, spread = 1, pType = 9, clipSize = 7, reloadTime = 1800 },
    { name = "Dual Berettas", damage = 18, cooldown = 180, speed = 24, spread = 3, pType = 2, clipSize = 30, reloadTime = 2200 },
    { name = "CZ75-Auto", damage = 15, cooldown = 120, speed = 25, spread = 4, pType = 2, clipSize = 12, reloadTime = 1700 },
    { name = "R8 Revolver", damage = 60, cooldown = 1000, speed = 30, spread = 0, pType = 9, clipSize = 8, reloadTime = 2000 },
    { name = "MP9", damage = 12, cooldown = 100, speed = 26, spread = 4, pType = 11, clipSize = 30, reloadTime = 1800 },
    { name = "MAC-10", damage = 11, cooldown = 90, speed = 25, spread = 5, pType = 2, clipSize = 30, reloadTime = 1600 },
    { name = "MP7", damage = 14, cooldown = 110, speed = 26, spread = 3, pType = 11, clipSize = 30, reloadTime = 1900 },
    { name = "UMP-45", damage = 18, cooldown = 150, speed = 25, spread = 2, pType = 2, clipSize = 25, reloadTime = 1700 },
    { name = "P90", damage = 12, cooldown = 80, speed = 26, spread = 4, pType = 11, clipSize = 50, reloadTime = 2400 },
    { name = "PP-Bizon", damage = 11, cooldown = 90, speed = 24, spread = 4, pType = 2, clipSize = 64, reloadTime = 2200 },
    { name = "MP5-SD", damage = 14, cooldown = 110, speed = 27, spread = 2, pType = 11, clipSize = 30, reloadTime = 1800 },
    { name = "FAMAS", damage = 22, cooldown = 150, speed = 28, spread = 2, pType = 2, clipSize = 25, reloadTime = 2000 },
    { name = "Galil AR", damage = 20, cooldown = 140, speed = 27, spread = 3, pType = 2, clipSize = 35, reloadTime = 2100 },
    { name = "M4A4", damage = 25, cooldown = 150, speed = 28, spread = 1, pType = 11, clipSize = 30, reloadTime = 2000 },
    { name = "M4A1-S", damage = 28, cooldown = 160, speed = 29, spread = 0, pType = 11, clipSize = 20, reloadTime = 2100 },
    { name = "AK-47", damage = 35, cooldown = 180, speed = 28, spread = 2, pType = 2, clipSize = 30, reloadTime = 2200 },
    { name = "SG 553", damage = 30, cooldown = 170, speed = 29, spread = 1, pType = 2, clipSize = 30, reloadTime = 2400 },
    { name = "AUG", damage = 28, cooldown = 160, speed = 29, spread = 1, pType = 11, clipSize = 30, reloadTime = 2300 },
    { name = "AWP", damage = 85, cooldown = 2000, speed = 38, spread = 0, pType = 9, clipSize = 5, reloadTime = 3000 },
    { name = "SSG 08", damage = 40, cooldown = 1200, speed = 34, spread = 0, pType = 9, clipSize = 10, reloadTime = 2200 },
    { name = "G3SG1", damage = 45, cooldown = 500, speed = 32, spread = 1, pType = 9, clipSize = 20, reloadTime = 2800 },
    { name = "SCAR-20", damage = 45, cooldown = 500, speed = 32, spread = 1, pType = 9, clipSize = 20, reloadTime = 2800 },
    { name = "Nova", damage = 12, cooldown = 1000, speed = 22, spread = 7, pType = 0, clipSize = 8, reloadTime = 2200, isShotgun = true },
    { name = "XM1014", damage = 10, cooldown = 400, speed = 21, spread = 8, pType = 0, clipSize = 6, reloadTime = 2500, isShotgun = true },
    { name = "MAG-7", damage = 15, cooldown = 1100, speed = 23, spread = 6, pType = 0, clipSize = 5, reloadTime = 1800, isShotgun = true },
    { name = "Sawed-Off", damage = 16, cooldown = 1200, speed = 20, spread = 9, pType = 0, clipSize = 7, reloadTime = 2400, isShotgun = true },
    { name = "M249", damage = 25, cooldown = 100, speed = 27, spread = 4, pType = 2, clipSize = 100, reloadTime = 3500 },
    { name = "Negev", damage = 15, cooldown = 60, speed = 28, spread = 6, pType = 11, clipSize = 150, reloadTime = 3800 },
    { name = "Pufferfish", damage = 50, cooldown = 1200, speed = 26, spread = 1, pType = 9, clipSize = 6, reloadTime = 2000 },
    { name = "Artemis", damage = 26, cooldown = 150, speed = 29, spread = 1, pType = 11, clipSize = 30, reloadTime = 2000 },
    { name = "UTS-15", damage = 14, cooldown = 1000, speed = 23, spread = 6, pType = 0, clipSize = 5, reloadTime = 1800, isShotgun = true },
    { name = "Lava Launcher", damage = 35, cooldown = 600, speed = 24, spread = 2, pType = 3, clipSize = 15, reloadTime = 2100 },
    { name = "Laser Beam", damage = 10, cooldown = 100, speed = 32, spread = 0, pType = 11, clipSize = 40, reloadTime = 1800 },
    { name = "Freeze Ray", damage = 25, cooldown = 500, speed = 25, spread = 1, pType = 1, clipSize = 12, reloadTime = 1600 },
    { name = "Plasma Rifle", damage = 28, cooldown = 200, speed = 28, spread = 2, pType = 9, clipSize = 25, reloadTime = 2200 },
    { name = "Acid Spitter", damage = 22, cooldown = 300, speed = 24, spread = 3, pType = 24, clipSize = 15, reloadTime = 1500 },
    { name = "Octopus Gun", damage = 18, cooldown = 250, speed = 23, spread = 4, pType = 13, clipSize = 20, reloadTime = 1700 },
    { name = "Thunderstrike", damage = 32, cooldown = 450, speed = 29, spread = 1, pType = 11, clipSize = 10, reloadTime = 1900 },
    { name = "Ghost Rifle", damage = 24, cooldown = 180, speed = 28, spread = 2, pType = 10, clipSize = 30, reloadTime = 2000 },
    { name = "Banana Launcher", damage = 15, cooldown = 150, speed = 24, spread = 3, pType = 0, clipSize = 25, reloadTime = 1500 },
    { name = "Grenadier", damage = 40, cooldown = 800, speed = 22, spread = 3, pType = 3, clipSize = 8, reloadTime = 2400 },
    { name = "Vortex Gun", damage = 30, cooldown = 400, speed = 27, spread = 1, pType = 9, clipSize = 15, reloadTime = 1800 },
    { name = "Void Rifle", damage = 28, cooldown = 220, speed = 27, spread = 2, pType = 11, clipSize = 30, reloadTime = 2100 },
    { name = "Hellfire", damage = 40, cooldown = 700, speed = 25, spread = 2, pType = 3, clipSize = 10, reloadTime = 2300 },
    { name = "Devstrk Custom", damage = 65, cooldown = 600, speed = 34, spread = 0, pType = 9, clipSize = 12, reloadTime = 1500 }
}

-- 20 adet özgün platformlu ve siperli savaş alanı haritası XML kodları
local maps = {
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="150" Y="270" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="650" Y="270" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="170" L="250" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="100" Y="230" L="15" H="65" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="700" Y="230" L="15" H="65" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="260" L="20" H="235" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="280" L="250" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="200" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="650" Y="200" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="110" L="180" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="200" Y="240" L="20" H="260" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="600" Y="240" L="20" H="260" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="250" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="140" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="220" Y="250" L="250" H="15" P="0,0,0.3,0.2,30,0,0,0" o="2c2c35" /><S T="12" X="580" Y="250" L="250" H="15" P="0,0,0.3,0.2,-30,0,0,0" o="2c2c35" /><S T="12" X="400" Y="150" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="150" Y="320" L="80" H="100" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="320" L="80" H="100" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="280" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="180" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="650" Y="180" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="250" L="120" H="240" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="180" Y="240" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="620" Y="240" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="200" Y="320" L="200" H="100" P="0,0,0.3,0.2,25,0,0,0" o="2c2c35" /><S T="12" X="600" Y="320" L="200" H="100" P="0,0,0.3,0.2,-25,0,0,0" o="2c2c35" /><S T="12" X="400" Y="190" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="290" L="800" H="20" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="150" Y="200" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="650" Y="200" L="150" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="300" Y="340" L="20" H="80" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="500" Y="340" L="20" H="80" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /></S><D><DS X="400" Y="260" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="100" Y="385" L="200" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="700" Y="385" L="200" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="320" L="250" H="160" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="120" Y="240" L="160" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="680" Y="240" L="160" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="220" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="100" Y="280" L="100" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="300" Y="200" L="100" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="500" Y="280" L="100" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="700" Y="200" L="100" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="120" L="120" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="150" Y="290" L="15" H="160" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="290" L="15" H="160" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="240" L="300" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="300" Y="150" L="15" H="100" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="500" Y="150" L="15" H="100" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="150" Y="385" L="300" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="650" Y="385" L="300" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="270" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="220" L="180" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="220" L="180" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="150" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="120" L="500" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="250" L="15" H="260" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="250" L="15" H="260" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="260" L="300" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="300" L="600" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="210" L="500" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="120" L="400" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="150" Y="220" L="30" H="300" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="170" L="30" H="400" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="220" L="30" H="300" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="280" Y="260" L="120" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="520" Y="260" L="120" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="280" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="90" L="500" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="230" L="15" H="300" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="650" Y="230" L="15" H="300" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="250" L="200" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="250" Y="290" L="300" H="15" P="0,0,0.3,0.2,15,0,0,0" o="2c2c35" /><S T="12" X="550" Y="200" L="300" H="15" P="0,0,0.3,0.2,-15,0,0,0" o="2c2c35" /><S T="12" X="250" Y="110" L="300" H="15" P="0,0,0.3,0.2,15,0,0,0" o="2c2c35" /></S><D><DS X="100" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="200" Y="330" L="20" H="80" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="600" Y="330" L="20" H="80" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="400" Y="320" L="30" H="100" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="100" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="800" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="300" Y="320" L="15" H="100" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="500" Y="320" L="15" H="100" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="400" Y="220" L="500" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="200" Y="150" L="15" H="120" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="600" Y="150" L="15" H="120" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]],
    [[<C><P /><Z><S><S T="12" X="400" Y="385" L="600" H="30" P="0,0,0.3,0.2,0,0,0,0" o="1a1a24" /><S T="12" X="400" Y="260" L="400" H="15" P="0,0,0.3,0.2,0,0,0,0" o="2c2c35" /><S T="12" X="150" Y="180" L="180" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /><S T="12" X="650" Y="180" L="180" H="15" P="0,0,0.3,0.2,0,0,0,0" o="3a3a45" /></S><D><DS X="400" Y="350" /></D><O /></Z></C>]]
}

local game = {
    started = false,
    currentMapIndex = 1,
    playerData = {}, -- name -> { hp=100, lives=3, weapon=1, lastFire=0, kills=0, selected=false, ammo=12, reloading=0, weaponPage=1 }
    bullets = {},
    respawnQueue = {}, -- name -> respawnTime
    roundEndTime = 0
}

local uiIds = {
    hud = 400,
    menu = 401,
    helpPanel = 402,
    helpBtn = 403,
    helpClose = 404,
    weaponMenu = 405,
    roundBanner = 406,
    mapNumber = 407
}

local playerHelp = {}
local playerUiIds = {}
local lastPlayerUiId = 2000

local function getPlayerUiId(name)
    if not playerUiIds[name] then
        lastPlayerUiId = lastPlayerUiId + 10
        playerUiIds[name] = lastPlayerUiId
    end
    return playerUiIds[name]
end

local function runSafe(func)
    local status, err = pcall(func)
    if not status then print("[Battleground Hatası] " .. tostring(err)) end
end

local function drawHelpPanel(name)
    local helpText = [[
<p align='center'><font size='15' face='Lucida Console' color='#FF3D00'><b>⚔️ FFA BATTLEGROUND</b></font></p>
<hr>
<font size='11' face='Verdana' color='#FFFFFF'>
• <b>Herkes Tek (FFA):</b> Takım yoktur, karşınıza çıkan tüm fareleri vurmalısınız!<br><br>
• <b>Can Hakları:</b> Her oyuncu 3 can hakkıyla başlar. Hakkınız bittiğinde elenirsiniz.<br><br>
• <b>Silah Seçimi:</b> Sınıf menüsünden silahınızı seçin (50 farklı silah mevcuttur!).<br><br>
• <b>Kontroller:</b> Baktığınız yöne <VP>SPACE (Boşluk)</VP> tuşu ile ateş edin.<br><br>
• Kapatmak için sağ üstteki <b>[X]</b> veya klavyeden <G>H</G> tuşuna basın.
</font>
]]
    ui.addTextArea(uiIds.helpPanel, helpText, name, 250, 90, 300, 250, 0x1f1f2e, 0x14141f, 0.95, true)
    ui.addTextArea(uiIds.helpClose, "<p align='center'><a href='event:close_help'><font size='12' color='#FF3232'><b>[X]</b></font></a></p>", name, 520, 95, 25, 20, 0x2b1b1b, 0x0c0505, 0.9, true)
    playerHelp[name] = true
end

local function removeHelpPanel(name)
    ui.removeTextArea(uiIds.helpPanel, name)
    ui.removeTextArea(uiIds.helpClose, name)
    playerHelp[name] = false
end

local function drawHelpButton(name)
    ui.addTextArea(uiIds.helpBtn, "<p align='center'><a href='event:show_help'>❓ Yardım</a></p>", name, 720, 35, 70, 20, 0x1f1f2e, 0x14141f, 0.8, true)
end

local function updateHUD(name)
    runSafe(function()
        local data = game.playerData[name]
        if not data then return end
        
        local wIdx = data.weapon
        
        -- Get previous, current, and next weapons in the wheel
        local prevIdx = wIdx - 1 <= 0 and 50 or wIdx - 1
        local nextIdx = wIdx + 1 > 50 and 1 or wIdx + 1
        
        local wPrev = weapons[prevIdx]
        local wCurr = weapons[wIdx]
        local wNext = weapons[nextIdx]
        
        -- Column text renders
        local colPrev = string.format("<font color='#888888'>%s</font>", wPrev.name)
        local colCurr = string.format("<font color='#FFFF00'><b>[ %s ]</b></font>", wCurr.name)
        local colNext = string.format("<font color='#888888'>%s</font>", wNext.name)
        
        -- Ammo text renders
        local now = os.time()
        local ammoPrev = string.format("%d / %d", wPrev.clipSize, wPrev.clipSize)
        local ammoCurr = data.reloading > now and "<font color='#FF3D00'><b>RELOAD</b></font>" or string.format("<b>%d / %d</b>", data.ammo, wCurr.clipSize)
        local ammoNext = string.format("%d / %d", wNext.clipSize, wNext.clipSize)

        local hudHtml = string.format([[
<table border='0' width='100%%' cellpadding='2'>
<tr align='center' face='Lucida Console' size='10'>
  <td>%s</td>
  <td>%s</td>
  <td>%s</td>
</tr>
<tr align='center' size='9' color='#CCCCCC'>
  <td>%s</td>
  <td>%s</td>
  <td>%s</td>
</tr>
</table>
        ]], colPrev, colCurr, colNext, ammoPrev, ammoCurr, ammoNext)
        
        ui.addTextArea(uiIds.hud, hudHtml, name, 15, 30, 260, 48, 0x1f1f2e, 0x14141f, 0.7, true)
        
        -- Score overlay
        local statsHtml = string.format("<p align='right'><font size='12' face='Lucida Console' color='#FFFFFF'>⚔️ LEŞ: <b>%d</b></font></p>", data.kills)
        ui.addTextArea(uiIds.hud + 10, statsHtml, name, 600, 35, 100, 25, 0, 0, 0.0, true)
    end)
end

local function drawMenu(name)
    runSafe(function()
        local menuHtml = [[
<p align='center'><font size='16' face='Lucida Console' color='#FFEF00'>⚔️ <b>FFA BATTLEGROUND</b> ⚔️</font></p>
<hr>
<p align='center'><font size='11' color='#FFFFFF'>
Herkes tek! 3 can hakkıyla hayatta kalan son fare olmaya çalışın!
</font></p>
<hr>
<p align='center'>
<a href='event:start_game'><font size='13' color='#98FB98'><b>Savaşa Katıl</b></font></a>
</p>
        ]]
        ui.addTextArea(uiIds.menu, menuHtml, name, 250, 110, 300, 200, 0x1f1f2e, 0x14141f, 0.95, true)
    end)
end

local function drawWeaponSelection(name, page)
    runSafe(function()
        page = page or 1
        if page < 1 then page = 1 elseif page > 5 then page = 5 end
        
        local data = game.playerData[name]
        if data then data.weaponPage = page end

        local menuHtml = string.format("<p align='center'><font size='14' face='Lucida Console' color='#FFD700'><b>🔫 SİLAH SEÇİN (Sayfa %d/5)</b></font></p><hr><p align='center'>", page)
        
        local startIdx = (page - 1) * 10 + 1
        local endIdx = page * 10
        
        for i = startIdx, endIdx do
            local w = weapons[i]
            local specType = w.isShotgun and "Yayılı" or string.format("%d Hasar", w.damage)
            menuHtml = menuHtml .. string.format("<a href='event:sel_wp_%d'><font size='10' color='#FFFFFF'><b>%d. %s (%s)</b></font></a><br>", i, i, w.name, specType)
        end
        
        menuHtml = menuHtml .. "</p><hr><p align='center'>"
        
        if page > 1 then
            menuHtml = menuHtml .. "<a href='event:prev_page'><font size='11' color='#00E5FF'><b>&lt;- Geri</b></font></a>  "
        end
        if page < 5 then
            menuHtml = menuHtml .. "  <a href='event:next_page'><font size='11' color='#00E5FF'><b>İleri -&gt;</b></font></a>"
        end
        menuHtml = menuHtml .. "</p>"
        
        ui.addTextArea(uiIds.weaponMenu, menuHtml, name, 250, 75, 300, 290, 0x1c0d0d, 0x0c0505, 0.95, true)
    end)
end

local function drawMapNumber()
    ui.addTextArea(uiIds.mapNumber, string.format("<p align='center'><font size='70' color='#5566aa' face='Impact'>%d</font></p>", game.currentMapIndex), nil, 300, 40, 200, 100, 0, 0, 0.0, true)
end

local function checkRoundEnd()
    if not game.started or game.roundEndTime > 0 then return end
    
    local alivePlayers = {}
    local totalPlayers = 0
    
    for pName, pData in pairs(game.playerData) do
        totalPlayers = totalPlayers + 1
        if pData.selected and pData.lives > 0 then
            table.insert(alivePlayers, pName)
        end
    end
    
    if totalPlayers <= 1 then
        return
    end

    if #alivePlayers <= 1 then
        local winnerName = alivePlayers[1] or "Bilinmeyen Kahraman"
        game.roundEndTime = os.time() + 5000
        
        local bannerHtml = string.format([[
<p align='center'><font size='22' face='Lucida Console' color='#FFD700'><b>🏆 TUR BİTTİ! 🏆</b></font><br>
<font size='14' color='#FFFFFF'>Kazanan: <b>%s</b><br>Sıradaki haritaya geçiliyor...</font></p>
        ]], winnerName)
        ui.addTextArea(uiIds.roundBanner, bannerHtml, nil, 200, 130, 400, 100, 0x111111, 0x000000, 0.9, true)
        tfm.exec.chatMessage("<VP>[Savaş] Tur sona erdi! Kazanan: " .. winnerName .. "</VP>", nil)
    end
end

local function loadNextMap()
    runSafe(function()
        ui.removeTextArea(uiIds.roundBanner, nil)
        game.roundEndTime = 0
        game.bullets = {}
        game.respawnQueue = {}
        
        for pName in pairs(game.playerData) do
            local pId = getPlayerUiId(pName)
            ui.removeTextArea(pId + 1, nil)
            ui.removeTextArea(pId + 2, pName)
        end
        
        game.currentMapIndex = (game.currentMapIndex % #maps) + 1
        tfm.exec.newGame(maps[game.currentMapIndex])
        drawMapNumber()
        
        for pName, pData in pairs(game.playerData) do
            pData.hp = 100
            pData.lives = 3
            pData.selected = false
            tfm.exec.killPlayer(pName)
            drawWeaponSelection(pName, 1)
        end
    end)
end

function eventNewPlayer(name)
    runSafe(function()
        game.playerData[name] = { hp = 100, lives = 3, weapon = 1, lastFire = 0, kills = 0, selected = false, ammo = 12, reloading = 0, weaponPage = 1 }
        tfm.exec.bindKeyboard(name, 32, true, true)
        tfm.exec.bindKeyboard(name, 72, true, true)
        tfm.exec.setNameColor(name, 0xFFFFFF)
        drawHelpButton(name)
        drawMapNumber()
        if not game.started then
            drawMenu(name)
        else
            drawWeaponSelection(name, 1)
        end
    end)
end

function eventPlayerLeft(name)
    runSafe(function()
        game.playerData[name] = nil
        game.respawnQueue[name] = nil
        local pId = getPlayerUiId(name)
        ui.removeTextArea(pId + 1, nil)
        ui.removeTextArea(pId + 2, name)
        checkRoundEnd()
    end)
end

function eventPlayerDied(name)
    runSafe(function()
        if not game.started then return end
        
        local data = game.playerData[name]
        if data and data.selected then
            data.lives = data.lives - 1
            updateHUD(name)
            
            local pId = getPlayerUiId(name)
            ui.removeTextArea(pId + 1, nil)
            ui.removeTextArea(pId + 2, name)
            
            local totalPlayers = 0
            for _ in pairs(game.playerData) do totalPlayers = totalPlayers + 1 end
            
            if data.lives > 0 or totalPlayers <= 1 then
                game.respawnQueue[name] = os.time() + 4000
                tfm.exec.chatMessage("<R>[Can] Kalan can hakkınız: " .. data.lives .. ". 4 saniye sonra canlanacaksınız.</R>", name)
            else
                tfm.exec.chatMessage("<R>[Elendin] Tüm can haklarınız bitti! Kalanları izliyorsunuz.</R>", name)
                checkRoundEnd()
            end
        end
    end)
end

function eventPlayerRespawn(name)
    runSafe(function()
        local data = game.playerData[name]
        if data then
            data.hp = 100
            data.ammo = weapons[data.weapon].clipSize
            data.reloading = 0
            updateHUD(name)
            local spawnX = math.random(100, 700)
            tfm.exec.movePlayer(name, spawnX, 340, false, 0, 0, false)
        end
    end)
end

function eventTextAreaCallback(id, name, callback)
    runSafe(function()
        local data = game.playerData[name]
        if not data then return end
        
        if callback == "show_help" then
            drawHelpPanel(name)
        elseif callback == "close_help" then
            removeHelpPanel(name)
        elseif callback == "start_game" then
            ui.removeTextArea(uiIds.menu, name)
            drawWeaponSelection(name, 1)
            game.started = true
        
        -- Pagination events
        elseif callback == "prev_page" then
            drawWeaponSelection(name, data.weaponPage - 1)
        elseif callback == "next_page" then
            drawWeaponSelection(name, data.weaponPage + 1)
            
        -- Weapon selection handler
        elseif callback:sub(1, 7) == "sel_wp_" then
            local wIdx = tonumber(callback:sub(8))
            if wIdx and weapons[wIdx] then
                data.weapon = wIdx
                data.selected = true
                data.lives = 3
                data.hp = 100
                data.ammo = weapons[wIdx].clipSize
                data.reloading = 0
                ui.removeTextArea(uiIds.weaponMenu, name)
                tfm.exec.respawnPlayer(name)
                updateHUD(name)
            end
        end
    end)
end

function eventKeyboard(name, key, down, x, y)
    runSafe(function()
        if key == 72 then
            if playerHelp[name] then
                removeHelpPanel(name)
            else
                drawHelpPanel(name)
            end
            return
        end

        if not game.started then return end
        local p = tfm.get.room.playerList[name]
        local data = game.playerData[name]
        if not p or p.isDead or not data or not data.selected or data.lives <= 0 then return end

        if key == 32 then
            local now = os.time()
            local w = weapons[data.weapon]
            
            if now < data.reloading then return end
            
            if now - data.lastFire >= w.cooldown then
                data.lastFire = now
                
                data.ammo = data.ammo - 1
                if data.ammo <= 0 then
                    data.reloading = now + w.reloadTime
                end
                updateHUD(name)
                
                local dir = p.isFacingRight and 1 or -1
                local startX = p.isFacingRight and x + 22 or x - 22
                local startY = y - 5
                
                if w.isShotgun then
                    for angle = -12, 12, 12 do
                        local rad = math.rad(angle)
                        local vx = dir * w.speed * math.cos(rad)
                        local vy = w.speed * math.sin(rad)
                        table.insert(game.bullets, {
                            owner = name,
                            x = startX,
                            y = startY,
                            oldX = startX,
                            oldY = startY,
                            vx = vx,
                            vy = vy,
                            damage = w.damage,
                            pType = w.pType
                        })
                    end
                else
                    local spreadVal = w.spread > 0 and math.random(-w.spread, w.spread) or 0
                    local vx = dir * w.speed
                    local vy = spreadVal
                    table.insert(game.bullets, {
                        owner = name,
                        x = startX,
                        y = startY,
                        oldX = startX,
                        oldY = startY,
                        vx = vx,
                        vy = vy,
                        damage = w.damage,
                        pType = w.pType
                    })
                end
                
                tfm.exec.displayParticle(3, startX, startY, 0, 0, 0, 0, nil)
            end
        end
    end)
end

function eventLoop(time, timeLeft)
    runSafe(function()
        if not game.started then return end

        local now = os.time()
        
        -- Handle Map Transition Timer
        if game.roundEndTime > 0 then
            if now >= game.roundEndTime then
                loadNextMap()
            end
            return
        end

        -- Handle Respawns
        for pName, respawnTime in pairs(game.respawnQueue) do
            if now >= respawnTime then
                game.respawnQueue[pName] = nil
                tfm.exec.respawnPlayer(pName)
            end
        end

        -- Update Floating UI Elements
        for pName, pData in pairs(game.playerData) do
            local p = tfm.get.room.playerList[pName]
            local pId = getPlayerUiId(pName)
            
            if pData.reloading > 0 and now >= pData.reloading then
                pData.reloading = 0
                pData.ammo = weapons[pData.weapon].clipSize
                updateHUD(pName)
            end

            if p and not p.isDead and pData.selected and pData.lives > 0 then
                local hearts = ""
                for i = 1, pData.lives do hearts = hearts .. "❤️" end
                ui.addTextArea(pId + 1, "<p align='center'><font size='13'>" .. hearts .. "</font></p>", nil, p.x - 50, p.y - 35, 100, 20, 0, 0, 0.0, false)
                
                local aimText = p.isFacingRight and "<font color='#FF3D00'>.......................................⊕</font>" or "<font color='#FF3D00'>⊕.......................................</font>"
                local aimX = p.isFacingRight and p.x + 10 or p.x - 260
                ui.addTextArea(pId + 2, aimText, pName, aimX, p.y - 12, 250, 20, 0, 0, 0.0, false)
            else
                ui.removeTextArea(pId + 1, nil)
                ui.removeTextArea(pId + 2, pName)
            end
        end

        -- Move Bullets & Check Collisions
        for i = #game.bullets, 1, -1 do
            local b = game.bullets[i]
            b.oldX = b.x
            b.oldY = b.y
            b.x = b.x + b.vx
            b.y = b.y + b.vy
            
            local steps = 5
            for step = 1, steps do
                local px = b.oldX + (b.x - b.oldX) * (step / steps)
                local py = b.oldY + (b.y - b.oldY) * (step / steps)
                tfm.exec.displayParticle(b.pType, px, py, 0, 0, 0, 0, nil)
            end

            local hit = false
            local hitTarget = nil

            if b.x < 5 or b.x > 795 or b.y < 5 or b.y > 385 then
                hit = true
            else
                for pName, pData in pairs(game.playerData) do
                    local p = tfm.get.room.playerList[pName]
                    if p and not p.isDead and pName ~= b.owner and pData.selected and pData.lives > 0 then
                        local dx = p.x - b.x
                        local dy = p.y - b.y
                        if (dx*dx + dy*dy) <= 450 then
                            hit = true
                            hitTarget = pName
                            break
                        end
                    end
                end
            end

            if hit then
                if hitTarget then
                    local targetData = game.playerData[hitTarget]
                    if targetData then
                        targetData.hp = math.max(0, targetData.hp - b.damage)
                        tfm.exec.displayParticle(13, b.x, b.y, 0, 0, 0, 0, nil)
                        updateHUD(hitTarget)
                        
                        if targetData.hp <= 0 then
                            tfm.exec.killPlayer(hitTarget)
                            
                            local shooterData = game.playerData[b.owner]
                            if shooterData then
                                shooterData.kills = shooterData.kills + 1
                                updateHUD(b.owner)
                                tfm.exec.chatMessage("<VP>[Leş] " .. hitTarget .. " oyuncusunu yok ettiniz!</VP>", b.owner)
                            end
                            
                            tfm.exec.chatMessage("<R>" .. hitTarget .. " elendi! (Katil: " .. b.owner .. ")</R>", nil)
                            
                            for pName in pairs(game.playerData) do
                                updateHUD(pName)
                            end
                        end
                    end
                end
                table.remove(game.bullets, i)
            end
        end
    end)
end

tfm.exec.disableAutoShaman(true)
tfm.exec.disableAutoNewGame(true)

-- Load initial map
tfm.exec.newGame(maps[game.currentMapIndex])
drawMapNumber()

for name in pairs(tfm.get.room.playerList) do
    eventNewPlayer(name)
end
