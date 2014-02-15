#tag WebPage
Begin WebContainer SideBarContainer
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   413
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   0
   LockBottom      =   True
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   LockVertical    =   False
   Style           =   "931806350"
   TabOrder        =   0
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   211
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebLabel ClientLabel
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   0
      Text            =   "Clients"
      Top             =   78
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin MenuImage ClientLogo
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   74
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   2035144680
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   True
      Width           =   211
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin WebListBox ClientsListBox
      AlternateRowColor=   &cEDF3FE00
      ColumnCount     =   2
      ColumnWidths    =   "0"
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   False
      Height          =   119
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   ""
      Left            =   0
      ListIndex       =   -1
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MinimumRowHeight=   22
      Multiline       =   False
      PrimaryRowColor =   &cFFFFFF00
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   102
      VerticalCenter  =   0
      Visible         =   True
      Width           =   211
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin WebLabel ProjetsLabel
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   0
      Text            =   "Projets"
      Top             =   226
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin WebListBox ProjetsListBox
      AlternateRowColor=   &cEDF3FE00
      ColumnCount     =   1
      ColumnWidths    =   ""
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   False
      Height          =   160
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   ""
      Left            =   0
      ListIndex       =   -1
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MinimumRowHeight=   22
      Multiline       =   False
      PrimaryRowColor =   &cFFFFFF00
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   253
      VerticalCenter  =   0
      Visible         =   True
      Width           =   211
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
End
#tag EndWebPage

#tag WindowCode
#tag EndWindowCode

#tag Events ClientsListBox
	#tag Event
		Sub SelectionChanged()
		  Dim MyContainer As WebContainer
		  
		  MainPage.ActiveList = "Clients"
		  
		  MyContainer = WebContainer(Session.CurrentPage.ControlWithName("SideBarContainerMain"))
		  
		  If WebListBox(MyContainer.ControlWithName("ClientsListBox")).ListIndex <> -1 Then
		    
		    //Désactiver le nom du client. Il ne peut être modifié
		    MainPage.ClientContainerModifyMain.NameField.Enabled = False
		    
		    //Rendre les autres containers invisibles
		    MainPage.ProjetContainerMain.Visible = False
		    
		    //Faire apparaître le container d'ajout
		    MainPage.ClientContainerModifyMain.Visible = True
		    
		    // Alimenter les contrôles
		    Dim strSQL As String
		    Dim RC As RecordSet
		    
		    strSQL = "SELECT * FROM clients WHERE id = '" + MainPage.SideBarContainerMain.ClientsListBox.RowTag(MainPage.SideBarContainerMain.ClientsListBox.ListIndex) + "'"
		    RC = Session.db.SQLSelect(strSQL)
		    
		    If RC <> Nil Then
		      MainPage.ClientContainerModifyMain.NameField.Text = RC.Field("nom_client").StringValue
		      MainPage.ClientContainerModifyMain.AddressField.Text = RC.Field("adresse_client").StringValue
		      MainPage.ClientContainerModifyMain.VilleField.Text = RC.Field("ville_client").StringValue
		      MainPage.ClientContainerModifyMain.ProvField.Text = RC.Field("province_client").StringValue
		      MainPage.ClientContainerModifyMain.CPField.Text = RC.Field("cp_client").StringValue
		      MainPage.ClientContainerModifyMain.PaysField.Text = RC.Field("pays_client").StringValue
		      MainPage.ClientContainerModifyMain.EmailField.Text = RC.Field("courriel_client").StringValue
		      MainPage.ClientContainerModifyMain.TelField.Text = RC.Field("telephone_client").StringValue
		    End If
		    
		    RC.Close
		    RC = Nil
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProjetsListBox
	#tag Event
		Sub MouseEnter()
		  // Afficher le Container d'édition des projet SI LA LISTE EST VIDE
		  
		  If Me.RowCount <=0 Then
		    MainPage.ProjetContainerModifyMain.Visible = True
		    MainPage.ProjetContainerMain.Visible = False
		    MainPage.ProjetContainerModifyMain.AddButton.Visible = True
		    MainPage.ClientContainerModifyMain.Visible = False
		    'Alimenter les popupmenus
		    MainPage.FeedStatus(MainPage.ProjetContainerModifyMain.StatusPopupMenu)
		    FeedClients(MainPage.ProjetContainerModifyMain.ClientPopupMenu)
		  End If
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  //Identifier comme actif pour la suppression
		  MainPage.ActiveList = "Projets"
		  
		  //Désactiver la sélection des lignes de la liste clients
		  'Deselection(ProjetsListBox, ClientsListBox)
		  
		  //Effacer les valeurs
		  MainPage.ProjetContainerMain.TasksListBox.DeleteAllRows
		  MainPage.ProjetContainerMain.ClearContainerTextFields
		  
		  //Déterminer la taille des colonnes dans le container
		  MainPage.ProjetContainerMain.TasksListBox.ColumnWidths = "50%, 50%"
		  
		  // Afficher le Container «Projet» avec les valeurs
		  MainPage.ClientContainerModifyMain.Visible = False
		  MainPage.ProjetContainerMain.Visible = True
		  MainPage.ProjetContainerModifyMain.Visible = False
		  
		  // Ajouter les valeurs
		  
		  // Liste des tâches
		  Dim MyContainer As WebContainer
		  
		  If MainPage.ControlWithName("ProjetContainerMain") <> Nil And MainPage.ControlWithName("ProjetContainerMain").Visible = True Then
		    MyContainer = WebContainer(MainPage.ProjetContainerMain)
		  ElseIf MainPage.ControlWithName("ProjetContainerModifyMain") <> Nil And MainPage.ControlWithName("ProjetContainerModifyMain").Visible = True Then
		    MyContainer = WebContainer(MainPage.ProjetContainerModifyMain)
		  End If
		  
		  If Me.RowCount >0 And Me.ListIndex <> -1 Then
		    FeedListeTache(WebListBox(MyContainer.ControlWithName("TasksListBox")), Me.RowTag(Me.ListIndex))
		  End If
		  
		  // Champs
		  If Me.RowCount >0 And Me.ListIndex <> -1 Then
		    Dim strSQLProj As String
		    strSQLProj = "SELECT * FROM projets WHERE id_projet = '" + Me.RowTag(Me.ListIndex) + "'"
		    
		    Dim RCPr As RecordSet
		    RCPr = Session.db.SQLSelect(strSQLProj)
		    
		    If Session.db.Error Then
		      ActivateWebDialog("Erreur de la base de données:  " + Session.db.ErrorMessage, "P")
		    End If
		    
		    If RCPr <> Nil Then
		      MainPage.ProjetContainerMain.NameField.Text = RCPr.Field("nom_projet").StringValue
		      MainPage.ProjetContainerMain.ClientField.Text = MainPage.GetClientName(Me.RowTag(Me.ListIndex))
		      MainPage.ProjetContainerMain.DescTextArea.Text = RCPr.Field("description")
		      MainPage.ProjetContainerMain.StatutField.Text = MainPage.GetStatutProjet(RCPr.Field("statut"))
		    End If
		    
		    RCPr.Close
		    strSQLProj = ""
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  //Désactiver la sélection des lignes de la liste clients
		  'Deselection(ProjetsListBox, ClientsListBox)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Auto"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow North East"
			"12 - Arrow North West"
			"13 - Arrow South East"
			"14 - Arrow South West"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
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
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollbarsVisible"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
