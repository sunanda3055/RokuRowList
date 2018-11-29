' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub init()
    m.top.SetFocus(true)
    m.rowListArray = getRowListData()
    print type(getRowListData())
    m.moviesRowList = m.top.findNode("movies")
    m.moviesRowList.itemComponentName = "RowlistComponent"
    m.moviesRowList.numRows = 3
    m.moviesRowList.itemSize = [1000,300]
    m.moviesRowList.rowHeights = 300
    m.moviesRowList.rowItemSize = [300, 300]
    m.moviesRowList.itemSpacing = [ 0, 80 ]
    m.moviesRowList.rowItemSpacing = [ [20, 0] ]
    m.moviesRowList.rowFocusAnimationStyle = "floatingFocus"
   ' m.moviesRowList.rowLabelOffset = [ [0, 30] ]
   ' m.moviesRowList.showRowLabel = [true,true,true]
   ' m.moviesRowList.rowLabelColor="0xFFFF00ff"
    m.moviesRowList.visible = true
    m.moviesRowList.SetFocus(true)
    m.moviesRowList.observeField("rowItemFocused","onRowItemFocused")
    m.moviesRowList.observeField("rowItemSelected","onRowItemSelected")
End sub


function GetRowListContent()
   parentContentNode = CreateObject("roSGNode", "ContentNode")
   'row.rowTitle = "RELATED"
   for each item in m.rowListArray
        row = parentContentNode.CreateChild("ContentNode")
        'rowItem = parentContentNode.CreateChild("RowListComponentData")
        for index = 0 to item.data.count()-1
             'print item.data[index].title
             rowItem = row.CreateChild("ContentNode")
             rowItem.title = item.data[index].title
        end for
   end for
   return parentContentNode
End function


function onRowItemFocused()
    print "rowItemFocused : ", m.moviesRowList.rowItemFocused
    
End function


function onRowItemSelected()
    print "rowItemSelected : ", m.moviesRowList.rowItemSelected
End function


function onKeyEvent(key as String, press as Boolean) as Boolean
    'if press
        if key = "OK"
            'print GetRowListContent()
            m.moviesRowList.content = GetRowListContent()
            m.moviesRowList.setFocus(true)
        end if
    'end if 
end function

function getRowListData()
    return [
                 {
                        "data": [
                {
                    
                    "title": "Suicide bomber kills more than 50 at religious event in Kabul",
                   
                },
                {
                    
                    "title": "Renault board refrains from ousting Carlos Ghosn",
                    
                },
                {
                    "title": "Meet the lucky Turkeys of thanksgiving",
                    
                }
            ]
        }     ,

{
                        "data": [
                {
                    
                    "title": "Suicide bomber kills more than 50 at religious event in Kabul",
                   
                },
                {
                    
                    "title": "Renault board refrains from ousting Carlos Ghosn",
                    
                }
            ]
        },
{
                        "data": [
                {
                    
                    "title": "Suicide bomber kills more than 50 at religious event in Kabul",
                   
                }            ]
        }

]

end function
