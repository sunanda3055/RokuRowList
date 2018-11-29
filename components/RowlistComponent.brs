sub init()
    print "INSIDE COMPONENRT"
    m.top.setFocus(true)
    'm.layoutGroup1 = m.top.findNode("lg1")
    m.bgRectangle = m.top.findNode("bgRectangle")
    m.label1 = m.top.findNode("label1")
          
End sub

sub onItemContentChanged()
    print "CONTENT"; m.top.itemContent.title
    m.label1.text = m.top.itemContent.title
End sub


