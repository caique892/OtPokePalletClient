marketOffers = { -- Name/Description/Image/Cost/Promotion
[1] = {'Vip', '30 Days', 'vip', 15, false, 'Vip30'},
[2] = {'Vip', '60 Days', 'vip', 28, false, 'Vip60'},
[3] = {'Gender', 'Change Sex', 'changegender', 5, false, 'Sexy'},
[4] = {'Pokemon', 'Ditto', 'ditto', 25, false, 'Ditto'},
[5] = {'Pokemon', 'Shiny Ditto', 'shiny ditto', 60, false, 'ShinyDitto'},
[6] = {'Recovery X', 'Held Recovery', 'Recovery', 15, false, 'heldx'},
[7] = {'Recovery Y', 'Held Recovery', 'Recovery', 15, false, 'heldy'},

[8] = {'Bike', 'Bike', 'Bike', 5, false, 'Bike'},
[9] = {'Moto', 'Moto', 'Moto', 15, false, 'Moto'},
[10] = {'Sandboard', '1 Sandboard', 'Sandboard', 5, false, 'Sandboard'},
[11] = {'Snowboard', '1 Snowboard', 'Snowboard', 5, false, 'Snowboard'},

[12] = {'Shiny Charm', 'Shiny Charm (3d)', 'shinycharm', 10, false, 'Charm3'},
[13] = {'Shiny Charm', 'Shiny Charm (7d)', 'shinycharm', 20, false, 'Charm7'},

-------
[14] = {'Boss Charm', 'Boss Charm (3d)', 'bosscharm', 20, false, 'Boss3'},
[15] = {'Boss Charm', 'Boss Charm (7d)', 'bosscharm', 35, false, 'Boss7'},
--
[16] = {'Mega Charm', 'Mega Charm (3d)', 'megacharm', 35, false, 'Mega3'},
[17] = {'Mega Charm', 'Mega Charm (7d)', 'megacharm', 60, false, 'Mega7'},
-------

[18] = {'Memory', 'Ditto normal 2º(Slot)', 'MemoryDitto', 10, false, 'Memory'},
[19] = {'Memory', 'Ditto normal 3º(Slot)', 'MemoryDitto2', 30, false, 'Memory2'},
[20] = {'Memory', 'Shiny Ditto All(Slot)', 'MemoryShiny', 40, false, 'ShinyMemory'},
--// New's \\ --
[21] = {'Aura', 'Particle Aura', 'Particle', 10, false, 'Particle'},
[22] = {'premier', 'Premier Ball (100x)', 'premier', 15, false, 'premier'},

}

