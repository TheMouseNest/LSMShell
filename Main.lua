local LSM = LibStub("LibSharedMedia-3.0")

--[[
# EXAMPLES:
  ## Highlight texture
  LSM:Register("platynator/sizedtexture", "Your name", {
    file = "Interface/AddOns/LSMShell/Assets/testing.png", -- asset location
    width = 15.625, -- Not required to be this value, but 15.625 is the default bar height
    height = 125, -- Not required to be this value, but 125 is the default bar width
  })

  ## Bar background
  LSM:Register(LSM.MediaType.STATUSBAR,"Your name", "Interface/AddOns/LSMShell/Assets/testing.png")

  ## Border/resizable asset
  LSM:Register("nineslice", "Your nineslice name", {
    file = "Interface/AddOns/LSMShell/Assets/testing.png", -- Location of asset
    previewHeight = 10, -- height/width used for aspect ratio of preview
    preivewWidth = 10,
    padding = {left = 2, right = 2, top = 2, bottom = 2}, -- Padding (expanded area the texture should cover to make sure the nineslice wraps around the object properly
    margins = {left = 15, right = 15, top = 15, bottom = 15}, -- SetTextureSliceMargins parameters
    scaleModifier = 0.35, -- Scale factor to apply to the texture to modify the border width without having a tiny/large texture
    mode = Enum.UITextureSliceMode.Stretched, -- SetTextureSliceMode parameters
  })

  ## Border final definition with mask to ensure texture doesn't overflow, use supplied if you don't have one
  LSM:Register("ninesliceborder", "Your name", {
    nineslice = "Your nineslice name",
    mask = {
      file = "Interface/AddOns/Platynator/Assets/Special/white.png", -- Location of mask asset
      margins = {left = 1, right = 1, top = 1, bottom = 1}, -- TextureSliceMargins parameters
    },
  })
--]]

-- Add stuff below this line
