AddEventHandler("chatMessage", function(source, color, message)
    local src = source
    args = stringsplit(message, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
        TriggerClientEvent('chat:addMessage', src, {
            template = '<div class="chat-message server"><b>SYSTEM:</b> Invalid usage. For a list of all commands, check forums.</div>',
            args = { message }
        })
    else
        TriggerClientEvent('chat:addMessage', src, {
            template = '<div class="chat-message server"><b>SYSTEM:</b> use /ooc or /twt .</div>',
            args = { message }
        })
    end
end)

RegisterServerEvent('chat:server:ServerPSA')
AddEventHandler('chat:server:ServerPSA', function(message)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message server">SERVER: {0}</div>',
        args = { message }
    })
    CancelEvent()
end)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end