outfitsOffers = { -- Name/Description/Type/Head/Body/Legs/Feet/Cost/Promotion
--[1] = {'Sonic', 'Male', 3707, 0, 0, 0, 0, 10, false, 'outfit_3707'},
--[2] = {'Jack', 'Male', 2727, 0, 0, 0, 0, 10, false, 'outfit_2727'},
--[3] = {'Noiva', 'Female', 2728, 0, 0, 0, 0, 10, false, 'outfit_2728'},
--[4] = {'Duende', 'Male', 2742, 0, 0, 0, 0, 10, false, 'outfit_2742'},
--[5] = {'Duende', 'Female', 2743, 0, 0, 0, 0, 10, false, 'outfit_2743'},
--[6] = {'Hotdog', 'Male', 2776, 0, 0, 0, 0, 10, false, 'outfit_2776'},
--[7] = {'Smoker', 'Male', 2830, 0, 0, 0, 0, 15, false, 'outfit_2830'},
--[8] = {'Tashigi', 'Female', 2831, 0, 0, 0, 0, 15, false, 'outfit_2831'},
--[9] = {'Aokiji', 'Male', 2832, 0, 0, 0, 0, 15, false, 'outfit_2832'},
--[10] = {'Law', 'Male', 2833, 0, 0, 0, 0, 15, false, 'outfit_2833'},
--[11] = {'Alvida', 'Female', 2835, 0, 0, 0, 0, 15, false, 'outfit_2835'},
--[12] = {'Luffy', 'Male', 2847, 0, 0, 0, 0, 15, false, 'outfit_2847'},
--[13] = {'Zoro', 'Male', 2855, 0, 0, 0, 0, 15, false, 'outfit_2855'},
--[14] = {'Sanji', 'Male', 2857, 0, 0, 0, 0, 15, false, 'outfit_2857'},
--[15] = {'Itachi', 'Male', 2883, 0, 0, 0, 0, 15, false, 'outfit_2883'},
--[16] = {'Chun-li', 'Female', 2887, 0, 0, 0, 0, 10, false, 'outfit_2887'},
--[17] = {'Sasuke', 'Male', 2888, 0, 0, 0, 0, 15, false, 'outfit_2888'},
--[18] = {'Suigetsu', 'Male', 2889, 0, 0, 0, 0, 15, false, 'outfit_2889'},
--[19] = {'Pain', 'Male', 2890, 0, 0, 0, 0, 15, false, 'outfit_2890'},
--[20] = {'Tobi', 'Male', 2891, 0, 0, 0, 0, 15, false, 'outfit_2891'},
--[21] = {'Kisame', 'Male', 2892, 0, 0, 0, 0, 15, false, 'outfit_2892'},
--[22] = {'Kakashi', 'Male', 2894, 0, 0, 0, 0, 15, false, 'outfit_2894'},
--[23] = {'Slowpoke', 'Male', 2895, 0, 0, 0, 0, 10, false, 'outfit_2895'},
--[24] = {'Goku', 'Male', 3705, 0, 0, 0, 0, 20, false, 'outfit_3705'},
--[25] = {'Vegeta', 'Male', 3706, 0, 0, 0, 0, 20, false, 'outfit_3706'},
--[26] = {'Killer', 'Male', 3708, 0, 0, 0, 0, 20, false, 'outfit_3708'},
--[27] = {'Aldebaran', 'Male', 3709, 0, 0, 0, 0, 20, false, 'outfit_3709'},
--[28] = {'Aioros', 'Male', 3710, 0, 0, 0, 0, 20, false, 'outfit_3710'},
--[29] = {'Dhoko', 'Male', 3711, 0, 0, 0, 0, 20, false, 'outfit_3711'},
--[30] = {'Milo', 'Male', 3712, 0, 0, 0, 0, 20, false, 'outfit_3712'},
--[31] = {'Mascara da morte', 'Male', 3713, 0, 0, 0, 0, 20, false, 'outfit_3713'},
--[32] = {'Mu', 'Male', 3714, 0, 0, 0, 0, 20, false, 'outfit_3714'},
--[33] = {'Aioria', 'Male', 3715, 0, 0, 0, 0, 20, false, 'outfit_3715'},
--[34] = {'Camus', 'Male', 3716, 0, 0, 0, 0, 20, false, 'outfit_3716'},
--[35] = {'Saga', 'Male', 3717, 0, 0, 0, 0, 20, false, 'outfit_3717'},
--[36] = {'Shaka', 'Male', 3718, 0, 0, 0, 0, 20, false, 'outfit_3718'},
--[37] = {'Shura', 'Male', 3719, 0, 0, 0, 0, 20, false, 'outfit_3719'},
--[38] = {'Afrodite', 'Male', 3720, 0, 0, 0, 0, 20, false, 'outfit_3720'},
[1] = {'Miss Fortune', 'Female', 3737, 0, 0, 0, 0, 15, false, 'outfit_3737'},
[2] = {'Katara', 'Female', 3757, 0, 0, 0, 0, 15, false, 'outfit_3757'},
[3] = {'Toph', 'Female', 3759, 0, 0, 0, 0, 15, false, 'outfit_3759'},
[4] = {'Alerquina', 'Female', 3762, 0, 0, 0, 0, 20, false, 'outfit_3762'},
[5] = {'Bruxa', 'Female', 3763, 0, 0, 0, 0, 20, false, 'outfit_3763'},
[6] = {'Fiora Curtindo Verão', 'Female', 3775, 0, 0, 0, 0, 15, false, 'outfit_3775'},
[7] = {'Athena', 'Female', 3786, 0, 0, 0, 0, 15, false, 'outfit_3786'},
[8] = {'Marin', 'Female', 3787, 0, 0, 0, 0, 15, false, 'outfit_3787'},
[9] = {'Shina', 'Female', 3788, 0, 0, 0, 0, 15, false, 'outfit_3788'},
[10] = {'Tiffany', 'Female', 3825, 0, 0, 0, 0, 15, false, 'outfit_3825'},
[11] = {'[R] Treinadora', 'Female', 3829, 0, 0, 0, 0, 15, false, 'outfit_3829'},
[12] = {'[F] Venusaur Costume', 'Female', 3830, 0, 0, 0, 0, 15, false, 'outfit_3830'},
[13] = {'Android 18', 'Female', 3849, 0, 0, 0, 0, 15, false, 'outfit_3849'},
[14] = {'Android 18 (Super)', 'Female', 3862, 0, 0, 0, 0, 15, false, 'outfit_3862'},
[15] = {'Android 21', 'Female', 3863, 0, 0, 0, 0, 15, false, 'outfit_3863'},
[16] = {'Android 21 Full Power', 'Female', 3864, 0, 0, 0, 0, 15, false, 'outfit_3864'},
[17] = {'[F] Naganadel Costume', 'Female', 3867, 0, 0, 0, 0, 20, false, 'outfit_3867'},
[18] = {'[F] Ultimate Trainer', 'Female', 3869, 0, 0, 0, 0, 15, false, 'outfit_3869'},
[19] = {'[F] Porygon Costume', 'Female', 3881, 0, 0, 0, 0, 20, false, 'outfit_3881'},
[20] = {'[F] Punisher', 'Female', 3884, 0, 0, 0, 0, 15, false, 'outfit_3884'},
[21] = {'Deidara', 'Male', 3732, 0, 0, 0, 0, 15, false, 'outfit_3732'},
[22] = {'Eevee Costume', 'Male', 3746, 0, 0, 0, 0, 15, false, 'outfit_3746'},
[23] = {'Ace', 'Male', 3748, 0, 0, 0, 0, 15, false, 'outfit_3748'},
[24] = {'Zukko', 'Male', 3760, 0, 0, 0, 0, 15, false, 'outfit_3760'},
[25] = {'Graves Curtindo Verão', 'Male', 3776, 0, 0, 0, 0, 15, false, 'outfit_3776'},
[26] = {'Seiya', 'Male', 3790, 0, 0, 0, 0, 15, false, 'outfit_3790'},
[27] = {'Goku Ssj4', 'Male', 3797, 0, 0, 0, 0, 15, false, 'outfit_3797'},
[28] = {'Vegeta Ssj4', 'Male', 3832, 0, 0, 0, 0, 15, false, 'outfit_3832'},
[29] = {'Tai', 'Male', 3886, 0, 0, 0, 0, 15, false, 'outfit_3886'},
[30] = {'Zelda', 'Male', 3892, 0, 0, 0, 0, 15, false, 'outfit_3892'},
}

