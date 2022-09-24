local canShowNotify = true
exports('TopNotification', function(header, message, timeout)
  if not timeout then
    timeout = 2200
  end
  local timeout = tonumber(timeout)
  if canShowNotify then
    canShowNotify = false
    SendNUIMessage({
      action = 'topnotification', 
      show = true,
      header = header,
      message = message
    })
    SetTimeout(timeout, function()
      SendNUIMessage({action = 'topnotification', show = false})
      canShowNotify = true
    end)
  end
end)

local showedQuestion = false
exports('Question', function(Header, Message)
  if not showedQuestion then
    showedQuestion = true
    SendNUIMessage({
      action = 'question', 
      show = true,
      header = Header, 
      message = Message
    })
    while showedQuestion do
      if IsControlJustPressed(0,246) then
        SendNUIMessage({action = 'question', show = false})
        showedQuestion = false
        return 'Y'
      end
      if IsControlJustPressed(0,249) then
        SendNUIMessage({action = 'question', show = false})
        showedQuestion = false
        return 'N'
      end
      Citizen.Wait(4)
    end
  else
    return
  end
end)
