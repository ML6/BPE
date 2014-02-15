#tag Module
Protected Module Globals
	#tag Method, Flags = &h0
		Sub ActivateENContainerPopUpMenu(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebPopupMenu Then
		      WebPopupMenu(MyContainer.ControlAtIndex(i)).Enabled = True
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActivateRWContainerTextFields(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebTextField Then
		      WebTextField(MyContainer.ControlAtIndex(i)).ReadOnly = False
		    End If
		    If MyContainer.ControlAtIndex(i) IsA WebTextArea Then
		      WebTextArea(MyContainer.ControlAtIndex(i)).ReadOnly = False
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ActivateWebDialog(mytext As String, boxtype As String)
		  Dim refWC As WebDialog
		  
		  Select Case boxtype
		  Case is = "I"
		    If Session.CurrentPage.ControlWithName("InfoMsgModalDialog") <> Nil Then
		      refWC =  WebDialog(Session.CurrentPage.ControlWithName("InfoMsgModalDialog"))
		      LabelText = mytext
		      refWC.Show
		    End If
		  Case is = "P"
		    If Session.CurrentPage.ControlWithName("ProbMsgModalDialog") <> Nil Then
		      refWC =  WebDialog(Session.CurrentPage.ControlWithName("ProbMsgModalDialog"))
		      LabelText = mytext
		      refWC.Show
		    End If
		  Case is = "Q"
		    If Session.CurrentPage.ControlWithName("QMsgModalDialog") <> Nil Then
		      refWC =  WebDialog(Session.CurrentPage.ControlWithName("QMsgModalDialog"))
		      LabelText = mytext
		      refWC.Show
		    End If
		  Case is = "D"
		    If Session.CurrentPage.ControlWithName("DEMsgModalDialog") <> Nil Then
		      refWC =  WebDialog(Session.CurrentPage.ControlWithName("DEMsgModalDialog"))
		      LabelText = mytext
		      refWC.Show
		    End If
		  End select
		  //
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AfficheLocations(MyLocList As WebListBox, LocationList() As WebMapLocation, WebMap As WebMapViewer)
		  
		  Dim i As Integer
		  
		  
		  For i = 0 To MyLocList.RowCount-1
		    If MyLocList.Cell(i, 2) = "" Then 'Si la cellule du statut d'affichage est vide, on continue
		      Dim MyLocation As New WebMapLocation
		      If CheckLocAdded(LocationList, MyLocList, i) = False Then 'Vérification dans les points déjà affichés
		        MyLocation.Latitude = Lat
		        MyLocation.Longitude = Long
		        MyLocation.Title = MyLocList.Cell(i,0)
		        MyLocation.Animated = True
		        WebMap.AddLocation(MyLocation)
		        //Ajout de la location
		        LocationList.Append MyLocation
		        // Se rendre à la dernière location ajoutée
		        If i = MyLocList.RowCount-1 Then WebMap.GoToLocation(MyLocation)
		        MyLocList.Cell(i, 2) = "Affiché"
		        Session.db.SQLExecute("UPDATE sites SET affichage = 'Affiché' WHERE id_site = '" + MyLocList.RowTag(i).StringValue + "'")
		        Lat = 444
		        Long = 444
		      End If
		    End if
		  Next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CDblExtra(strval As String) As Double
		  Return CDbl(Replace(strval, ",", "."))
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CheckLocAdded(LocList() As WebMapLocation, ListToAdd As WebListBox, MyRow As Integer) As Boolean
		  Dim j As Integer
		  Dim sLat As Double
		  Dim sLong As Double
		  
		  sLat = CDbl(Mid(ListToAdd.Cell(MyRow,1), 2, InStr(ListToAdd.Cell(MyRow,1), ",") -2))
		  sLong = CDbl(Mid(ListToAdd.Cell(MyRow,1), InStr(ListToAdd.Cell(MyRow,1), ",")+1, Len(ListToAdd.Cell(MyRow,1)) - InStr(ListToAdd.Cell(MyRow,1),",")-1))
		  Lat = sLat
		  Long = sLong
		  For j = 0 To UBound(LocList())
		    If LocList(j).Latitude = sLat And LocList(j).Longitude = sLong Then
		      Return True
		      Exit
		    End If
		  Next j
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearContainerListBoxes(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  Dim WP As  WebListBox
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebListBox Then
		      WP = WebListBox(MyContainer.ControlAtIndex(i))
		      WP.DeleteAllRows
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearContainerPopUpMenus(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  Dim WP As  WebPopupMenu
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebPopupMenu Then
		      WP = WebPopUpMenu(MyContainer.ControlAtIndex(i))
		      WP.DeleteAllRows
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearContainerTextFields(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebTextField Then
		      WebTextField(MyContainer.ControlAtIndex(i)).Text = ""
		    End If
		    If MyContainer.ControlAtIndex(i) IsA WebTextArea Then
		      WebTextArea(MyContainer.ControlAtIndex(i)).Text = ""
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeactivateENContainerPopUpMenu(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebPopupMenu Then
		      WebPopupMenu(MyContainer.ControlAtIndex(i)).Enabled = False
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DesactivateRWContainerTextFields(Extends MyContainer As WebContainer)
		  //Effacer le contenu des contrôles
		  
		  Dim i As Integer
		  
		  For i = 0 To MyContainer.ControlCount-1
		    If MyContainer.ControlAtIndex(i) IsA WebTextField Then
		      WebTextField(MyContainer.ControlAtIndex(i)).ReadOnly = True
		    End If
		    If MyContainer.ControlAtIndex(i) IsA WebTextArea Then
		      WebTextArea(MyContainer.ControlAtIndex(i)).ReadOnly = True
		    End If
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Deselection(MyList As WebListBox, fromList As WebListBox)
		  Dim i As Integer
		  
		  For i = 0 to fromList.RowCount -1
		    If fromList.Selected(i) Then
		      fromList.Selected(i) = False
		      MyList.SetFocus
		      Exit
		    End If
		  Next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EffacerUser(MyList As WebListBox, MyCont As WebContainer)
		  //S'assurer que la liste contient des employés pour éviter une erreur nulle.
		  
		  If MyList <> Nil Then
		    If MyList.ListIndex >=0 Then
		      Dim strSQL As String
		      Dim intIndex As Integer
		      
		      intIndex = MyList.ListIndex
		      strSQL = "DELETE FROM users WHERE user_id = " + MyList.RowTag(intIndex) + ""
		      Session.db.SQLExecute(strSQL)
		    End If
		    
		    If Session.db.Error Then
		      ActivateWebDialog("Erreur de la base de données: " + Session.db.ErrorMessage, "P")
		    End If
		    
		    //Mettre à jour la liste employés
		    MyCont.ClearContainerTextFields
		    If MyList.RowCount >1 And MyList.ListIndex <> -1 Then
		      UpdateEmp(MyList)
		      MyList.ListIndex = 0
		    End If
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeedClients(PopUpMenu As WebPopupMenu)
		  // Alimenter les avec les nom de clients
		  
		  PopUpMenu.DeleteAllRows
		  Dim RCClients As RecordSet
		  Dim strSQL As String
		  
		  strSQL = "SELECT * FROM clients ORDER BY nom_client"
		  RCClients = Session.db.SQLSelect(strSQL)
		  
		  If RCClients <> Nil Then
		    RCClients.MoveFirst
		    While Not RCClients.EOF
		      PopupMenu.AddRow(RCClients.Field("nom_client").StringValue)
		      PopUpMenu.RowTag(PopUpMenu.ListCount-1) = RCClients.Field("id").IntegerValue
		      RCClients.MoveNext
		    Wend
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeedListeprojet(MyList As WebListBox, ref As String)
		  // Alimenter les avec les nom de clients
		  
		  MyList.DeleteAllRows
		  Dim strSQL As String
		  Dim p As PostgreSQLPreparedStatement
		  
		  strSQL = "SELECT * FROM projets WHERE p_client_id = $1"
		  
		  p = Session.db.Prepare(strSQL)
		  p.Bind(0, ref)
		  
		  Dim RC As RecordSet = p.SQLSelect
		  
		  If RC <> Nil Then
		    RC.MoveFirst
		    While Not RC.EOF
		      MyList.AddRow(RC.Field("nom_projet").StringValue)
		      MyList.RowTag(MyList.RowCount-1) = RC.Field("id_projet").IntegerValue
		      RC.MoveNext
		    Wend
		  End If
		  
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FeedListeTache(MyList As WebListBox, PLien As String)
		  // Alimenter les Tâches
		  
		  MyList.DeleteAllRows
		  Dim RC As RecordSet
		  Dim strSQL As String
		  
		  PLien = SafeSQL(PLien)
		  
		  strSQL = "SELECT * FROM taches WHERE lien_projet = '" + PLien + "'"
		  RC = Session.db.SQLSelect(strSQL)
		  
		  If RC <> Nil Then
		    RC.MoveFirst
		    While Not RC.EOF
		      MyList.AddRow(RC.Field("nom_tache").StringValue, RC.Field("desc_tache").StringValue)
		      MyList.RowTag(MyList.RowCount-1) = RC.Field("id_tache").IntegerValue
		      RC.MoveNext
		    Wend
		  End If
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindClientLocation(MyRefField As WebTextField) As String
		  //Déterminer la geolocalisation du détenteur de la license
		  
		  Dim strSQL As String
		  Dim RC As RecordSet
		  Dim adresse() As String
		  Dim location As String
		  Dim i As Integer
		  
		  strSQL = "SELECT * FROM clients WHERE nom_client = '" + WebTextField(MyRefField).Text + "'"
		  RC = Session.db.SQLSelect(strSQL)
		  
		  If Session.db.Error Then
		    ActivateWebDialog("Erreur de la base de données:  " + Session.db.ErrorMessage, "P")
		  End If
		  
		  If  RC <> Nil Then
		    adresse = Array(RC.Field("adresse_client").StringValue, RC.Field("ville_client").StringValue, RC.Field("province_client").StringValue, _
		     RC.Field("cp_client").StringValue, RC.Field("pays_client").StringValue)
		    For i = 0 To UBound(adresse)
		      location = location + adresse(i) + ", "
		    Next i
		    Return location
		  Else
		    ActivateWebDialog("Ce client n'existe pas.", "P")
		  End if
		  
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindProjetLocation(MyRefID As String)
		  //Déterminer la geolocalisation du projet
		  
		  Dim strSQL As String
		  Dim RC As RecordSet
		  
		  strSQL = "SELECT * FROM projets WHERE id_projet = '" + MyRefID + "'"
		  RC = Session.db.SQLSelect(strSQL)
		  
		  If Session.db.Error Then
		    ActivateWebDialog("Erreur de la base de données:  " + Session.db.ErrorMessage, "P")
		  End If
		  
		  If  RC <> Nil Then
		    If RC.Field("latlong") <> Nil Then
		      Lat = CDbl(Mid(RC.Field("latlong").StringValue, 2, InStr(RC.Field("latlong").StringValue, ",") -2))
		      Long = CDbl(Mid(RC.Field("latlong").StringValue, InStr(RC.Field("latlong").StringValue, ",")+1, Len(RC.Field("latlong").StringValue) - InStr(RC.Field("latlong").StringValue,",")-1))
		    Else
		      ActivateWebDialog("Ce projet n'est pas localisé.", "I")
		    End If
		  Else
		    ActivateWebDialog("Ce projet n'existe pas.", "P")
		  End if
		  
		  'Return New WebMapLocation(MyLatitude, MyLongitude,  WebTextField(MyRefLabel).Text)
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindSiteLocation(MySiteID As String)
		  //Déterminer la geolocalisation du projet
		  
		  Dim strSQL As String
		  Dim RC As RecordSet
		  
		  strSQL = "SELECT * FROM sites WHERE id_site = '" + MySiteID + "'"
		  RC = Session.db.SQLSelect(strSQL)
		  
		  If Session.db.Error Then
		    ActivateWebDialog("Erreur de la base de données:  " + Session.db.ErrorMessage, "P")
		  End If
		  
		  If  RC <> Nil Then
		    If RC.Field("latlong") <> Nil Then
		      Lat = CDbl(Mid(RC.Field("latlong").StringValue, 2, InStr(RC.Field("latlong").StringValue, ",") -2))
		      Long = CDbl(Mid(RC.Field("latlong").StringValue, InStr(RC.Field("latlong").StringValue, ",")+1, Len(RC.Field("latlong").StringValue) - InStr(RC.Field("latlong").StringValue,",")-1))
		    Else
		      ActivateWebDialog("Ce projet n'est pas localisé.", "I")
		    End If
		  Else
		    ActivateWebDialog("Ce projet n'existe pas.", "P")
		  End if
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookUp(tableName As String, fField As String, sValue As String, targetFieldInd As Integer) As String
		  Dim ps As PostgreSQLPreparedStatement
		  Dim rs As RecordSet
		  Dim LookUpReturn As String
		  Dim strSQL As String
		  
		  strSQL = "SELECT * FROM " + tableName + " WHERE " + fField + " = $1"
		   
		  ps = Session.db.Prepare(strSQL)
		  ps.Bind(0, sValue)
		  
		  rs = ps.SQLSelect
		  
		  If rs <> Nil And Not IsNull(sValue) Then
		    
		     LookUpReturn = rs.IdxField(targetFieldInd).StringValue
		  End If
		  
		  Return LookUpReturn
		  
		  If Session.db.Error Then ActivateWebDialog("Erreur de la base de données :  " + Session.db.ErrorMessage, "P")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MasqueLocations(MyLocList As WebListBox, LocationList() As WebMapLocation, WebMap As WebMapViewer)
		  Dim i, j As Integer
		  
		  For i = 0 To MyLocList.RowCount-1
		    If MyLocList.Cell(i, 2) = "Affiché" Then 'Si la cellule du statut contient "Affiché", on continue
		      If CheckLocAdded(LocationList, MyLocList, i) = True Then
		        Dim MyLocation As New WebMapLocation
		        'Lat = CDbl(Mid(MyLocList.Cell(i,1), 2, InStr(MyLocList.Cell(i,1), ",") -2))
		        'Long = CDbl(Mid(MyLocList.Cell(i,1), InStr(MyLocList.Cell(i,1), ",")+1, Len(MyLocList.Cell(i,1)) - InStr(MyLocList.Cell(i,1),",")-1))
		        For j = 0 To UBound(LocationList)
		          If LocationList(j).Longitude = Long And LocationList(j).Latitude = Lat Then
		            MyLocation = LocationList(j)
		            LocationList.Remove(j)
		            MyLocList.Cell(i, 2) = ""
		            Session.db.SQLExecute("UPDATE sites SET affichage = '' WHERE id_site = '" + MyLocList.RowTag(i).StringValue + "'")
		          End If
		          If MyLocation <> Nil Then WebMap.RemoveLocation(MyLocation)
		        Next j
		      End If
		    End If
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Nz(i As Variant, j As Variant) As Variant
		  If IsNull(i) Then
		    Return  j
		  Else
		    Return i
		  End if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SafeSQL(TempString As String) As String
		  Dim goodString As String
		  goodString = ReplaceAll(TempString, "'", "''")
		  Return goodString
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateEmp(MyEmpList As WebListBox)
		  //Nettoyer la liste des employés
		  MyEmpList.DeleteAllRows
		  MyEmpList.ColumnWidths = "100%"
		  
		  Dim strSQL As String
		  strSQL = "SELECT * FROM users ORDER BY user_name"
		  
		  Dim RC As RecordSet
		  RC = Session.db.SQLSelect(strSQL)
		  
		  If Session.db.Error Then
		    ActivateWebDialog("Erreur de base de données" + Session.db.ErrorMessage, "P")
		  End If
		  
		  If RC <> Nil Then
		    While Not RC.EOF
		      MyEmpList.AddRow(RC.Field("user_name").StringValue)
		      MyEmpList.RowTag(MyEmpList.LastIndex) = RC.Field("user_id").StringValue
		      RC.MoveNext
		    Wend
		  End If
		  
		  RC.Close
		  RC = Nil
		  
		  strSQL = ""
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DialogEntry As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		DialogResponse As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		LabelText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Lat As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Long As Double
	#tag EndProperty


	#tag Constant, Name = CARRIAGERETURN, Type = String, Dynamic = False, Default = \"\n", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DialogResponse"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LabelText"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Lat"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Long"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
