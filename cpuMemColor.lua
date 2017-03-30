-- Return RGB values for CPU and RAM
-- Green @ < 20
-- White @ 20-60
-- Orange @ 60-80
-- Red @ 80-100

val = tonumber(arg[1])

if val < 20 then
    hex = "33F94A"
elseif val >= 20 and val < 60 then
    hex = "FFFFFF"
elseif val >= 60 and val < 80 then
    hex = "FF804A"
elseif val >= 80 then
    hex = "FF0000"
end

print("${color " .. hex .. "}")
