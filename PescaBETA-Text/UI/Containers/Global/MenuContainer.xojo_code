#tag WebPage
Begin WebContainer MenuContainer
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   38
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   823
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   Style           =   "726777415"
   TabOrder        =   0
   Top             =   40
   VerticalCenter  =   0
   Visible         =   True
   Width           =   823
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin MenuImage DataImg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   38
      HelpTag         =   "Accéder aux données"
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   331
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   1451573355
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   False
      Width           =   38
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin MenuImage EmployeImg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   38
      HelpTag         =   "Gestion des utilisateurs"
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   223
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   1002914975
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   False
      Width           =   38
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin MenuImage HomeImg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   38
      HelpTag         =   "Accueil"
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   76
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   1477655172
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   False
      Width           =   38
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin MenuImage LogoutImg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   38
      HelpTag         =   "Dénonnexion"
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   26
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   1371590624
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   False
      Width           =   38
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin MenuImage ProjetsImg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   38
      HelpTag         =   "Gérer vos projets"
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   277
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   408807818
      ProtectImage    =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   0
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   False
      Width           =   38
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

#tag Events DataImg
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Session.CurrentPage.Close
		  DataPageMain.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EmployeImg
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  If User.UserRole = "0" Then
		    Session.CurrentPage.Close
		    UsersPage.Show
		  Else
		    ActivateWebDialog("Vous ne possédez pas les droits administrateurs requis pour accéder à cette fonction", "P")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HomeImg
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Session.CurrentPage.Close
		  Accueil.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogoutImg
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Session.CurrentPage.Close
		  LoginPage.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProjetsImg
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Session.CurrentPage.Close
		  MainPage.Show
		  
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
