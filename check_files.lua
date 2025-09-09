-- Проверка существования всех необходимых файлов
print("=== Проверка файлов ===")

local required_files = {
    "assets.json",
    "library_main.lua",
    "library_theme.lua", 
    "library_save.lua",
    "chat_spam.lua",
    "DePixelKlein.ttf",
    "ProggyClean.ttf"
}

local optional_files = {
    "grad90r.png",
    "grad90l.png",
    "grad180u.png",
    "grad180d.png",
    "grad45lrd.png",
    "grad45lru.png",
    "grad45rld.png",
    "grad45rlu.png"
}

print("Обязательные файлы:")
for _, file in ipairs(required_files) do
    if isfile(file) then
        print("✅ " .. file)
    else
        print("❌ " .. file .. " - НЕ НАЙДЕН!")
    end
end

print("\nДополнительные файлы:")
for _, file in ipairs(optional_files) do
    if isfile(file) then
        print("✅ " .. file)
    else
        print("⚠️ " .. file .. " - не найден (не критично)")
    end
end

print("\n=== Проверка завершена ===")
