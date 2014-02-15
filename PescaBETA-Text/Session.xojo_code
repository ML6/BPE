#tag Class
Protected Class Session
Inherits WebSession
	#tag Event
		Sub Open()
		  LoginPage.Show
		  
		  If Self.Cookies.Value("UserName") <> "" Then
		    LoginPage.UserNameField.Text = Self.Cookies.Value("UserName")
		    LoginPage.MemoCheckbox.Value = True
		  End If
		  
		  db = New PostgreSQLDatabase
		  
		  db.Host = "192.168.0.56"
		  db.UserName = "postgres"
		  db.Password = "postgres"
		  db.DatabaseName = "pesca"
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function AddUser(userName As String, password As String) As User
		  // Ne pas sauvegarder le mot de passe, uniquement le crypto
		  Dim hash As String
		  hash = App.Hash(password)
		  
		  Dim u As New User
		  u.UserName = userName
		  u.PasswordHash = hash
		  u.UserRole = ""
		  Dim strSQL As String
		  strSQL = "UPDATE users SET user_login = '" + u.UserName + "', user_password = '" + u.PasswordHash + "'"
		  
		  Return u
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Connected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		db As PostgreSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		OwnerLocation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PopRespId As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PopSiteId As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PopStatutId As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PopTypeId As String
	#tag EndProperty

	#tag Property, Flags = &h0
		UserName As String
	#tag EndProperty


	#tag Constant, Name = ErrorConnection, Type = String, Dynamic = True, Default = \"La connexion \xC3\xA0 la base de donn\xC3\xA9es n\'a pu \xC3\xAAtre ex\xC3\xA9cut\xC3\xA9e.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"La connexion \xC3\xA0 la base de donn\xC3\xA9es n\'a pu \xC3\xAAtre ex\xC3\xA9cut\xC3\xA9e."
	#tag EndConstant

	#tag Constant, Name = ErrorDialogCancel, Type = String, Dynamic = True, Default = \"Do Not Send", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ne pas envoyer"
	#tag EndConstant

	#tag Constant, Name = ErrorDialogMessage, Type = String, Dynamic = True, Default = \"Cette application doit s\'arr\xC3\xAAter.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Cette application doit s\'arr\xC3\xAAter."
	#tag EndConstant

	#tag Constant, Name = ErrorDialogQuestion, Type = String, Dynamic = True, Default = \"S.V.P. d\xC3\xA9crivez ce que vous tentiez d\'accomplir juste avant que l\'erreur se produise.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"S.V.P. d\xC3\xA9crivez ce que vous tentiez d\'accomplir juste avant que l\'erreur se produise."
	#tag EndConstant

	#tag Constant, Name = ErrorDialogSubmit, Type = String, Dynamic = True, Default = \"Envoyer", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Envoyer"
	#tag EndConstant

	#tag Constant, Name = ErrorThankYou, Type = String, Dynamic = True, Default = \"Merci!", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Merci!"
	#tag EndConstant

	#tag Constant, Name = ErrorThankYouMessage, Type = String, Dynamic = True, Default = \"Vos commentaires contribuent \xC3\xA0 vous offrir la meilleure exp\xC3\xA9rience possible.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Vos commentaires contribuent \xC3\xA0 vous offrir la meilleure exp\xC3\xA9rience possible."
	#tag EndConstant

	#tag Constant, Name = NoJavascriptInstructions, Type = String, Dynamic = True, Default = \"Pour activer Java\x2C r\xC3\xA9f\xC3\xA9rez-vous \xC3\xA0 l\'aide de votre fureteur.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Pour activer Java\x2C r\xC3\xA9f\xC3\xA9rez-vous \xC3\xA0 l\'aide de votre fureteur."
	#tag EndConstant

	#tag Constant, Name = NoJavascriptMessage, Type = String, Dynamic = True, Default = \"Javascript doit \xC3\xAAtre activ\xC3\xA9 pour pouvoir acc\xC3\xA9der \xC3\xA0 cette application.", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Javascript doit \xC3\xAAtre activ\xC3\xA9 pour pouvoir acc\xC3\xA9der \xC3\xA0 cette application."
	#tag EndConstant

	#tag Constant, Name = SuccessConnection, Type = String, Dynamic = True, Default = \"Vous \xC3\xAAtes connect\xC3\xA9 \xC3\xA0 la base de donn\xC3\xA9es", Scope = Public
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Vous \xC3\xAAtes connect\xC3\xA9 \xC3\xA0 la base de donn\xC3\xA9es."
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveConnectionCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BrowserVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Connected"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GMTOffset"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageCode"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OwnerLocation"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopRespId"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopSiteId"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopStatutId"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PopTypeId"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Expiration"
			Group="Behavior"
			InitialValue="-1"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
