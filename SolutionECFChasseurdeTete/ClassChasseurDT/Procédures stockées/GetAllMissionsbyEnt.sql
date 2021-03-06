USE [ChasseurDeTete]
GO
/****** Object:  StoredProcedure [dbo].[GetAllMissionsByEnt]    Script Date: 10/03/2016 09:06:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetAllMissionsByEnt]
@identreprise  int
AS
BEGIN

	select idMission, idmotif, m.idQualification, m.idNiveau, DateOuverture,
	       datefin, remunerationProposee, Precisions, Duree, LibelleQualification, Libelle,[NomConsultant]
		   from dbo.Mission m
		   join dbo.Qualification q
		   on m.IdQualification =q.IdQualification
		   left join dbo.Niveau n
		   on m.idNiveau=n.IdNiveau
		   left join [dbo].[Consultant] c
		   on m.idConsultant = c.IdConsultant

		   where IdEntreprise=@identreprise


END

