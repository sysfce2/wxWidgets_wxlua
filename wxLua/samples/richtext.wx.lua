    local frame = wx.wxFrame(wx.NULL, wx.wxID_ANY, "wxRichTextCtrl Example", wx.wxDefaultPosition, wx.wxSize(400, 400), bit32.bor(wx.wxDEFAULT_FRAME_STYLE, wx.wxFULL_REPAINT_ON_RESIZE))
    local r = wx.wxRichTextCtrl(frame, wx.wxID_ANY, "", wx.wxPoint(0, 0), wx.wxSize(400, 400), wx.wxVSCROLL + wx.wxHSCROLL + wx.wxNO_BORDER + wx.wxWANTS_CHARS)
    local textFont = wx.wxFont(12, wx.wxROMAN, wx.wxNORMAL, wx.wxNORMAL)
    local boldFont = wx.wxFont(12, wx.wxROMAN, wx.wxNORMAL, wx.wxBOLD)
    local italicFont = wx.wxFont(12, wx.wxROMAN, wx.wxITALIC, wx.wxNORMAL)
    local font = wx.wxFont(12, wx.wxROMAN, wx.wxNORMAL, wx.wxNORMAL)
    r:SetFont(font)
    r:BeginSuppressUndo()
    r:BeginParagraphSpacing(0, 20)
    r:BeginAlignment(wx.wxTEXT_ALIGNMENT_CENTRE)
    r:BeginBold()
    r:BeginFontSize(14)
    r:WriteText("Welcome to wxRichTextCtrl, a wxWidgets control for editing and presenting styled text and images")
    r:EndFontSize()
    r:Newline()
    r:BeginItalic()
    r:WriteText("by Julian Smart")
    r:EndItalic()
    r:EndBold()
    r:Newline()
    r:WriteImage(wx.wxBitmap("image/horse.xpm"), wx.wxBITMAP_TYPE_XPM)
    r:EndAlignment()
    r:Newline()
    r:Newline()
    r:WriteText("What can you do with this thing? ")
    r:WriteImage(wx.wxBitmap("image/smile.xpm"), wx.wxBITMAP_TYPE_XPM)
    r:WriteText(" Well, you can change text ")
    r:BeginTextColour(wx.wxColour(255, 0, 0))
    r:WriteText("colour, like this red bit.")
    r:EndTextColour()
    r:BeginTextColour(wx.wxColour(0, 0, 255))
    r:WriteText(" And this blue bit.")
    r:EndTextColour()
    r:WriteText(" Naturally you can make things ")
    r:BeginBold()
    r:WriteText("bold ")
    r:EndBold()
    r:BeginItalic()
    r:WriteText("or italic ")
    r:EndItalic()
    r:BeginUnderline()
    r:WriteText("or underlined.")
    r:EndUnderline()
    local pos1 = r:GetLastPosition()
    local attr = wx.wxRichTextAttr()
    r:WriteText("\nThis is superscript,")
    attr:SetTextEffects(wx.wxTEXT_ATTR_EFFECT_SUPERSCRIPT)
    attr:SetFlags(wx.wxTEXT_ATTR_EFFECTS)
    attr:SetTextEffectFlags(wx.wxTEXT_ATTR_EFFECT_SUPERSCRIPT)
    r:SetStyle(pos1 + 9, pos1 + 20, attr)
    pos1 = r:GetLastPosition()
    r:WriteText(" and this is subscript.\n")
    attr = wx.wxRichTextAttr()
    attr:SetTextEffects(wx.wxTEXT_ATTR_EFFECT_SUBSCRIPT)
    attr:SetFlags(wx.wxTEXT_ATTR_EFFECTS)
    attr:SetTextEffectFlags(wx.wxTEXT_ATTR_EFFECT_SUBSCRIPT)
    r:SetStyle(pos1 + 13, pos1 + 22, attr)
    r:BeginFontSize(14)
    r:WriteText(" Different font sizes on the same line is allowed, too.")
    r:EndFontSize()
    r:WriteText(" Next we'll show an indented paragraph.")
    r:BeginLeftIndent(60)
    r:Newline()
    r:WriteText("Indented paragraph.")
    r:EndLeftIndent()
    r:Newline()
    r:WriteText("Next, we'll show a first-line indent, achieved using BeginLeftIndent(100, -40).")
    r:BeginLeftIndent(100, -40)
    r:Newline()
    r:WriteText("It was in January, the most down-trodden month of an Edinburgh winter.")
    r:EndLeftIndent()
    r:Newline()
    r:WriteText("Numbered bullets are possible, again using subindents:")
    r:BeginNumberedBullet(1, 100, 60)
    r:Newline()
    r:WriteText("This is my first item. Note that wxRichTextCtrl doesn't automatically do numbering, but this will be added later.")
    r:EndNumberedBullet()
    r:BeginNumberedBullet(2, 100, 60)
    r:Newline()
    r:WriteText("This is my second item.")
    r:EndNumberedBullet()
    r:Newline()
    r:WriteText("The following paragraph is right-indented:")
    r:BeginRightIndent(200)
    r:Newline()
    r:WriteText("It was in January, the most down-trodden month of an Edinburgh winter. An attractive woman came into the cafe, which is nothing remarkable.")
    r:EndRightIndent()
    r:Newline()
    tabs = {400, 600, 800, 1000}
    attr = wx.wxTextAttr()
    attr:SetFlags(wx.wxTEXT_ATTR_TABS)
    attr:SetTabs(tabs)
    r:SetDefaultStyle(attr)
    r:WriteText("This line contains tabs:\tFirst tab\tSecond tab\tThird tab")
    r:Newline()
    r:WriteText("Other notable features of wxRichTextCtrl include:")
    r:Newline()
    r:BeginSymbolBullet("*", 100, 60)
    r:WriteText("Compatibility with wxTextCtrl API\n")
    r:EndSymbolBullet()
    r:WriteText("Note: this sample content was generated programmatically from within the MyFrame constructor in the demo. The images were loaded from inline XPMs. Enjoy wxRichTextCtrl!")
    r:EndSuppressUndo()
    frame:Show()