addonsOffers = { -- Name/Description/Type/Head/Body/Legs/Feet/Cost/Promotion

}

clansOffers = {
[1] = {'Clan', 'Gardestrike', 'gardestrike', false},
[2] = {'Clan', 'Ironhard', 'ironhard', false},
[3] = {'Clan', 'Malefic', 'malefic', false},
[4] = {'Clan', 'Naturia', 'naturia', false},
[5] = {'Clan', 'Orebound', 'orebound', false},
[6] = {'Clan', 'Psycraft', 'psycraft', false},
[7] = {'Clan', 'Raibolt', 'raibolt', false},
[8] = {'Clan', 'Seavell', 'seavell', false},
[9] = {'Clan', 'Volcanic', 'volcanic', false},
[10] = {'Clan', 'Wingeon', 'wingeon', false},
}

showEvent = nil
hideEvent = nil
clanWindow = nil

function init()
  connect(g_game, { onGameEnd = hide })
  connect(g_game, 'onTextMessage', onConfirmBought)

  shopWindow = g_ui.displayUI('shop', modules.game_interface.getRootPanel())
  shopButton = modules.client_topmenu.addRightGameButton('shopButton', tr('Emerald Shop'), '/images/topbuttons/emerald_shop', toggle)
  shopButton:setWidth(36)
  playerEmeralds = shopWindow:recursiveGetChildById('emeraldsLabel')
  offerSearch = shopWindow:recursiveGetChildById('searchText')
  shopButton:setOn(false)
  shopWindow:hide()

  shopTabBar = shopWindow:recursiveGetChildById('shopTabBar')
  shopTabBar:setContentWidget(shopWindow:recursiveGetChildById('shopTabContent'))
  shopTabBar.onTabChange = onTabChange

  marketPanel = g_ui.loadUI('market')
  shopTabBar:addTab('', marketPanel, '/images/game/shop/market')

  outfitsPanel = g_ui.loadUI('outfits')
  shopTabBar:addTab('', outfitsPanel, '/images/game/shop/outfits')

  clansPanel = g_ui.loadUI('clans')
  shopTabBar:addTab('', clansPanel, '/images/game/shop/clans')

end

function terminate()
  disconnect(g_game, { onGameEnd = hide })
  disconnect(g_game, 'onTextMessage', onConfirmBought)

  shopWindow:destroy()
end

