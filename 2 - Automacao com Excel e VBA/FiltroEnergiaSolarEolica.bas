Attribute VB_Name = "Módulo1"
Sub Processar_Dados()
Attribute Processar_Dados.VB_Description = "Filtra dados de energia solar e eólica e copia para a aba Filtro."
Attribute Processar_Dados.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Processar_Dados Macro
' Filtra dados de energia solar e eólica e copia para a aba Filtro.
'

'
    Sheets("Filtro").Select
    Cells.Select
    Selection.ClearContents
    Sheets("BD_ENERGIA").Select
    Range("A2").Select
    Selection.AutoFilter
    Selection.AutoFilter
    ActiveSheet.Range("$A$2:$U$25911").AutoFilter Field:=6, Criteria1:= _
        "=Eólica", Operator:=xlOr, Criteria2:="=Solar"
    Range(Selection, Selection.End(xlToRight)).Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    Sheets("Filtro").Select
    Range("A1").Select
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Columns("A:A").EntireColumn.AutoFit
    Columns("B:B").EntireColumn.AutoFit
    Columns("C:C").EntireColumn.AutoFit
    Columns("D:D").EntireColumn.AutoFit
    Columns("E:E").EntireColumn.AutoFit
    Columns("F:F").EntireColumn.AutoFit
    Columns("G:G").EntireColumn.AutoFit
    Columns("H:H").EntireColumn.AutoFit
    Columns("I:I").EntireColumn.AutoFit
    Columns("J:J").EntireColumn.AutoFit
    Columns("K:K").EntireColumn.AutoFit
    Columns("L:L").EntireColumn.AutoFit
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 3
    Columns("M:M").EntireColumn.AutoFit
    Columns("N:N").EntireColumn.AutoFit
    Columns("O:O").EntireColumn.AutoFit
    Columns("P:P").EntireColumn.AutoFit
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 6
    Columns("Q:Q").EntireColumn.AutoFit
    Columns("R:R").EntireColumn.AutoFit
    Columns("S:S").EntireColumn.AutoFit
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 8
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 20
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 20
    Columns("T:T").EntireColumn.AutoFit
    Columns("U:U").EntireColumn.AutoFit
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 8
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Sheets("BD_ENERGIA").Select
    Application.CutCopyMode = False
    ActiveSheet.ShowAllData
    Selection.AutoFilter
    Range("A2").Select
End Sub
