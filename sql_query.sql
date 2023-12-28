SELECT TOP 5000
sp.objID,
sp.specObjID,
sp.ra,
sp.dec,
sp.z,
sp.subClass,
ga.b,
ga.l,

ga.colv,
ga.rowv,

ga.psfMag_u,
ga.psfMag_g,
ga.psfMag_r,
ga.psfMag_i,
ga.psfMag_z,
ga.petroMag_u,
ga.petroMag_g,
ga.petroMag_r,
ga.petroMag_i,
ga.petroMag_z,
ga.petroRad_u,
ga.petroRad_g,
ga.petroRad_r,
ga.petroRad_i,
ga.petroRad_z,
ga.q_u,
ga.q_g,
ga.q_r,
ga.q_i,
ga.q_z,
ga.u_u,
ga.u_g,
ga.u_r,
ga.u_i,
ga.u_z,
ga.deVRad_u,
ga.deVRad_g,
ga.deVRad_r,
ga.deVRad_i,
ga.deVRad_z,
ga.deVAB_u,
ga.deVAB_g,
ga.deVAB_r,
ga.deVAB_i,
ga.deVAB_z,





ga.extinction_u,
ga.extinction_g,
ga.extinction_r,
ga.extinction_i,
ga.extinction_z,
ga.u,
ga.g,
ga.r,
ga.i,
ga.z,
ga.dered_u,
ga.dered_g,
ga.dered_r,
ga.dered_i,
ga.dered_z


FROM GALAXY AS ga
Join specPhoto as sp on sp.specObjID=ga.specObjID
where sp.z<1 and sp.subClass='starforming'





































select top 5000 

gpe.specObjID,
sp.z,
sp.class,
sp.subClass,
sp.ra,
sp.dec,
sp.mjd,




ga.petroMag_u,
ga.petroMag_g,
ga.petroMag_r,
ga.petroMag_i,
ga.petroMag_z,
ga.petroRad_u,
ga.petroRad_g,
ga.petroRad_r,
ga.petroRad_i,
ga.petroRad_z,
ga.q_u,
ga.q_g,
ga.q_r,
ga.q_i,
ga.q_z,
ga.u_u,
ga.u_g,
ga.u_r,
ga.u_i,
ga.u_z,
ga.deVRad_u,
ga.deVRad_g,
ga.deVRad_r,
ga.deVRad_i,
ga.deVRad_z,
ga.deVAB_u,
ga.deVAB_g,
ga.deVAB_r,
ga.deVAB_i,
ga.deVAB_z,
ga.extinction_u,
ga.extinction_g,
ga.extinction_r,
ga.extinction_i,
ga.extinction_z,
ga.u,
ga.g,
ga.r,
ga.i,

gpe.bptclass,
gpe.oh_p2p5,
gpe.oh_p16,
gpe.oh_p50,
gpe.oh_p84,
gpe.oh_p97p5,
gpe.lgm_tot_p2p5,
gpe.lgm_tot_p16,
gpe.lgm_tot_p50,
gpe.lgm_tot_p84,
gpe.lgm_tot_p97p5,
gpe.sfr_tot_p2p5,
gpe.sfr_tot_p16,
gpe.sfr_tot_p50,
gpe.sfr_tot_p84,
gpe.sfr_tot_p97p5,






gpl.sigma_balmer,
gpl.oii_3726_reqw,
gpl.oii_3726_flux,
gpl.neiii_3869_reqw,
gpl.neiii_3869_flux,
gpl.h_delta_reqw,
gpl.h_delta_flux,
gpl.h_gamma_reqw,
gpl.h_gamma_flux,
gpl.oiii_4363_reqw,
gpl.oiii_4363_flux,
gpl.h_beta_reqw,
gpl.h_beta_flux,
gpl.oiii_4959_reqw,
gpl.oiii_4959_flux,
gpl.oiii_5007_reqw,
gpl.oiii_5007_flux,
gpl.hei_5876_reqw,
gpl.hei_5876_flux,
gpl.oi_6300_reqw,
gpl.oi_6300_flux,
gpl.nii_6548_reqw,
gpl.nii_6548_flux,
gpl.h_alpha_reqw,
gpl.h_alpha_flux,
gpl.nii_6584_reqw,
gpl.nii_6584_flux,
gpl.sii_6717_reqw,
gpl.sii_6717_flux,
gpl.sii_6731_reqw,
gpl.sii_6731_flux,
gpl.ariii7135_reqw,
gpl.ariii7135_flux




from galSpecExtra as gpe

join galSpecLine as gpl on gpe.specObjID=gpl.specObjID
join SpecPhotoAll as sp on sp.specObjID=gpe.specObjID
join GALAXY as ga on ga.specObjID=gpl.specObjID

where gpe.oh_p2p5 > -9999 and sp.subClass='starforming'
and sp.z<1




