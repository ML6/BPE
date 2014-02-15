#tag Class
Protected Class BPEDEMO
Inherits WebApplication
	#tag Method, Flags = &h0
		Function Hash(value As String) As String
		  Dim hashValue As String
		  
		  hashValue = Crypto.PBKDF2(kSalt, value, 128, 32, Crypto.Algorithm.SHA512)
		  
		  Return hashValue
		End Function
	#tag EndMethod


	#tag Constant, Name = kSalt, Type = String, Dynamic = False, Default = \"RUE*D*Ejeje#@fj(*", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
