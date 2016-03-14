Create procedure UpdLoginCandidat
(
@UserIdent varchar(30),
@UserPwd varchar(50),
@IdCandidat int
)
As
update [dbo].[LoginCandidat]
set 
 [UserIdent]=@UserIdent, [UserPwd]=@UserPwd
 where [IdCandidat]=@IdCandidat