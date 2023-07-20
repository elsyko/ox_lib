---@alias NotificationPosition 'top' | 'top-right' | 'top-left' | 'bottom' | 'bottom-right' | 'bottom-left' | 'center-right' | 'center-left'
<<<<<<< HEAD
---@alias NotificationType 'inform' | 'error' | 'success'
=======
---@alias NotificationType 'info' | 'warning' | 'success' | 'error'
>>>>>>> upstream/master

---@class NotifyProps
---@field id? string
---@field title? string
---@field description? string
---@field duration? number
---@field position? NotificationPosition
---@field type? NotificationType
---@field style? { [string]: any }
---@field icon? string | {[1]: IconProp, [2]: string};
---@field iconColor? string;

---@param data NotifyProps
function lib.notify(data)
    SendNUIMessage({
        action = 'notify',
        data = data
    })
end

---@class DefaultNotifyProps
---@field title? string
---@field description? string
---@field duration? number
---@field position? NotificationPosition
---@field status? 'info' | 'warning' | 'success' | 'error'
---@field id? number

---@param data DefaultNotifyProps
function lib.defaultNotify(data)
    -- Backwards compat for v3 
    data.type = data.status
<<<<<<< HEAD
    if data.type == 'info' or data.type == 'warning' then data.type = 'inform' end
=======
    if data.type == 'inform' then data.type = 'info' end
>>>>>>> upstream/master
    return lib.notify(data)
end

RegisterNetEvent('ox_lib:notify', lib.notify)
RegisterNetEvent('ox_lib:defaultNotify', lib.defaultNotify)