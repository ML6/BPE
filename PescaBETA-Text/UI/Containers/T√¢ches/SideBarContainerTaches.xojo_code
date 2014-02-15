#tag WebPage
Begin WebContainer SideBarContainerTaches
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
   Begin WebLabel EmpLabel
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
      Text            =   "Tâches"
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
   Begin WebListBox TasksListBox
      AlternateRowColor=   &cEDF3FE00
      ColumnCount     =   1
      ColumnWidths    =   "100%"
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   False
      Height          =   311
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
End
#tag EndWebPage

#tag WindowCode
#tag EndWindowCode

#tag Events TasksListBox
	#tag Event
		Sub SelectionChanged()
		  //Effacer les valeurs
		  TachesPage.DGTContainer.ClearContainerTextFields
		  
		  // Ajouter les valeurs
		  
		  //Déterminer la taille des colonnes
		  
		  If Me.RowCount > 0 And Me.ListIndex <> -1 Then
		    
		    // Acquisition des données
		    Dim strSQL As String
		    strSQL = "SELECT * FROM taches WHERE id_tache = '" + Me.RowTag(Me.ListIndex) + "'"
		    
		    Dim RCSelect As RecordSet
		    RCSelect = Session.db.SQLSelect(strSQL)
		    
		    If Session.db.Error Then
		      ActivateWebDialog("Erreur de la base de données:  " + Session.db.ErrorMessage, "P")
		    End If
		    
		    If TachesPage.DGTContainer.Visible = True Then
		      
		      // Ajouter les valeurs
		      If RCSelect <> Nil Then
		        TachesPage.DGTContainer.ProjetActifLabel.Text = TachesPage.GetProjet(RCSelect.Field("lien_projet").StringValue)
		        TachesPage.DGTContainer.NomField.Text = RCSelect.Field("nom_tache").StringValue
		        TachesPage.DGTContainer.DescTextArea.Text = RCSelect.Field("desc_tache").StringValue
		        TachesPage.DGTContainer.RespPopupMenu.Text = LookUp("users", "user_id", RCSelect.Field("responsable").StringValue, 2)
		        
		        TachesPage.DGTContainer.StatutPopupMenu.Text = Lookup("statut_projet", "id", RCSelect.Field("statut_tache").StringValue, 2)
		        TachesPage.DGTContainer.TypePopupMenu.Text = Lookup("types_taches", "id_type", RCSelect.Field("type_tache").StringValue, 2)
		        
		        //Alimenter les sites
		        'TachesPage.FeedSites(TachesPage.DGTContainer.SitePopupMenu)
		        'TachesPage.DGTContainer.SitePopupMenu.Text = LookUp("sites", "id_site", RCSelect.Field("site_tache").StringValue, 2)
		        
		      End If
		      TachesPage.DGTContainer.ModButton.Enabled = True
		      
		    ElseIf TachesPage.DGTContainerModify.Visible = True Then
		      
		      // Ajouter les valeurs
		      If RCSelect <> Nil Then
		        TachesPage.DGTContainerModify.ProjetActifLabel.Text = TachesPage.GetProjet(RCSelect.Field("lien_projet").StringValue)
		        TachesPage.DGTContainerModify.NomField.Text = RCSelect.Field("nom_tache").StringValue
		        TachesPage.DGTContainerModify.DescTextArea.Text = RCSelect.Field("desc_tache").StringValue
		        TachesPage.DGTContainerModify.RespPopupMenu.Text = LookUp("users", "user_id", RCSelect.Field("responsable").StringValue, 2)
		        
		        TachesPage.DGTContainerModify.StatutPopupMenu.Text = Lookup("statut_projet", "id", RCSelect.Field("statut_tache").StringValue, 2)
		        TachesPage.DGTContainerModify.TypePopupMenu.Text = Lookup("types_taches", "id_type", RCSelect.Field("type_tache").StringValue, 2)
		        
		        //Alimenter les sites
		        'TachesPage.FeedSites(TachesPage.DGTContainerModify.SitePopupMenu)
		        'TachesPage.DGTContainerModify.SitePopupMenu.Text = LookUp("sites", "id_site", RCSelect.Field("site_tache").StringValue, 2)
		        
		      End If
		    End If
		    
		    strSQL = ""
		    RCSelect.Close
		  End if
		  
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