function show()
  g_effects.cancelFade(shopWindow)
  removeEvent(hideEvent)
  if not showEvent then
    showEvent = addEvent(function() g_effects.fadeIn(shopWindow, 250) end)
  end
  shopButton:setOn(true)
  shopWindow:raise()
  shopWindow:focus()
  shopWindow:show()
  playerEmeralds:setText(g_game.getLocalPlayer():getItemsCount(3028))
  setOffers(marketPanel)
  setOffers(outfitsPanel)
  setOffers(clansPanel)
end

function hide()
  shopButton:setOn(false)
  hideEvent = scheduleEvent(function() shopWindow:hide() end, 250)
  addEvent(function() g_effects.fadeOut(shopWindow, 250) end)
  showEvent = nil
end

function toggle()
  if shopButton:isOn() then
    shopButton:setOn(false)
    hide()
  else
    shopButton:setOn(true)
    show()
  end
end

function onConfirmBought(mode, text)
  if not getCodeBuffer(mode, 163, text) then return end
  local buffer = getCodeBuffer(mode, 163, text)
  if string.find(buffer, 'manyPoints') then
    return displayInfoBox('Emerald Shop', tr('You already have many points.'))
  elseif string.find(buffer, 'clanName') then
    local clan = string.explode(buffer, '|')[2]
    return displayInfoBox('Emerald Shop', tr('You already belong to the clan %s.', doCorrectString(clan)))
  elseif string.find(buffer, 'clanRank') then
    local rank = string.explode(buffer, '|')[2]
    return displayInfoBox('Emerald Shop', tr('You must be at least rank %s.', rank))
  elseif string.find(buffer, 'clanLevel') then
    local level = string.explode(buffer, '|')[2]
    local clan = string.explode(buffer, '|')[3]
    local rank = string.explode(buffer, '|')[4]
    return displayInfoBox('Emerald Shop', tr('You need to be level %s to switch to %s rank %s.', level, doCorrectString(clan), rank))
  end
  local name = string.explode(buffer, '|')[1]
  local description = string.explode(buffer, '|')[2]
  playerEmeralds:setText(g_game.getLocalPlayer():getItemsCount(3028))
  displayInfoBox('Emerald Shop', tr('You bought %s (%s)!', name, description))
end

function onBuyMarket(buyId)
  if g_game.getLocalPlayer():getItemsCount(3028) >= marketOffers[buyId][4] then
    if not confirmWindow then
      local yesCallback = function()		
		g_game.talk('/shop '..marketOffers[buyId][6])
        if confirmWindow then
          confirmWindow:destroy()
          confirmWindow = nil
        end
      end

      local noCallback = function()
        confirmWindow:destroy()
        confirmWindow = nil
      end
      confirmWindow = displayGeneralBox('Emerald Shop', tr('Are you sure you want to buy %s (%s)?', marketOffers[buyId][1], marketOffers[buyId][2]), {
        { text=tr('Yes'), callback=yesCallback },
        { text=tr('No'), callback=noCallback },
      anchor=AnchorHorizontalCenter}, yesCallback, noCallback)
    else
      confirmWindow:destroy()
      confirmWindow = nil
      onBuyMarket(buyId)
    end
  else
    displayInfoBox('Emerald Shop', tr('You don\'t have enough emeralds.'))
  end
end

function onBuyOutfit(buyId)
  if g_game.getLocalPlayer():getItemsCount(3028) >= outfitsOffers[buyId][8] then
    if not confirmWindow then
      local yesCallback = function()		
		g_game.talk('/shop '..outfitsOffers[buyId][10])
        if confirmWindow then
          confirmWindow:destroy()
          confirmWindow = nil
        end
      end

      local noCallback = function()
        confirmWindow:destroy()
        confirmWindow = nil
      end
      confirmWindow = displayGeneralBox('Emerald Shop', tr('Are you sure you want to buy %s (%s)?', outfitsOffers[buyId][1], outfitsOffers[buyId][2]), {
        { text=tr('Yes'), callback=yesCallback },
        { text=tr('No'), callback=noCallback },
      anchor=AnchorHorizontalCenter}, yesCallback, noCallback)
    else
      confirmWindow:destroy()
      confirmWindow = nil
      onBuyOutfit(buyId)
    end
  else
    displayInfoBox('Emerald Shop', tr('You don\'t have enough emeralds.'))
  end
end

