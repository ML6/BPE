#tag WebPage
Begin WebContainer HooverControl1
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   17
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   Style           =   "None"
   TabOrder        =   0
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   70
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebImageView addimg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   4
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   672888186
      ProtectImage    =   True
      Scope           =   0
      Style           =   "40418912"
      TabOrder        =   -1
      Top             =   1
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   True
      Width           =   15
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin WebImageView Delimg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   28
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   582873806
      ProtectImage    =   True
      Scope           =   0
      Style           =   "40418912"
      TabOrder        =   -1
      Top             =   1
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   True
      Width           =   15
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _VerticalPercent=   0.0
   End
   Begin WebImageView Modimg
      AlignHorizontal =   0
      AlignVertical   =   0
      Cursor          =   0
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   52
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Picture         =   1695293720
      ProtectImage    =   True
      Scope           =   0
      Style           =   "40418912"
      TabOrder        =   -1
      Top             =   1
      URL             =   ""
      VerticalCenter  =   0
      Visible         =   True
      Width           =   15
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

#tag Events addimg
	#tag Event
		Sub MouseExit()
		  Me.Picture = AddHooverIcons15x15Pale
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.Picture = AddHooverIcons15x15
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Dim MyPage As WebPage
		  Dim MyContainer As HooverControl1
		  
		  MyPage = WebPage(Session.CurrentPage)
		  MyContainer = HooverControl1(MyPage.ControlWithName("hooverC1"))
		  
		  If MyPage.Visible = True Then
		    DataPageMain.hooverAjout
		  End if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Delimg
	#tag Event
		Sub MouseExit()
		  Me.Picture = DelHooverIcons15x15Pale
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.Picture = DelHooverIcons15x15
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Dim MyPage As WebPage
		  Dim MyContainer As HooverControl1
		  
		  MyPage = WebPage(Session.CurrentPage)
		  MyContainer = HooverControl1(MyPage.ControlWithName("hooverC1"))
		  
		  If MyPage.Visible = True Then
		    DataPageMain.hooverDelete
		  End if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Modimg
	#tag Event
		Sub MouseExit()
		  Me.Picture = ModHooverIcons15x15Pale
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.Picture = ModHooverIcons15x15
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseDown(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  Dim MyPage As WebPage
		  Dim MyContainer As HooverControl1
		  
		  MyPage = WebPage(Session.CurrentPage)
		  MyContainer = HooverControl1(MyPage.ControlWithName("hooverC1"))
		  
		  If MyPage.Visible = True Then
		    DataPageMain.hooverAjout
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
