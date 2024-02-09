SELECT
       d.ds_tip_presc antimicrobiano, 
       b.qt_itpre_med dosis,
       e.ds_for_apl via_administracion,
       f.ds_tip_fre intervalo_dosis,
       decode(nvl(b.nr_dia,0),0,'','(D�a '||b.nr_dia||'/'||b.qt_dias||')') duracion_tto
FROM
       PRE_MED              A,
       ITPRE_MED            B,
       PW_DOCUMENTO_CLINICO C,
       TIP_PRESC            D,
       FOR_APL              E,
       TIP_FRE              F
WHERE
       A.CD_PRE_MED=B.CD_PRE_MED
       AND A.CD_DOCUMENTO_CLINICO=C.CD_DOCUMENTO_CLINICO
       AND C.TP_STATUS='FECHADO'
       AND NVL(B.SN_CANCELADO, 'N')='N'
       AND B.CD_TIP_PRESC=D.CD_TIP_PRESC
       AND B.CD_FOR_APL=E.CD_FOR_APL(+)
       AND B.CD_TIP_FRE=F.CD_TIP_FRE(+)
       AND A.CD_ATENDIMENTO=128586
       AND B.CD_TIP_ESQ ='MDA' and
       a.cd_pre_med=125465
ORDER BY
       A.CD_PRE_MED DESC