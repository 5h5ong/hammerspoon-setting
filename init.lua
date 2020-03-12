-- vscode vim 사용 시 한글 -> 영어 전환
local function checkKorean()
  local input_source = hs.keycodes.currentSourceID()
  local inputEnglish = "com.apple.keylayout.ABC"

  print(input_source);

  if not (input_source == inputEnglish) then
    print("Korean")
    hs.keycodes.currentSourceID(inputEnglish)
  end 

  hs.eventtap.keyStroke({}, "escape")
end

-- vim에서 ctrl + [ 를 눌렀을 떄 한글이 설정되어 있다면 영어로 바꾸고 Normal 모드로 진입하게 해줌.
hs.hotkey.bind({'ctrl'}, 33, checkKorean)