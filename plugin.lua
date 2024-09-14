local preprocess = require("LuaPreprocess/preprocess").processString

function OnSetText(_, text)
  local success, processed_text = pcall(preprocess, {code = text})
  if not success then
    return
  end
  if not processed_text then
    return
  end
  return {{start = 1, finish = text:len(), text = processed_text}}
end