function onBuyClan(clanId)
  destroyClanWindow()
  clanWindow = g_ui.createWidget('ClanWindow', rootWidget)
  local callback = function()
    local cost = string.explode(clanWindow:getChildById('prize'):getText(), ' Emeralds')[1]
    if g_game.getLocalPlayer():getItemsCount(3028) >= tonumber(cost) then
   --   sendInfoToServer(163, clansOffers[clanId][1]:lower()..'|'..clansOffers[clanId][2]..'|'..cost)
	  g_game.talk('/clan '..clansOffers[clanId][2]..''..cost)
      destroyClanWindow()
    else
      displayInfoBox('Emerald Shop', tr('You don\'t have enough emeralds.'))
    end
  end
  clanWindow:setText(clansOffers[clanId][2])
  clanWindow:getChildById('okButton').onClick = callback
  clanWindow.onEnter = callback
end

function destroyClanWindow()
  if clanWindow then
    clanWindow:destroy()
    clanWindow = nil
  end
end

function onTabChange(tabBar, tab)
  offerSearch:clearText()
end

function searchOffer()
  local panel = shopTabBar:getCurrentTabPanel():getChildByIndex(1)
  local searchFilter = offerSearch:getText():lower()
  for i = 1, panel:getChildCount() do
    local button = panel:getChildByIndex(i)
    local searchCondition = (searchFilter == '') or (searchFilter ~= '' and (string.find(button.name:lower(), searchFilter) ~= nil or string.find(button.description:lower(), searchFilter) ~= nil))
    button:setVisible(searchCondition)
  end
end

function setOffers(panel)
  local offersPanel = panel:getChildByIndex(1)
  if offersPanel:getId() == 'shopMarket' then
    for i = 1, #marketOffers do
      local widget = offersPanel:getChildByIndex(i)
      widget:setId(i)
      widget:getChildByIndex(1):setText(marketOffers[i][1])
      widget:getChildByIndex(2):setText(marketOffers[i][2])
      widget:getChildByIndex(3):setImageSource('/images/game/shop/market/'..marketOffers[i][3])
      widget:getChildByIndex(4):setText(marketOffers[i][4]..' Emeralds')
      widget.name = marketOffers[i][1]
      widget.description = marketOffers[i][2]
      widget.sale = marketOffers[i][5]
      if widget.sale then
        widget:getChildByIndex(1):setColor('#FF2000')
        widget:getChildByIndex(2):setColor('#FF2000')
        widget:getChildByIndex(3):setIconColor('white')
        widget:getChildByIndex(4):setColor('#CC2000')
      else
        widget:getChildByIndex(1):setColor('white')
        widget:getChildByIndex(2):setColor('white')
        widget:getChildByIndex(3):setIconColor('alpha')
        widget:getChildByIndex(4):setColor('white')
      end
    end
  elseif offersPanel:getId() == 'shopOutfits' then
    for i = 1, #outfitsOffers do
      local widget = offersPanel:getChildByIndex(i)
      local player = g_game.getLocalPlayer()
      local outfit = player:getOutfit()
      outfit.type = outfitsOffers[i][3]
      outfit.head = outfitsOffers[i][4]
      outfit.body = outfitsOffers[i][5]
      outfit.legs = outfitsOffers[i][6]
      outfit.feet = outfitsOffers[i][7]
      widget:setId(i)
      widget:getChildByIndex(1):setText(outfitsOffers[i][1])
      widget:getChildByIndex(2):setText(outfitsOffers[i][2])
      widget:getChildByIndex(3):setCreature()
      widget:getChildByIndex(3):setOutfit(outfit)
      widget:getChildByIndex(4):setText(outfitsOffers[i][8]..' Emeralds')
      widget.name = outfitsOffers[i][1]
      widget.description = outfitsOffers[i][2]
      widget.sale = outfitsOffers[i][9]
      if widget.sale then
        widget:getChildByIndex(1):setColor('#FF2000')
        widget:getChildByIndex(2):setColor('#FF2000')
        widget:getChildByIndex(3):getChildByIndex(1):setIconColor('white')
        widget:getChildByIndex(4):setColor('#CC2000')
      else
        widget:getChildByIndex(1):setColor('white')
        widget:getChildByIndex(2):setColor('white')
        widget:getChildByIndex(3):getChildByIndex(1):setIconColor('alpha')
        widget:getChildByIndex(4):setColor('white')
      end
    end
  elseif offersPanel:getId() == 'shopClans' then
    for i = 1, #clansOffers do
      local widget = offersPanel:getChildByIndex(i)
      widget:setId(i)
      widget:setImageSource('/images/game/shop/clans/'..clansOffers[i][3])
      widget.name = clansOffers[i][1]
      widget.description = clansOffers[i][2]
      widget.sale = clansOffers[i][4]
    end
  end
end
