Create procedure UpdLoginEntreprise
(
@UserIdent varchar(30),
@UserPwd varchar(50),
@IdEntreprise int
)
As
update [dbo].[LoginEntreprise]
set
 [UserIdent]=@UserIdent, [UserPwd]=@UserPwd
 where [IdEntreprise]=@IdEntreprise