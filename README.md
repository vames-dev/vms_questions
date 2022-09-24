# vms_questions

## How to use:
```lua
local question = exports['vms_questions']:Question('HEADER', "MESSAGE")
Citizen.Await(question)
if question == "Y" then
	print("Y")
elseif question == "N" then
	print("N")
end
```
```lua
exports["vms_questions"]:Notification("HEADER", "MESSAGE", TIMEOUT)
```
