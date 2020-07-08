CREATE OR REPLACE PACKAGE SABEC.PG_SABEC_PRINCIPAL IS
/**************************************************************************************
NOMBRE DEL OBJETO   : PG_SABEC_PRINCIPAL
AUTOR               : NESTOR
FECHA DE CREACIÓN   : 02/05/2020
LLAMADO POR         : 
DESCRIPCIÓN         : PAQUETE DE PROCEDIMIENTOS DE SABEC
REVISIONES:
VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
--------    ------------    ----------------------------------     -----------
***************************************************************************************/
    
    FUNCTION FU_SABEC_OBT_ALERT_BP (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_ALERT_BP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_NPCS_ID INTEGER
    ) RETURN VARCHAR2;
    
    FUNCTION FU_SABEC_OBT_CAD_DELITO (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_CAD_DELITO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_NPDC_ID INTEGER
    ) RETURN VARCHAR2;
    
    FUNCTION FU_SABEC_OBT_CAD_INFRACC (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_CAD_INFRACC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_NPDC_ID INTEGER
    ) RETURN VARCHAR2;
    
    FUNCTION FU_SABEC_OBT_DIAS_HABILES (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_DIAS_HABILES
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE
    )RETURN INTEGER;
    
    FUNCTION FU_SABEC_OBT_FEC_BP (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_FEC_BP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_NPCS_ID INTEGER
    ) RETURN VARCHAR2;
    
    FUNCTION FU_SABEC_OBT_ULT_DIA_SEM (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_ULT_DIA_SEM
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA IN DATE,
        P_FECHA_LIM IN DATE
    ) RETURN DATE;
    
    FUNCTION SABEC_OBT_ID_PARAMETRO (
        /***************************************************************************************
        NOMBRE DEL OBJETO   : SABEC_OBT_ID_PARAMETRO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_COD_PAR IN VARCHAR2,
        P_COD_PAR_VAL IN VARCHAR2
    )RETURN INTEGER;
        
    PROCEDURE PA_SABEC_ALERTAS_NOTIFICACION(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_ALERTAS_NOTIFICACION
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_BP_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_BP_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_TEMATICA IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_PUBLICACION_DESDE IN DATE ,
        P_FEC_PUBLICACION_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_CAS_SABEC_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_CAS_SABEC_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_VAL_DESDE IN DATE ,
        P_FEC_VAL_HASTA IN DATE ,
        P_FEC_PUB_DESDE IN DATE ,
        P_FEC_PUB_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_CP_CO_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_CP_CO_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_GESTOR IN INTEGER ,
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_ENT_CO_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_CO_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_REMITE_DESDE IN DATE ,
        P_FEC_REMITE_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_ENT_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_REMITE_DESDE IN DATE ,
        P_FEC_REMITE_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_ENT_GE_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_GE_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_USU_GEST IN VARCHAR2 ,
        P_FEC_REMITE_DESDE IN DATE ,
        P_FEC_REMITE_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_ENT_OPE_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_OPE_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_REMITE_DESDE IN DATE ,
        P_FEC_REMITE_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PARAM(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PARAM
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_DESCRIPCION IN VARCHAR2 ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PARAM_VAL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PARAM_VAL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PC_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PC_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_VAL_DESDE IN DATE ,
        P_FEC_VAL_HASTA IN DATE ,
        P_FEC_PUB_DESDE IN DATE ,
        P_FEC_PUB_HASTA IN DATE ,
        P_NUM_ENVIO IN VARCHAR2 ,
        P_NUM_ALERTA IN VARCHAR2 ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PEN_CO_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_CO_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_DEST_DESDE IN DATE ,
        P_FEC_DEST_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PEN_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_DEST_DESDE IN DATE ,
        P_FEC_DEST_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PEN_GE_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_GE_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_USU_GEST IN VARCHAR2 ,
        P_FEC_DEST_DESDE IN DATE ,
        P_FEC_DEST_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PEN_OPE_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_OPE_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_DEST_DESDE IN DATE ,
        P_FEC_DEST_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_PLAZO_ATENCION(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PLAZO_ATENCION
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_DESCRIPCION IN VARCHAR2 ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_SAL_CO_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_CO_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_ENVIO_DESDE IN DATE ,
        P_FEC_ENVIO_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_SAL_GE_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_GE_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_ENVIO_DESDE IN DATE ,
        P_FEC_ENVIO_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_SAL_GE_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_GE_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_USU_GEST IN VARCHAR2 ,
        P_FEC_ENVIO_DESDE IN DATE ,
        P_FEC_ENVIO_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_BAN_SAL_OPE_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_OPE_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ESTADO IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_FEC_ENVIO_DESDE IN DATE ,
        P_FEC_ENVIO_HASTA IN DATE ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_CONFSIS_PLAATDET_GDEE(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONFSIS_PLAATDET_GDEE
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_CONFSIS_PLAZOAT_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONFSIS_PLAZOAT_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_CONSULTA_CS_BP(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONSULTA_CS_BP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_TIPO_RESP IN INTEGER ,
        P_ENTIDAD IN VARCHAR2 ,
        P_NUM_CASO IN VARCHAR2 ,
        P_NUM_ALERT IN VARCHAR2 ,
        P_NUM_INF IN VARCHAR2 ,
        P_ASUN_CASO IN VARCHAR2 ,
        P_ASUN_ALERT IN VARCHAR2 ,
        P_FEC_DESDE IN DATE ,
        P_FEC_HASTA IN DATE ,
        P_SEMANTICA IN VARCHAR2 ,
        P_PAGINA IN INTEGER ,
        P_REG_PAGINA IN INTEGER ,
        P_ORDEN_COL IN VARCHAR2 ,
        P_ORDEN_TIPO IN VARCHAR2 ,
        P_TOT_REGISTROS OUT INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_ASIGN_GEST(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_ASIGN_GEST
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_EMIT_PUB(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_EMIT_PUB
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_NUM_CASOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_NUM_CASOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR_CASOS OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_PROM_PUBL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_PROM_PUBL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_PUBLICADOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_PUBLICADOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_REPROC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_REPROC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_TIP_DEL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_DEL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_TIP_INF(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_INF
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DASHBOARD_TIP_RESP(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_RESP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_DEL_PARAM_VAL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DEL_PARAM_VAL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_DEL_PROY_CASO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DEL_PROY_CASO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_INS_CASO_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_CASO_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID OUT INTEGER ,
        P_ID_PROYECTO_CASO IN INTEGER ,
        P_ID_ESTADO IN INTEGER ,
        P_FECHA_INICIO_EVALUACION IN DATE ,
        P_FECHA_ENVIO IN DATE ,
        P_NOM_USU_DEST IN VARCHAR2 ,
        P_COD_USU_DEST IN VARCHAR2 ,
        P_ID_ROL_DEST IN INTEGER ,
        P_NOM_USU_REM IN VARCHAR2 ,
        P_COD_USU_REM IN VARCHAR2 ,
        P_ID_ROL_REM IN INTEGER ,
        P_ID_TEMATICA IN INTEGER ,
        P_ASUNTO IN VARCHAR2 ,
        P_FECHA_INI_AUDIT IN DATE ,
        P_FECHA_FIN_AUDIT IN DATE ,
        P_UO_EMISOR IN VARCHAR2 ,
        P_JEFE_OCI IN VARCHAR2 ,
        P_JEFE_COMISION IN VARCHAR2 ,
        P_SUPERVISOR IN VARCHAR2 ,
        P_ESPECIALISTA IN VARCHAR2 ,
        P_SINTESIS_AUDITORIA IN VARCHAR2 ,
        P_ID_ETAPA_CONCLUYE IN VARCHAR2 ,
        P_FUNDAMENTOS_JURIDICOS IN VARCHAR2 ,
        P_OTROS_FUNDAMENTOS_JUR IN VARCHAR2 ,
        P_IS_BUEN_PRACT IN NUMBER ,
        P_JUSTI_BUEN_PRACT IN VARCHAR2 ,
        P_IS_LECC_APREN IN NUMBER ,
        P_JUSTI_LECC_APREN IN VARCHAR2 ,
        P_AUDITORES_ENCARGADOS IN TYP_TBL_AUDIT_ENC ,
        P_RESULTADO_FINAL IN TYP_TBL_RESULT_FINAL ,
        P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC ,
        P_LECCIONES_APRENDIDAS IN TYP_TBL_LECCIONES_APREN ,
        P_USUARIO IN VARCHAR2 ,
        P_ID_GUIA_SABEC IN NUMBER ,
        P_LOAD_FEC_INICIO IN NUMBER ,
        P_LOAD_FEC_TERMINO IN NUMBER ,
        P_LOAD_UOEMISORA_INFORME IN NUMBER ,
        P_LOAD_JEFE_OCI IN NUMBER ,
        P_LOAD_JEFE_COMISION IN NUMBER ,
        P_LOAD_SUPERVISOR IN NUMBER ,
        P_LOAD_ESPECIALISTA IN NUMBER ,
        P_LOAD_SINTESIS_AUDITORIA IN NUMBER
    );

    PROCEDURE PA_SABEC_INS_OBS_CASO_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_OBS_CASO_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER ,
        P_ID_EST_OBS IN INTEGER ,
        P_ID_TIP_INC IN INTEGER ,
        P_NOM_USUARIO IN VARCHAR2 ,
        P_COD_USUARIO IN VARCHAR2 ,
        P_ID_ROL IN INTEGER ,
        P_DETALLE IN VARCHAR2 ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_INS_OBS_PROY_CASO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_OBS_PROY_CASO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_PROY_CASO IN INTEGER ,
        P_ID_EST_OBS IN INTEGER ,
        P_ID_TIP_INC IN INTEGER ,
        P_NOM_USUARIO IN VARCHAR2 ,
        P_COD_USUARIO IN VARCHAR2 ,
        P_ID_ROL IN INTEGER ,
        P_DETALLE IN VARCHAR2 ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_INS_PROY_CASO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_PROY_CASO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID OUT INTEGER ,
        P_NUMERO_REGISTRO IN VARCHAR2 ,
        P_NUMERO_ENVIO IN VARCHAR2 ,
        P_NOM_OPERADOR IN VARCHAR2 ,
        P_COD_OPERADOR IN VARCHAR2 ,
        P_ID_ROL_OPERADOR IN INTEGER ,
        P_FECHA IN DATE ,
        P_ID_ESTADO IN INTEGER ,
        P_NOM_USU_REM IN VARCHAR2 ,
        P_COD_USU_REM IN VARCHAR2 ,
        P_ID_ROL_REM IN INTEGER ,
        P_FECHA_ENVIO IN DATE ,
        P_NOM_USU_DEST IN VARCHAR2 ,
        P_COD_USU_DEST IN VARCHAR2 ,
        P_ID_ROL_DEST IN INTEGER ,
        P_ID_TIPO_RESPONSABILIDAD IN INTEGER ,
        P_ID_TIPO_DELITO IN TYP_TBL_INTEGER ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_NOM_ENTIDAD IN VARCHAR2 ,
        P_DEP_ENTIDAD IN VARCHAR2 ,
        P_RESOLUCION_SENTENCIA IN VARCHAR2 ,
        P_NUMERO_INFORME IN VARCHAR2 ,
        P_DECISION_RESOLUCION IN VARCHAR2 ,
        P_INFRACCION IN TYP_TBL_INFRACCION ,
        P_ADJUNTOS IN TYP_TBL_ADJUNTO ,
        P_CONSIDERACIONES IN VARCHAR2 ,
        P_USUARIO IN VARCHAR2 ,
        P_COD_UNIDAD_ORGANICA IN VARCHAR2 ,
        P_NOM_UNIDAD_ORGANICA IN VARCHAR2
    );

    PROCEDURE PA_SABEC_OBT_SIG_CORR_ALER_SAB(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_OBT_SIG_CORR_ALER_SAB
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_OBT_SIG_CORR_PROY_CAS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_OBT_SIG_CORR_PROY_CAS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_PUBLICAR_BP(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_PUBLICAR_BP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID OUT INTEGER ,
        P_NUM_ALERTA IN VARCHAR2 ,
        P_NUMERO_CASOS IN INTEGER ,
        P_NOM_USU_PUB IN VARCHAR2 ,
        P_COD_USU_PUB IN VARCHAR2 ,
        P_ID_ROL_PUB IN INTEGER ,
        P_ASUNTO IN VARCHAR2 ,
        P_SUMILLA IN CLOB ,
        P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_PUBLICAR_CASO_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_PUBLICAR_CASO_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID OUT INTEGER ,
        P_NUM_ALERTA IN VARCHAR2 ,
        P_NOM_USU_PUB IN VARCHAR2 ,
        P_COD_USU_PUB IN VARCHAR2 ,
        P_ID_ROL_PUB IN INTEGER ,
        P_NUMERO_CASOS IN INTEGER ,
        P_ASUNTO IN VARCHAR2 ,
        P_SUMILLA IN CLOB ,
        P_CASOS IN TYP_TBL_PROY_CASO_SABEC ,
        P_ID_ESTADO IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_REPORTE_1(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_1
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FEC_DESDE IN DATE ,
        P_FEC_HASTA IN DATE ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_ID_TIP_RESP IN INTEGER ,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER ,
        P_ID_TIP_INF IN TYP_TBL_INTEGER ,
        P_CURSOR_TOTAL OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_RESP OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_DEL OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_INF OUT SYS_REFCURSOR ,
        P_CURSOR_ENTIDAD OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_2(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_2
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FEC_DESDE IN DATE ,
        P_FEC_HASTA IN DATE ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_ID_TIP_RESP IN INTEGER ,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER ,
        P_ID_TIP_INF IN TYP_TBL_INTEGER ,
        P_COD_USU_GEST IN VARCHAR2 ,
        P_CURSOR_TOTAL OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_RESP OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_DEL OUT SYS_REFCURSOR ,
        P_CURSOR_TIPO_INF OUT SYS_REFCURSOR ,
        P_CURSOR_ENTIDAD OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_3(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_3
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_ID_TIP_OBS IN INTEGER ,
        P_COD_UNI_ORG IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_4(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_4
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_5(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_5
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_ID_TIP_RESP IN INTEGER ,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER ,
        P_ID_TIP_INF IN TYP_TBL_INTEGER ,
        P_ID_TEMATICA IN INTEGER ,
        P_NUM_ENVIO IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_COD_USU_COORD IN VARCHAR2 ,
        P_COD_USU_GESTOR IN VARCHAR2 ,
        P_COD_UNI_ORG IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_6(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_6
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_ID_TIP_RESP IN INTEGER ,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER ,
        P_ID_TIP_INF IN TYP_TBL_INTEGER ,
        P_ID_TEMATICA IN INTEGER ,
        P_NUM_ENVIO IN VARCHAR2 ,
        P_NUM_REG IN VARCHAR2 ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_COD_USU_COORD IN VARCHAR2 ,
        P_COD_USU_GESTOR IN VARCHAR2 ,
        P_COD_USU_GERENTE IN VARCHAR2 ,
        P_COD_UNI_ORG IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_7(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_7
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_COD_USU_GESTOR IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_REPORTE_8(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_8
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FECHA_INICIO IN DATE ,
        P_FECHA_FIN IN DATE ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_BP(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_BP
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_BP IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_BP_CASO_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_BP_CASO_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_CASO_CORREOS_AUT(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_CASO_CORREOS_AUT
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_CAS_SAB(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_CAS_SAB
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_PROY_CASO IN INTEGER ,
        P_ID_CASO_SABEC IN INTEGER ,
        P_CURSOR_CASO OUT SYS_REFCURSOR ,
        P_CURSOR_ADJUNTOS OUT SYS_REFCURSOR ,
        P_CURSOR_AUDITORES_ENCARGADOS OUT SYS_REFCURSOR ,
        P_CURSOR_RESULTADOS_FINALES OUT SYS_REFCURSOR ,
        P_CURSOR_BUENAS_PRACTICAS OUT SYS_REFCURSOR ,
        P_CURSOR_LECCIONES_APRENDIDAS OUT SYS_REFCURSOR ,
        P_CURSOR_OBSERVACIONES OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_GES_SAB_ASIGN(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_GES_SAB_ASIGN
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_COD_TIP_RESP IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_GUIA_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_GUIA_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_NUM_CASOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_NUM_CASOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_FILTRO IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PARAM_BY_ID(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_BY_ID
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_CURSOR_PAR OUT SYS_REFCURSOR ,
        P_CURSOR_PAR_VAL OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PARAM_VAL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CODIGO_PARAMETRO IN VARCHAR2 ,
        P_CODIGO_VALOR IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_BY_COD(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_BY_COD
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CODIGO_PARAMETRO IN VARCHAR2 ,
        P_SOLO_ACTIVOS IN NUMBER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_BY_ID(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_BY_ID
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_FILT(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_FILT
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
       P_CODIGO_PARAMETRO IN VARCHAR2,
        P_DESCRIPCION IN VARCHAR2,
        P_VAL_STRING_1 IN VARCHAR2,
        P_VAL_STRING_2 IN VARCHAR2,
        P_VAL_STRING_3 IN VARCHAR2,
        P_VAL_STRING_4 IN VARCHAR2,
        P_VAL_INT_1 IN NUMBER,
        P_VAL_INT_2 IN NUMBER,
        P_VAL_INT_3 IN NUMBER,
        P_VAL_INT_4 IN NUMBER,
        P_CODIGO IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PC_ADJ_BY_ID(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PC_ADJ_BY_ID
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PLAZO_DIAS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PLAZO_DIAS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_COD_ROL IN VARCHAR2 ,
        P_COD_TIP IN VARCHAR2 ,
        P_COD_ESTADO IN VARCHAR2 ,
        P_ID_PROY_CASO IN INTEGER ,
        P_ID_PROY_CASO_SABEC IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_PROY_CASO_BY_ID(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PROY_CASO_BY_ID
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_CURSOR_PROYECTO OUT SYS_REFCURSOR ,
        P_CURSOR_ADJUNTOS OUT SYS_REFCURSOR ,
        P_CURSOR_TIPOS_DELITO OUT SYS_REFCURSOR ,
        P_CURSOR_OBSERVACIONES OUT SYS_REFCURSOR ,
        P_CURSOR_INFRACCION OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP3_ANIOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_ANIOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP3_MESES(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_MESES
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP3_OBS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_OBS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP3_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP5_ANIOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_ANIOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP5_MESES(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_MESES
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP5_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP6_ANIOS(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_ANIOS
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP6_MESES(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_MESES
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP6_UO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_UO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ANIO IN INTEGER ,
        P_MES IN INTEGER ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_REP_USU_ROL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP_USU_ROL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ROL IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_SEL_TIP_INC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_TIP_INC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_COD_ROL IN VARCHAR2 ,
        P_COD_TIP IN VARCHAR2 ,
        P_CURSOR OUT SYS_REFCURSOR
    );

    PROCEDURE PA_SABEC_UPD_CASO_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_CASO_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_ID_PROYECTO_CASO IN INTEGER ,
        P_ID_ESTADO IN INTEGER ,
        P_FECHA_INICIO_EVALUACION IN DATE ,
        P_FECHA_ENVIO IN DATE ,
        P_NOM_USU_DEST IN VARCHAR2 ,
        P_COD_USU_DEST IN VARCHAR2 ,
        P_ID_ROL_DEST IN INTEGER ,
        P_NOM_USU_REM IN VARCHAR2 ,
        P_COD_USU_REM IN VARCHAR2 ,
        P_ID_ROL_REM IN INTEGER ,
        P_ID_TEMATICA IN INTEGER ,
        P_ASUNTO IN VARCHAR2 ,
        P_FECHA_INI_AUDIT IN DATE ,
        P_FECHA_FIN_AUDIT IN DATE ,
        P_UO_EMISOR IN VARCHAR2 ,
        P_JEFE_OCI IN VARCHAR2 ,
        P_JEFE_COMISION IN VARCHAR2 ,
        P_SUPERVISOR IN VARCHAR2 ,
        P_ESPECIALISTA IN VARCHAR2 ,
        P_SINTESIS_AUDITORIA IN VARCHAR2 ,
        P_ID_ETAPA_CONCLUYE IN VARCHAR2 ,
        P_FUNDAMENTOS_JURIDICOS IN VARCHAR2 ,
        P_OTROS_FUNDAMENTOS_JUR IN VARCHAR2 ,
        P_IS_BUEN_PRACT IN NUMBER ,
        P_JUSTI_BUEN_PRACT IN VARCHAR2 ,
        P_IS_LECC_APREN IN NUMBER ,
        P_JUSTI_LECC_APREN IN VARCHAR2 ,
        P_AUDITORES_ENCARGADOS IN TYP_TBL_AUDIT_ENC ,
        P_RESULTADO_FINAL IN TYP_TBL_RESULT_FINAL ,
        P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC ,
        P_LECCIONES_APRENDIDAS IN TYP_TBL_LECCIONES_APREN ,
        P_USUARIO IN VARCHAR2 ,
        P_ID_GUIA_SABEC IN NUMBER ,
        P_LOAD_FEC_INICIO IN NUMBER ,
        P_LOAD_FEC_TERMINO IN NUMBER ,
        P_LOAD_UOEMISORA_INFORME IN NUMBER ,
        P_LOAD_JEFE_OCI IN NUMBER ,
        P_LOAD_JEFE_COMISION IN NUMBER ,
        P_LOAD_SUPERVISOR IN NUMBER ,
        P_LOAD_ESPECIALISTA IN NUMBER ,
        P_LOAD_SINTESIS_AUDITORIA IN NUMBER
    );

    PROCEDURE PA_SABEC_UPD_CS_OBS_SUB(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_CS_OBS_SUB
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER ,
        P_NOM_USUARIO IN VARCHAR2 ,
        P_COD_USUARIO IN VARCHAR2 ,
        P_ID_ROL_USUARIO IN INTEGER ,
        P_DETALLE IN VARCHAR2 ,
        P_ID_ESTADO IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PARAM(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PARAM
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_COD IN VARCHAR2 ,
        P_DESCRIPCION IN VARCHAR2 ,
        P_AUX1 IN VARCHAR2 ,
        P_AUX2 IN VARCHAR2 ,
        P_AUX3 IN VARCHAR2 ,
        P_AUX4 IN VARCHAR2 ,
        P_AUXNUM1 IN INTEGER ,
        P_AUXNUM2 IN INTEGER ,
        P_AUXNUM3 IN INTEGER ,
        P_AUXNUM4 IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PARAM_VAL(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PARAM_VAL
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_IDPARM IN INTEGER ,
        P_COD IN VARCHAR2 ,
        P_DESCRIPCION IN VARCHAR2 ,
        P_CAUX1 IN VARCHAR2 ,
        P_CAUX2 IN VARCHAR2 ,
        P_CAUX3 IN VARCHAR2 ,
        P_CAUX4 IN VARCHAR2 ,
        P_NAUX1 IN INTEGER ,
        P_NAUX2 IN INTEGER ,
        P_NAUX3 IN INTEGER ,
        P_NAUX4 IN INTEGER ,
        P_USUARIO IN VARCHAR2,
        P_ACTIVO IN VARCHAR2        
    );

    PROCEDURE PA_SABEC_UPD_PC_OBS_SUB(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PC_OBS_SUB
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_PROY_CASO IN INTEGER ,
        P_NOM_USUARIO IN VARCHAR2 ,
        P_COD_USUARIO IN VARCHAR2 ,
        P_ID_ROL_USUARIO IN INTEGER ,
        P_DETALLE IN VARCHAR2 ,
        P_ID_ESTADO IN INTEGER ,
        P_USUARIO IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PLAZOATDET_SABEC(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PLAZOATDET_SABEC
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_IDPLAZO IN INTEGER ,
        P_PLAZO_DIAS IN INTEGER ,
        P_NOM_USU_MODIF IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PLAZO_EST(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PLAZO_EST
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_PROY_CASO IN INTEGER ,
        P_PLAZO_DIAS IN INTEGER ,
        P_UND_ORGANICA IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PROY_CASO(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CASO
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_NUMERO_ENVIO IN VARCHAR2 ,
        P_ID_ESTADO IN INTEGER ,
        P_NOM_USU_REM IN VARCHAR2 ,
        P_COD_USU_REM IN VARCHAR2 ,
        P_ID_ROL_REM IN VARCHAR2 ,
        P_FECHA_ENVIO IN DATE ,
        P_NOM_USU_DEST IN VARCHAR2 ,
        P_COD_USU_DEST IN VARCHAR2 ,
        P_ID_ROL_DEST IN VARCHAR2 ,
        P_ID_TIPO_RESPONSABILIDAD IN INTEGER ,
        P_TIPO_DELITO IN TYP_TBL_INTEGER ,
        P_COD_ENTIDAD IN VARCHAR2 ,
        P_NOM_ENTIDAD IN VARCHAR2 ,
        P_DEP_ENTIDAD IN VARCHAR2 ,
        P_RESOLUCION_SENTENCIA IN VARCHAR2 ,
        P_NUMERO_INFORME IN VARCHAR2 ,
        P_DECISION_RESOLUCION IN VARCHAR2 ,
        P_INFRACCION IN TYP_TBL_INFRACCION ,
        P_ADJUNTOS IN TYP_TBL_ADJUNTO ,
        P_CONSIDERACIONES IN VARCHAR2 ,
        P_USUARIO IN VARCHAR2 ,
        P_COD_UNIDAD_ORGANICA IN VARCHAR2 ,
        P_NOM_UNIDAD_ORGANICA IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PROY_CASO_CAM_EST(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CASO_CAM_EST
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID IN INTEGER ,
        P_ID_ESTADO IN INTEGER ,
        P_NOM_USUARIO IN VARCHAR2 ,
        P_COD_USUARIO IN VARCHAR2 ,
        P_ID_ROL_USUARIO IN INTEGER ,
        P_USUARIO IN VARCHAR2 ,
        P_DETALLE IN VARCHAR2
    );

    PROCEDURE PA_SABEC_UPD_PROY_CAS_ASIG(
        /***************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CAS_ASIG
        AUTOR               :
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         :
        DESCRIPCION         :
        Revisiones            :
        VERSIÓN     FECHA MODIF.    USUARIO                                     DESCRIPCIÓN
        --------    ------------    ---------------------------------------     -----------
        1.0.0       02/05/2020      NESTOR                                      CÓDIGO ORIGINAL
        ****************************************************************************************/
        P_ID_PROY_CASO IN INTEGER ,
        P_ID_EST_CASO IN INTEGER ,
        P_NOM_USU_ASIGNA IN VARCHAR2 ,
        P_COD_USU_ASIGNA IN VARCHAR2 ,
        P_ID_ROL_USU_ASIGNA IN INTEGER ,
        P_ID_GESTOR IN INTEGER ,
        P_NOMBRE_GESTOR IN VARCHAR2 ,
        P_USUARIO IN VARCHAR2
    );

END PG_SABEC_PRINCIPAL;
/



CREATE OR REPLACE PACKAGE BODY SABEC.PG_SABEC_PRINCIPAL IS
/**************************************************************************************
NOMBRE DEL OBJETO   : PG_SABEC_PRINCIPAL
AUTOR               : NESTOR
FECHA DE CREACIÓN   : 02/05/2020
LLAMADO POR         : 
DESCRIPCIÓN         : PAQUETE DE CONSULTAS EN LA 10G
REVISIONES:
VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
--------    ------------    ----------------------------------     -----------
***************************************************************************************/
    
    FUNCTION FU_SABEC_OBT_ALERT_BP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_ALERT_BP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_NPCS_ID INTEGER
    ) RETURN VARCHAR2
    IS
        VD_RETURN VARCHAR2(32760);
    BEGIN
        SELECT SUBSTR(MAX(C_CAD), 2) INTO VD_RETURN
        FROM ( SELECT SYS_CONNECT_BY_PATH(CAD, '|') C_CAD
          FROM ( SELECT CAD,
                        ROW_NUMBER() OVER (ORDER BY CAD) FILA
                 FROM(
                    SELECT DISTINCT ALERTA.CALE_NUM_ALERTA CAD
                    FROM SABEC_PROY_CASO_SABEC_BP BP
                    INNER JOIN SABEC_ALERTA_SABEC ALERTA ON ALERTA.NALE_ID = BP.NALE_ID
                    WHERE BP.NPCS_ID = P_NPCS_ID
                  ) TABLA
                )
                START WITH FILA = 1
          CONNECT BY PRIOR FILA = FILA - 1 );

       RETURN VD_RETURN;
    END FU_SABEC_OBT_ALERT_BP;

    FUNCTION FU_SABEC_OBT_CAD_DELITO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_CAD_DELITO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_NPDC_ID INTEGER
    ) RETURN VARCHAR2
    IS
        VD_RETURN VARCHAR2(32760);
    BEGIN
        SELECT SUBSTR(MAX(C_CAD), 2) INTO VD_RETURN
        FROM ( SELECT SYS_CONNECT_BY_PATH(CPRV_DESCRIPCION, '|') C_CAD
          FROM ( SELECT CPRV_DESCRIPCION,
                        ROW_NUMBER() OVER (ORDER BY CPRV_DESCRIPCION) FILA
                 FROM(SELECT DISTINCT TD.CPRV_DESCRIPCION
                    FROM SABEC_PROY_CASO_TIP_DEL PCTD
                    INNER JOIN SABEC_PARAMETROS_VAL TD ON TD.NPRV_ID = PCTD.NPRV_ID_TIP_DEL
                    WHERE PCTD.NPDC_ID = P_NPDC_ID
                 ) TABLA
                )
                START WITH FILA = 1
          CONNECT BY PRIOR FILA = FILA - 1 );

       RETURN VD_RETURN;
    END FU_SABEC_OBT_CAD_DELITO;

    FUNCTION FU_SABEC_OBT_CAD_INFRACC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_CAD_INFRACC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_NPDC_ID INTEGER
    ) RETURN VARCHAR2
    IS VD_RETURN VARCHAR2(32760);
    BEGIN
        SELECT SUBSTR(MAX(C_CAD), 2) INTO VD_RETURN
        FROM ( SELECT SYS_CONNECT_BY_PATH(CPRV_DESCRIPCION, '|') C_CAD
          FROM ( SELECT CPRV_DESCRIPCION,
                        ROW_NUMBER() OVER (ORDER BY CPRV_DESCRIPCION) FILA
                 FROM(
                    SELECT DISTINCT TINF.CPRV_DESCRIPCION
                    FROM SABEC_PROY_CASO_INF PCINF
                    INNER JOIN SABEC_PARAMETROS_VAL TINF ON TINF.NPRV_ID = PCINF.NPCI_ID_INFRACCION
                    WHERE PCINF.NPDC_ID = P_NPDC_ID
                  ) TABLA
                )
                START WITH FILA = 1
          CONNECT BY PRIOR FILA = FILA - 1 );

       RETURN VD_RETURN;
    END FU_SABEC_OBT_CAD_INFRACC;

    FUNCTION FU_SABEC_OBT_DIAS_HABILES (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_DIAS_HABILES
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE
    )RETURN INTEGER
    IS
        II_RETURN INTEGER;
    BEGIN

        IF (TRUNC(P_FECHA_INICIO) >= TRUNC(P_FECHA_FIN)) THEN RETURN 0; END IF;
        IF (P_FECHA_FIN IS NULL) THEN RETURN NULL; END IF;
        SELECT COUNT(1) INTO II_RETURN
        FROM 
          (SELECT TO_CHAR(fechaPivot, 'DY') as diaSemana, 
                  (SELECT COUNT(1) 
                    FROM sabec_parametros_VAL PV
                    INNER JOIN sabec_parametros P ON P.NPAR_ID = PV.NPAR_ID
                    WHERE P.CPAR_COD = 'FERIADO' AND
                          PV.CPRV_AUX1 = to_char(fechaPivot, 'DD/MM/') ) feriado
           FROM(SELECT TRUNC(P_FECHA_INICIO) + LEVEL as fechaPivot            
                FROM dual 
                CONNECT BY LEVEL <= (TRUNC(P_FECHA_FIN) - TRUNC(P_FECHA_INICIO))
                ) TABLE1
          WHERE fechaPivot <= P_FECHA_FIN
            ) TABLE2
        WHERE diaSemana NOT IN ('SAT', 'SUN','SAB','SÁB', 'DOM') and feriado = 0;


       RETURN II_RETURN;
    END FU_SABEC_OBT_DIAS_HABILES;

    FUNCTION FU_SABEC_OBT_FEC_BP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_FEC_BP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_NPCS_ID INTEGER
    ) RETURN VARCHAR2
    IS
        VD_RETURN VARCHAR2(32760);
    BEGIN
        SELECT SUBSTR(MAX(C_CAD), 2) INTO VD_RETURN
        FROM ( SELECT SYS_CONNECT_BY_PATH(CFECHA, '|') C_CAD
          FROM ( SELECT TO_CHAR(FECHA, 'DD/MM/YYYY') AS CFECHA,
                        ROW_NUMBER() OVER (ORDER BY FECHA) FILA
                 FROM(
                        SELECT DISTINCT A.DALE_FECHA_PUB FECHA
                        FROM SABEC_PROY_CASO_SABEC_BP BP
                        INNER JOIN SABEC_ALERTA_SABEC A ON A.NALE_ID = BP.NALE_ID
                        WHERE BP.NPCS_ID = P_NPCS_ID
                  ) TABLA
                )
                START WITH FILA = 1
          CONNECT BY PRIOR FILA = FILA - 1 );

       RETURN VD_RETURN;
    END FU_SABEC_OBT_FEC_BP;

    FUNCTION FU_SABEC_OBT_ULT_DIA_SEM (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : FU_SABEC_OBT_ULT_DIA_SEM
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA IN DATE,
        P_FECHA_LIM IN DATE
    ) RETURN DATE
    IS
        P_FECHA_LIM_FINAL DATE;
        VD_RETURN DATE;
    BEGIN

        VD_RETURN := TRUNC(P_FECHA, 'IW')+ 7 - 1/86400;

        IF(P_FECHA_LIM IS NULL) THEN
            P_FECHA_LIM_FINAL := SYSDATE;
        ELSE
            P_FECHA_LIM_FINAL := P_FECHA_LIM;
        END IF;

        IF(TO_NUMBER(TO_CHAR(P_FECHA_LIM_FINAL,'YYYYMMDD')) > TO_NUMBER(TO_CHAR(SYSDATE,'YYYYMMDD'))) THEN
            P_FECHA_LIM_FINAL := SYSDATE;
        END IF;

        IF(TO_NUMBER(TO_CHAR(VD_RETURN,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_LIM_FINAL,'YYYYMMDD'))) THEN
            RETURN VD_RETURN;
        ELSE
            RETURN P_FECHA_LIM_FINAL;
        END IF;
    END FU_SABEC_OBT_ULT_DIA_SEM;

    FUNCTION SABEC_OBT_ID_PARAMETRO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : SABEC_OBT_ID_PARAMETRO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_COD_PAR IN VARCHAR2,
        P_COD_PAR_VAL IN VARCHAR2
    )RETURN INTEGER 
    IS
        ID_RETURN INTEGER;
    BEGIN
       SELECT PV.NPRV_ID INTO ID_RETURN
       FROM SABEC_PARAMETROS P
       INNER JOIN SABEC_PARAMETROS_VAL PV ON PV.NPAR_ID = P.NPAR_ID
       WHERE P.CPAR_COD = P_COD_PAR AND PV.CPRV_COD = P_COD_PAR_VAL;

       RETURN ID_RETURN;
    END SABEC_OBT_ID_PARAMETRO;

    PROCEDURE PA_SABEC_ALERTAS_NOTIFICACION (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_ALERTAS_NOTIFICACION
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    BEGIN
       OPEN P_CURSOR FOR
       SELECT   NALE_ID AS idAlerta,
                CALE_NUM_ALERTA AS nroAlerta,
                DALE_FECHA_PUB AS fechaPublicacion
       FROM (
           SELECT   NALE_ID,
                    CALE_NUM_ALERTA,
                    DALE_FECHA_PUB
           FROM SABEC_ALERTA_SABEC A
           ORDER BY NALE_ID DESC
        ) T
        WHERE ROWNUM <= 10;
    END PA_SABEC_ALERTAS_NOTIFICACION;

    PROCEDURE PA_SABEC_BAN_BP_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_BP_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_TEMATICA IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_PUBLICACION_DESDE IN DATE,
        P_FEC_PUBLICACION_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_TEMATICA     VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_PUB      VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES25''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCasoSabec'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;

        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_TEMATICA = 0 OR P_TEMATICA IS NULL) THEN
            CP_TEMATICA := ' ';
        ELSE
            CP_TEMATICA := ' AND SABEC.NPRV_ID_TEMATICA = '|| TO_CHAR(P_TEMATICA);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND SABEC.CPCS_NUM_PUB LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_PUB := ' ';
        IF (P_FEC_PUBLICACION_DESDE IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_PUBLICACION_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_PUBLICACION_HASTA IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_PUBLICACION_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, idCasoSabec, idProyectoCaso, idAlertaSabec, numeroCasoSabec, entidad, idTipoResponsabilidad,
                tipoResponsabilidad, fechaPublicacion, nroAlertaSabec, numeroInforme
        FROM
        (SELECT ROWNUM AS FILA, idCasoSabec, idProyectoCaso, idAlertaSabec, numeroCasoSabec, entidad, idTipoResponsabilidad,
                tipoResponsabilidad, fechaPublicacion, nroAlertaSabec, numeroInforme
        FROM
            (SELECT
                SABEC.NPCS_ID AS idCasoSabec,
                PCASO.NPDC_ID AS idProyectoCaso,
                ALER.NALE_ID AS idAlertaSabec,
                SABEC.CPCS_NUM_PUB AS numeroCasoSabec,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.DPDC_FECHA_PUB AS fechaPublicacion,
                ALER.CALE_NUM_ALERTA AS nroAlertaSabec,
                PCASO.cpdc_nro_infor_aud AS numeroInforme
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            INNER JOIN SABEC_ALERTA_SABEC ALER ON ALER.NALE_ID = SABEC.NALE_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  SABEC.NPCS_BP = 1 AND
                  PCASO.NPDC_ACTIVO = 1 AND
                  EXISTS (SELECT 1 FROM SABEC_PROY_CASO_SABEC_BP BP WHERE BP.NPCS_ID = SABEC.NPCS_ID AND BP.NPSB_PUBLICADO = 0) '
              || CP_TIPO_RESP
              || CP_TEMATICA
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_PUB
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
                            INNER JOIN SABEC_ALERTA_SABEC ALER ON ALER.NALE_ID = SABEC.NALE_ID
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND 
                                  SABEC.NPCS_BP = 1 AND 
                                  PCASO.NPDC_ACTIVO = 1 AND
                                  EXISTS (SELECT 1 FROM SABEC_PROY_CASO_SABEC_BP BP WHERE BP.NPCS_ID = SABEC.NPCS_ID AND BP.NPSB_PUBLICADO = 0) '
                              || CP_TIPO_RESP
                              || CP_TEMATICA
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_PUB
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_BP_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_CAS_SABEC_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_CAS_SABEC_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_VAL_DESDE IN DATE,
        P_FEC_VAL_HASTA IN DATE,
        P_FEC_PUB_DESDE IN DATE,
        P_FEC_PUB_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_ENVIO    VARCHAR2(300);
    CP_FEC_PUB      VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES22'',''ES25''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'nroProyecto'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;

        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_ENVIO := ' ';
        IF (P_FEC_VAL_DESDE IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_VAL_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_VAL_HASTA IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_VAL_HASTA,'YYYYMMDD') || '''';
        END IF;

        CP_FEC_PUB := ' ';
        IF (P_FEC_PUB_DESDE IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_PUB_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_PUB_HASTA IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_PUB_HASTA,'YYYYMMDD') || '''';
        END IF;

        RC_QUERY := '
        SELECT FILA, idCasoSabec, idProyectoCaso, idAlertaSabec, nroProyecto, entidad, idTipoResponsabilidad,
                tipoResponsabilidad, fechaValidacion, fechaPublicacion, nroAlertaSabec, nroCasoSabec,idEstado,
                estado,estadoCodigo,asunto,numeroPublicacion, numeroInforme
        FROM
        (SELECT ROWNUM AS FILA, idCasoSabec, idProyectoCaso, idAlertaSabec, nroProyecto, entidad, idTipoResponsabilidad,
                tipoResponsabilidad, fechaValidacion, fechaPublicacion, nroAlertaSabec, nroCasoSabec,idEstado,
                estado,estadoCodigo,asunto,numeroPublicacion, numeroInforme
        FROM
            (SELECT
                SABEC.NPCS_ID AS idCasoSabec,
                PCASO.NPDC_ID AS idProyectoCaso,
                ALER.NALE_ID AS idAlertaSabec,
                PCASO.CPDC_NUM_ENVIO AS nroProyecto,
                SABEC.CPCS_ASUNTO AS asunto,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.DPDC_FECHA_ENVIO AS fechaValidacion,
                PCASO.DPDC_FECHA_PUB AS fechaPublicacion,
                ALER.CALE_NUM_ALERTA AS nroAlertaSabec,
                SABEC.CPCS_NUM_PUB AS nroCasoSabec,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.CPCS_NUM_PUB AS numeroPublicacion,
                PCASO.cpdc_nro_infor_aud AS numeroInforme
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            LEFT JOIN SABEC_ALERTA_SABEC ALER ON ALER.NALE_ID = SABEC.NALE_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_ENVIO
              || CP_FEC_PUB
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_ENVIO
                              || CP_FEC_PUB
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_CAS_SABEC_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_CP_CO_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_CP_CO_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_GESTOR IN INTEGER,
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(15000);
    CP_GESTOR       VARCHAR2(300);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(300);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES07'', ''ES11''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_ID_GESTOR = 0) THEN
            CP_GESTOR := ' ';
        ELSE
            CP_GESTOR := ' AND PASIG.NPRV_ID_GESTOR = '|| TO_CHAR(P_ID_GESTOR);
        END IF;
        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        RC_QUERY := '
        SELECT FILA, idGestor, gestor, id, numeroCaso, entidad,
               idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo
        FROM
        (SELECT ROWNUM AS FILA, idGestor, gestor, id, numeroCaso, entidad,
               idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo
        FROM
            (SELECT
                PASIG.NPRV_ID_GESTOR AS idGestor,
                PCASO.CPDC_NOM_GESTOR AS gestor,
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PROY_CASO_ASIG PASIG ON PCASO.NPDC_ID = PASIG.NPDC_ID AND PASIG.NPCA_ACTIVO = 1
            INNER JOIN SABEC_PARAMETROS_VAL PGEST ON PASIG.NPRV_ID_GESTOR = PGEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1  '
              || CP_GESTOR
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PROY_CASO_ASIG PASIG ON PCASO.NPDC_ID = PASIG.NPDC_ID AND PASIG.NPCA_ACTIVO = 1
                            INNER JOIN SABEC_PARAMETROS_VAL PGEST ON PASIG.NPRV_ID_GESTOR = PGEST.NPRV_ID
                            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                                  PCASO.NPDC_ACTIVO = 1  '
                              || CP_GESTOR
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_CP_CO_GDEE;

    PROCEDURE PA_SABEC_BAN_ENT_CO_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_CO_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_REMITE_DESDE IN DATE,
        P_FEC_REMITE_HASTA IN DATE,
        --P_USUARIO_REMITE IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_REMITE   VARCHAR2(500);
    --CP_USUARIO_REMITE VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES02'',''ES06'',''ES12'',''ES16''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_REMITE := ' ';
        IF (P_FEC_REMITE_DESDE IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_REMITE_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_REMITE_HASTA IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_REMITE_HASTA,'YYYYMMDD') || '''';
        END IF;
       /* IF (P_USUARIO_REMITE IS NULL) THEN
            CP_USUARIO_REMITE := '';
        ELSE
            CP_USUARIO_REMITE := ' AND PCASO.CPDC_USUARIO_REMITE = '''|| P_USUARIO_REMITE || '''';
        END IF;*/
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
               IdTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
               idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
               IdTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
               idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REMITE AS fechaEnvio,
                PCASO.CPDC_NOM_USU_REMITE AS remitente,
                PR.CPRV_DESCRIPCION AS rolRemitente,
                PCASO.NPRV_ID_TIP_RESP AS IdTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_REMITE
              --|| CP_USUARIO_REMITE
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_REMITE
                              --|| CP_USUARIO_REMITE
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_ENT_CO_GDEE;    

    PROCEDURE PA_SABEC_BAN_ENT_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_REMITE_DESDE IN DATE,
        P_FEC_REMITE_HASTA IN DATE,
        --P_USUARIO_REMITE IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_REMITE   VARCHAR2(500);
    --    CP_USUARIO_REMITE VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES17'',''ES21''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_REMITE := ' ';
        IF (P_FEC_REMITE_DESDE IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_REMITE_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_REMITE_HASTA IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_REMITE_HASTA,'YYYYMMDD') || '''';
        END IF;
    /*        IF (P_USUARIO_REMITE IS NULL) THEN
            CP_USUARIO_REMITE := '';
        ELSE
            CP_USUARIO_REMITE := ' AND PCASO.CPDC_USUARIO_REMITE = '''|| P_USUARIO_REMITE || '''';
        END IF;*/
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
                     idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado,
                     estadoCodigo, idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
                     idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado,
                     estadoCodigo, idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REMITE AS fechaEnvio,
                PCASO.CPDC_NOM_USU_REMITE AS remitente,
                PR.CPRV_DESCRIPCION AS rolRemitente,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_REMITE
    --              || CP_USUARIO_REMITE
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_REMITE
    --                              || CP_USUARIO_REMITE
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;

    END PA_SABEC_BAN_ENT_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_ENT_GE_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_GE_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_USU_GEST IN VARCHAR2,
        P_FEC_REMITE_DESDE IN DATE,
        P_FEC_REMITE_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_REMITE   VARCHAR2(500);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES07'',''ES11'',''ES14'',''ES19''';

        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_REMITE := ' ';
        IF (P_FEC_REMITE_DESDE IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_REMITE_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_REMITE_HASTA IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_REMITE_HASTA,'YYYYMMDD') || '''';
        END IF;

        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente,
               idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
               idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente,
               idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
               idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REMITE AS fechaEnvio,
                PCASO.CPDC_NOM_USU_REMITE AS remitente,
                PR.CPRV_DESCRIPCION AS rolRemitente,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                  PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1  '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_REMITE
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                                  PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_REMITE
                            INTO P_TOT_REGISTROS;

        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_ENT_GE_SABEC;

    PROCEDURE PA_SABEC_BAN_ENT_OPE_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_ENT_OPE_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_REMITE_DESDE IN DATE,
        P_FEC_REMITE_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_REMITE    VARCHAR2(500);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES04'', ''ES09''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_REMITE := ' ';
        IF (P_FEC_REMITE_DESDE IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_REMITE_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_REMITE_HASTA IS NOT NULL) THEN
            CP_FEC_REMITE := CP_FEC_REMITE ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REMITE,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_REMITE_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
                     idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado,
                     estadoCodigo
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, remitente, rolRemitente, 
                     idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado,
                     estadoCodigo
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REMITE AS fechaEnvio,
                PCASO.CPDC_NOM_USU_REMITE AS remitente,
                PR.CPRV_DESCRIPCION AS rolRemitente,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_REMITE = PR.NPRV_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_REMITE
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_REMITE
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_ENT_OPE_UO;

    PROCEDURE PA_SABEC_BAN_PARAM (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PARAM
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_DESCRIPCION IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_DESCRIPCION    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'id'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'ASC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_DESCRIPCION IS NULL) THEN
            CP_DESCRIPCION := ' ';
        ELSE
            CP_DESCRIPCION := ' AND UPPER(PAR.CPAR_DESCRIPCION) LIKE ''%'|| UPPER(P_DESCRIPCION) || '%''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, codigo, descripcion, valorAuxString1, valorAuxString2, valorAuxString3, valorAuxString4,
                valorAuxNumero1, valorAuxNumero2, valorAuxNumero3, valorAuxNumero4,
                usuarioRegistro, fechaRegistro, usuarioModificacion, fechaModificacion, editable, numero
        FROM (
        SELECT ROWNUM AS FILA, id, codigo, descripcion, valorAuxString1, valorAuxString2, valorAuxString3, valorAuxString4,
                valorAuxNumero1, valorAuxNumero2, valorAuxNumero3, valorAuxNumero4,
                usuarioRegistro, fechaRegistro, usuarioModificacion, fechaModificacion, editable, ROWNUM numero
        FROM
            (SELECT
                PAR.NPAR_ID AS id,
                PAR.CPAR_COD AS codigo,
                PAR.CPAR_DESCRIPCION AS descripcion,
                PAR.CPAR_AUX1 AS valorAuxString1,
                PAR.CPAR_AUX2 AS valorAuxString2,
                PAR.CPAR_AUX3 AS valorAuxString3,
                PAR.CPAR_AUX4 AS valorAuxString4,
                PAR.NPAR_AUX1 AS valorAuxNumero1,
                PAR.NPAR_AUX2 AS valorAuxNumero2,
                PAR.NPAR_AUX3 AS valorAuxNumero3,
                PAR.NPAR_AUX4 AS valorAuxNumero4,

                PAR.CPAR_USUARIO_INSERTO AS usuarioRegistro,
                PAR.DPAR_FECHA_INSERTO AS fechaRegistro,
                PAR.CPAR_USUARIO_MODIFICO AS usuarioModificacion,
                PAR.DPAR_FECHA_MODIFICO AS fechaModificacion,
                (CASE PAR.CPAR_EDITABLE WHEN ''S'' THEN ''SI'' ELSE ''NO'' END) AS editable
            FROM SABEC_PARAMETROS PAR
            WHERE 1 = 1 '
              || CP_DESCRIPCION
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PARAMETROS PAR
                            WHERE 1 = 1 '
                              || CP_DESCRIPCION
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PARAM;

    PROCEDURE PA_SABEC_BAN_PARAM_VAL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PARAM_VAL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_ID    VARCHAR2(300);

    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'id'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'ASC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_ID = 0) THEN
            CP_ID := ' ';
        ELSE
            CP_ID := ' AND PVAL.NPAR_ID = '|| TO_CHAR(P_ID);
        END IF;
        RC_QUERY := '
        SELECT FILA, id, idParametro, codigo, descripcion, valorAuxString1, valorAuxString2, valorAuxString3, valorAuxString4,
                valorAuxNumero1, valorAuxNumero2, valorAuxNumero3, valorAuxNumero4, estado,
                usuarioRegistro, fechaRegistro, usuarioModificacion, fechaModificacion,numero
        FROM (
        SELECT ROWNUM AS FILA, id, idParametro, codigo, descripcion, valorAuxString1, valorAuxString2, valorAuxString3, valorAuxString4,
                valorAuxNumero1, valorAuxNumero2, valorAuxNumero3, valorAuxNumero4, estado,
                usuarioRegistro, fechaRegistro, usuarioModificacion, fechaModificacion, ROWNUM as numero
        FROM
            (SELECT
                PVAL.NPRV_ID AS id,
                PVAL.NPAR_ID AS idParametro,
                --ROW_NUMBER() OVER(PARTITION BY PVAL.NPAR_ID ORDER BY PVAL.NPRV_ID) as numero,
                PVAL.CPRV_COD AS codigo,
                PVAL.CPRV_DESCRIPCION AS descripcion,
                PVAL.CPRV_AUX1 AS valorAuxString1,
                PVAL.CPRV_AUX2 AS valorAuxString2,
                PVAL.CPRV_AUX3 AS valorAuxString3,
                PVAL.CPRV_AUX4 AS valorAuxString4,
                PVAL.NPRV_AUX1 AS valorAuxNumero1,
                PVAL.NPRV_AUX2 AS valorAuxNumero2,
                PVAL.NPRV_AUX3 AS valorAuxNumero3,
                PVAL.NPRV_AUX4 AS valorAuxNumero4,
                PVAL.CPRV_USUARIO_INSERTO AS usuarioRegistro,
                PVAL.DPRV_FECHA_INSERTO AS fechaRegistro,
                PVAL.CPRV_USUARIO_MODIFICO AS usuarioModificacion,
                PVAL.DPRV_FECHA_MODIFICO AS fechaModificacion,
                NPRV_ACTIVO AS estado
            FROM SABEC_PARAMETROS_VAL PVAL
            WHERE 1 = 1 '
              || CP_ID
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PARAMETROS_VAL PVAL
                            WHERE 1 = 1 '
                              || CP_ID
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PARAM_VAL;

    PROCEDURE PA_SABEC_BAN_PC_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PC_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_VAL_DESDE IN DATE,
        P_FEC_VAL_HASTA IN DATE,
        P_FEC_PUB_DESDE IN DATE,
        P_FEC_PUB_HASTA IN DATE,
        P_NUM_ENVIO IN VARCHAR2,
        P_NUM_ALERTA IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_VAL      VARCHAR2(500);
    CP_FEC_PUB      VARCHAR2(500);
    CP_NUM_ENVIO    VARCHAR2(300);
    CP_NUM_ALERTA   VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES22'', ''ES25''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_REG LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        IF (P_NUM_ENVIO IS NULL) THEN
            CP_NUM_ENVIO := ' ';
        ELSE
            CP_NUM_ENVIO := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_ENVIO || '%''';
        END IF;
        IF (P_NUM_ALERTA IS NULL) THEN
            CP_NUM_ALERTA := ' ';
        ELSE
            CP_NUM_ALERTA := ' AND PCASO.CPDC_NUM_ALERTA LIKE ''%'|| P_NUM_ALERTA || '%''';
        END IF;
        CP_FEC_VAL := ' ';
        IF (P_FEC_VAL_DESDE IS NOT NULL) THEN
            CP_FEC_VAL := CP_FEC_VAL ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_VAL,''DDMMYYYY'') >= '''|| TO_CHAR(P_FEC_VAL_DESDE,'DDMMYYYY') || '''';
        END IF;
        IF (P_FEC_VAL_HASTA IS NOT NULL) THEN
            CP_FEC_VAL := CP_FEC_VAL ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_VAL,''DDMMYYYY'') <= '''|| TO_CHAR(P_FEC_VAL_HASTA,'DDMMYYYY') || '''';
        END IF;
        CP_FEC_PUB := ' ';
        IF (P_FEC_PUB_DESDE IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''DDMMYYYY'') >= '''|| TO_CHAR(P_FEC_PUB_DESDE,'DDMMYYYY') || '''';
        END IF;
        IF (P_FEC_PUB_HASTA IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_PUB,''DDMMYYYY'') <= '''|| TO_CHAR(P_FEC_PUB_HASTA,'DDMMYYYY') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numReg, entidad, fecRemite, usuRemite, rolRemite, tipRes, tipResDesc, estado, estadoDesc
        FROM
        (SELECT ROWNUM AS FILA, id, numReg, entidad, fecRemite, usuRemite, rolRemite, tipRes, tipResDesc, estado, estadoDesc
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_REG AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_VAL AS fecValidacion,
                PCASO.DPDC_FECHA_PUB AS fecPublicacion,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                PCASO.CPDC_NUM_ALERTA AS alertaSABEC,
                PCASO.CPDC_NUM_ENVIO AS numCasoSABEC
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_VAL
              || CP_FEC_PUB
              || CP_NUM_ENVIO
              || CP_NUM_ALERTA
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            WHERE PCASO.NPRV_ID_ESTADO IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_VAL
                              || CP_FEC_PUB
                              || CP_NUM_ENVIO
                              || CP_NUM_ALERTA
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PC_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_PEN_CO_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_CO_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_DEST_DESDE IN DATE,
        P_FEC_DEST_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_DEST     VARCHAR2(500);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES03'',''ES13''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_DEST := ' ';
        IF (P_FEC_DEST_DESDE IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_DEST_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_DEST_HASTA IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_DEST_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REGISTRO AS fechaRegistro,
                PCASO.DPDC_INICIO_ATENCION AS fechaAtencion,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_DEST
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_DEST
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PEN_CO_GDEE;

    PROCEDURE PA_SABEC_BAN_PEN_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_DEST_DESDE IN DATE,
        P_FEC_DEST_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_DEST     VARCHAR2(500);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES18''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_DEST := ' ';
        IF (P_FEC_DEST_DESDE IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_DEST_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_DEST_HASTA IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_DEST_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REGISTRO AS fechaRegistro,
                PCASO.DPDC_INICIO_ATENCION AS fechaAtencion,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_DEST
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_DEST
                            INTO P_TOT_REGISTROS;

        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PEN_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_PEN_GE_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_GE_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_USU_GEST IN VARCHAR2,
        P_FEC_DEST_DESDE IN DATE,
        P_FEC_DEST_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_DEST     VARCHAR2(500);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES08'', ''ES15'', ''ES20''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0 OR P_TIPO_RESP is null) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0 OR P_ESTADO is null ) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_DEST := ' ';
        IF (P_FEC_DEST_DESDE IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_DEST_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_DEST_HASTA IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_DEST_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,  
        tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad,  
        tipoResponsabilidad, idEstado, estado, estadoCodigo, idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REGISTRO AS fechaRegistro,
                PCASO.DPDC_INICIO_ATENCION AS fechaAtencion,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                  PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_DEST
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

      EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                                  PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_DEST
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PEN_GE_SABEC;

    PROCEDURE PA_SABEC_BAN_PEN_OPE_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PEN_OPE_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_DEST_DESDE IN DATE,
        P_FEC_DEST_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_DEST     VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES01'',''ES05'',''ES10''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND NVL(PCASO.CPDC_NUM_ENVIO,PCASO.CPDC_NUM_REG) LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_DEST := ' ';
        IF (P_FEC_DEST_DESDE IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_DEST_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_DEST_HASTA IS NOT NULL) THEN
            CP_FEC_DEST := CP_FEC_DEST ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_REGISTRO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_DEST_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad, tipoResponsabilidad,
        idEstado, estado, estadoCodigo
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaRegistro, fechaAtencion, idTipoResponsabilidad, tipoResponsabilidad,
        idEstado, estado, estadoCodigo
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                NVL(PCASO.CPDC_NUM_ENVIO,PCASO.CPDC_NUM_REG) AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_REGISTRO AS fechaRegistro,
                PCASO.DPDC_INICIO_ATENCION AS fechaAtencion,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado ,
                PVEST.CPRV_COD AS estadoCodigo
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 ' 
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_DEST
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') AND PCASO.NPDC_ACTIVO = 1 '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_DEST
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PEN_OPE_UO;

    PROCEDURE PA_SABEC_BAN_PLAZO_ATENCION (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_PLAZO_ATENCION
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_DESCRIPCION IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_DESCRIPCION    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);

        IF P_ORDEN_COL IS NULL OR UPPER(P_ORDEN_COL) = 'FILA' THEN CP_ORDEN_COL := 'descRol, descTipo'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'ASC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_DESCRIPCION IS NULL) THEN
            CP_DESCRIPCION := ' ';
        ELSE
            CP_DESCRIPCION := ' AND UPPER(INC.CTIN_DESCRIPCION) LIKE ''%'|| UPPER(P_DESCRIPCION) || '%''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, idRol, descRol, idTipo, descTipo, descripcion, plazoDias, 
                usuarioInserto, fechaInserto, usuarioModifico, fechaModifico
        FROM (
        SELECT ROWNUM AS FILA, id, idRol, descRol, idTipo, descTipo, descripcion, plazoDias, 
                usuarioInserto, fechaInserto, usuarioModifico, fechaModifico
        FROM
            (SELECT
                INC.NTIN_ID AS id,
                INC.NPRV_ID_ROL AS idRol,
                PVROL.CPRV_DESCRIPCION AS descRol,
                INC.NPRV_ID_TIPO AS idTipo,
                PVTIP.CPRV_DESCRIPCION AS descTipo,
                INC.CTIN_DESCRIPCION AS descripcion,
                INC.NTIN_PLAZO_DIAS AS plazoDias,
                INC.CTIN_USUARIO_INSERTO AS usuarioInserto,
                INC.DTIN_FECHA_INSERTO AS fechaInserto,
                INC.CTIN_USUARIO_MODIFICO AS usuarioModifico,
                INC.DTIN_FECHA_MODIFICO AS fechaModifico
            FROM SABEC_TIPO_INCONSISTENCIA INC
            INNER JOIN SABEC_PARAMETROS_VAL PVROL ON INC.NPRV_ID_ROL = PVROL.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVTIP ON INC.NPRV_ID_TIPO = PVTIP.NPRV_ID
            WHERE 1 = 1 '
              || CP_DESCRIPCION
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_TIPO_INCONSISTENCIA INC
                            INNER JOIN SABEC_PARAMETROS_VAL PVROL ON INC.NPRV_ID_ROL = PVROL.NPRV_ID
                            INNER JOIN SABEC_PARAMETROS_VAL PVTIP ON INC.NPRV_ID_TIPO = PVTIP.NPRV_ID
                            WHERE 1 = 1 '
                              || CP_DESCRIPCION
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_PLAZO_ATENCION;

    PROCEDURE PA_SABEC_BAN_SAL_CO_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_CO_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_ENVIO_DESDE IN DATE,
        P_FEC_ENVIO_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_ENVIO    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES04'',''ES07'',''ES14'',''ES17''';
    --        C_ESTADOS    := '5, 8, 15, 18';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_ENVIO := ' ';
        IF (P_FEC_ENVIO_DESDE IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_ENVIO_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_ENVIO_HASTA IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_ENVIO_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario,
                idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
                idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario,
                idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
                idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_ENVIO AS fechaEnvio,
                PCASO.CPDC_NOM_USU_DESTINO AS usuarioDestinatario,
                PR.CPRV_DESCRIPCION AS rolDestinatario,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_DESTINO = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_ENVIO
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_ENVIO
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_SAL_CO_GDEE;

    PROCEDURE PA_SABEC_BAN_SAL_GE_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_GE_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_ENVIO_DESDE IN DATE,
        P_FEC_ENVIO_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_ENVIO    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES19'',''ES22''';--'ES25''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;

        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_ENVIO := ' ';
        IF (P_FEC_ENVIO_DESDE IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_ENVIO_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_ENVIO_HASTA IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_ENVIO_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario,
                idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
                idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario,
                idTipoResponsabilidad, tipoResponsabilidad, idEstado, estado, estadoCodigo,
                idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_ENVIO AS fechaEnvio,
                PCASO.CPDC_NOM_USU_DESTINO AS usuarioDestinatario,
                PR.CPRV_DESCRIPCION AS rolDestinatario,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            LEFT JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_DESTINO = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_ENVIO
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_ENVIO
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_SAL_GE_GDEE;

    PROCEDURE PA_SABEC_BAN_SAL_GE_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_GE_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_USU_GEST IN VARCHAR2,
        P_FEC_ENVIO_DESDE IN DATE,
        P_FEC_ENVIO_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_ENVIO    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES09'',''ES12'',''ES16'',''ES21'',''ES24''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND PCASO.CPDC_NUM_ENVIO LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_ENVIO := ' ';
        IF (P_FEC_ENVIO_DESDE IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_ENVIO_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_ENVIO_HASTA IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_ENVIO_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, 
               rolDestinatario, idTipoResponsabilidad, tipoResponsabilidad, 
               idEstado, estado, estadoCodigo, idCasoSabec
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, 
               rolDestinatario, idTipoResponsabilidad, tipoResponsabilidad, 
               idEstado, estado, estadoCodigo, idCasoSabec
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                PCASO.CPDC_NUM_ENVIO AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_ENVIO AS fechaEnvio,
                PCASO.CPDC_NOM_USU_DESTINO AS usuarioDestinatario,
                PR.CPRV_DESCRIPCION AS rolDestinatario,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado,
                PVEST.CPRV_COD AS estadoCodigo,
                SABEC.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_DESTINO = PR.NPRV_ID
            LEFT JOIN SABEC_PROY_CASO_SABEC SABEC ON SABEC.NPDC_ID = PCASO.NPDC_ID
            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                  PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_ENVIO
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PCASO.CPDC_COD_GESTOR = '''||P_USU_GEST||''' AND 
                                  PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_ENVIO
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_SAL_GE_SABEC;

    PROCEDURE PA_SABEC_BAN_SAL_OPE_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_BAN_SAL_OPE_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,
        P_ESTADO IN INTEGER,
        P_ENTIDAD IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_FEC_ENVIO_DESDE IN DATE,
        P_FEC_ENVIO_HASTA IN DATE,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ESTADO       VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_REG      VARCHAR2(300);
    CP_FEC_ENVIO    VARCHAR2(300);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    C_ESTADOS       VARCHAR2(100);
    CP_ORDEN_COL    VARCHAR2(30);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);
        C_ESTADOS    := '''ES02'',''ES06'',''ES11'',''ES23''';
        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'numeroCaso'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;
        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PCASO.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ESTADO = 0) THEN
            CP_ESTADO := ' ';
        ELSE
            CP_ESTADO := ' AND PCASO.NPRV_ID_ESTADO = '|| TO_CHAR(P_ESTADO);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PCASO.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;
        IF (P_NUM_REG IS NULL) THEN
            CP_NUM_REG := ' ';
        ELSE
            CP_NUM_REG := ' AND NVL(PCASO.CPDC_NUM_ENVIO,PCASO.CPDC_NUM_REG) LIKE ''%'|| P_NUM_REG || '%''';
        END IF;
        CP_FEC_ENVIO := ' ';
        IF (P_FEC_ENVIO_DESDE IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_ENVIO_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_ENVIO_HASTA IS NOT NULL) THEN
            CP_FEC_ENVIO := CP_FEC_ENVIO ||
                            ' AND TO_CHAR(PCASO.DPDC_FECHA_ENVIO,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_ENVIO_HASTA,'YYYYMMDD') || '''';
        END IF;
        RC_QUERY := '
        SELECT FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo
        FROM
        (SELECT ROWNUM AS FILA, id, numeroCaso, entidad, fechaEnvio, usuarioDestinatario, rolDestinatario, idTipoResponsabilidad,
               tipoResponsabilidad, idEstado, estado, estadoCodigo
        FROM
            (SELECT
                PCASO.NPDC_ID AS id,
                NVL(PCASO.CPDC_NUM_ENVIO,PCASO.CPDC_NUM_REG) AS numeroCaso,
                PCASO.CPDC_NOM_ENTIDAD AS entidad,
                PCASO.DPDC_FECHA_ENVIO AS fechaEnvio,
                PCASO.CPDC_NOM_USU_DESTINO AS usuarioDestinatario,
                PR.CPRV_DESCRIPCION AS rolDestinatario,
                PCASO.NPRV_ID_TIP_RESP AS idTipoResponsabilidad,
                PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                PCASO.NPRV_ID_ESTADO AS idEstado,
                PVEST.CPRV_DESCRIPCION AS estado ,
                PVEST.CPRV_COD AS estadoCodigo
            FROM SABEC_PROY_CASO PCASO
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PCASO.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
            LEFT JOIN SABEC_PARAMETROS_VAL PR ON PCASO.NPRV_ID_ROL_DESTINO = PR.NPRV_ID
            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ')  AND
                  PCASO.NPDC_ACTIVO = 1 '
              || CP_TIPO_RESP
              || CP_ESTADO
              || CP_ENTIDAD
              || CP_NUM_REG
              || CP_FEC_ENVIO
              || C_ORDER_BY
              || ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;
        EXECUTE IMMEDIATE 'SELECT COUNT(1)
                            FROM SABEC_PROY_CASO PCASO
                            INNER JOIN SABEC_PARAMETROS_VAL PVEST ON PCASO.NPRV_ID_ESTADO = PVEST.NPRV_ID
                            WHERE PVEST.CPRV_COD IN (' || C_ESTADOS || ') '
                              || CP_TIPO_RESP
                              || CP_ESTADO
                              || CP_ENTIDAD
                              || CP_NUM_REG
                              || CP_FEC_ENVIO
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_BAN_SAL_OPE_UO;

    PROCEDURE PA_SABEC_CONFSIS_PLAATDET_GDEE (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONFSIS_PLAATDET_GDEE
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN P_CURSOR FOR SELECT ROWNUM AS GRILLA, DTIN_FECHA_MODIFICO, CTIN_USUARIO_MODIFICO, DTIN_FECHA_INSERTO, CTIN_USUARIO_INSERTO, NTIN_PLAZO_DIAS, CTIN_DESCRIPCION, NPRV_ID_TIPO, NPRV_ID_ROL, NTIN_ID
        FROM SABEC_TIPO_INCONSISTENCIA
        WHERE NTIN_ID = P_ID;
    END PA_SABEC_CONFSIS_PLAATDET_GDEE;

    PROCEDURE PA_SABEC_CONFSIS_PLAZOAT_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONFSIS_PLAZOAT_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN P_CURSOR FOR SELECT ROWNUM AS GRILLA, DTIN_FECHA_MODIFICO, CTIN_USUARIO_MODIFICO, DTIN_FECHA_INSERTO, CTIN_USUARIO_INSERTO, NTIN_PLAZO_DIAS, CTIN_DESCRIPCION, NPRV_ID_TIPO, NPRV_ID_ROL, NTIN_ID
        FROM SABEC_TIPO_INCONSISTENCIA;
    END PA_SABEC_CONFSIS_PLAZOAT_SABEC;

    PROCEDURE PA_SABEC_CONSULTA_CS_BP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_CONSULTA_CS_BP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_TIPO_RESP IN INTEGER,--
        P_ENTIDAD IN VARCHAR2,--
        P_NUM_CASO IN VARCHAR2,
        P_NUM_ALERT IN VARCHAR2,
        P_NUM_INF IN VARCHAR2,
        P_ASUN_CASO IN VARCHAR2,
        P_ASUN_ALERT IN VARCHAR2,
        P_FEC_DESDE IN DATE,--
        P_FEC_HASTA IN DATE,--
        P_SEMANTICA IN VARCHAR2,
        P_PAGINA IN INTEGER,
        P_REG_PAGINA IN INTEGER,
        P_ORDEN_COL IN VARCHAR2,
        P_ORDEN_TIPO IN VARCHAR2,
        P_TOT_REGISTROS OUT INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    RC_QUERY        VARCHAR2(10000);
    CP_TIPO_RESP    VARCHAR2(300);
    CP_ENTIDAD      VARCHAR2(300);
    CP_NUM_CASO     VARCHAR2(300);
    CP_NUM_ALERT    VARCHAR2(300);
    CP_NUM_INF    VARCHAR2(300);
    CP_ASUNTO_CASO  VARCHAR2(300);
    CP_ASUNTO_ALERT VARCHAR2(300);
    CP_FEC_PUB      VARCHAR2(300);
    CP_SEMANTICA    VARCHAR2(4000);
    CP_BP_SEMANTICA VARCHAR2(4000);
    N_FILA_DESDE    INTEGER;
    N_FILA_HASTA    INTEGER;
    C_FILA_DESDE    VARCHAR2(30);
    C_FILA_HASTA    VARCHAR2(30);
    CP_ORDEN_COL    VARCHAR2(100);
    CP_ORDEN_TIPO   VARCHAR2(30);
    C_ORDER_BY      VARCHAR2(300);
    BEGIN
        N_FILA_HASTA := P_PAGINA * P_REG_PAGINA;
        N_FILA_DESDE := N_FILA_HASTA - P_REG_PAGINA + 1;
        C_FILA_DESDE := TO_CHAR(N_FILA_DESDE);
        C_FILA_HASTA := TO_CHAR(N_FILA_HASTA);

        IF P_ORDEN_COL IS NULL THEN CP_ORDEN_COL := 'nroAlerta desc, nroCasoPublicado'; ELSE CP_ORDEN_COL := P_ORDEN_COL; END IF;
        IF P_ORDEN_TIPO IS NULL THEN CP_ORDEN_TIPO := 'DESC'; ELSE CP_ORDEN_TIPO := P_ORDEN_TIPO; END IF;

        C_ORDER_BY := ' ORDER BY ' || CP_ORDEN_COL || ' ' || CP_ORDEN_TIPO || ' ';

        IF (P_TIPO_RESP = 0 OR P_TIPO_RESP IS NULL) THEN
            CP_TIPO_RESP := ' ';
        ELSE
            CP_TIPO_RESP := ' AND PC.NPRV_ID_TIP_RESP = '|| TO_CHAR(P_TIPO_RESP);
        END IF;
        IF (P_ENTIDAD IS NULL) THEN
            CP_ENTIDAD := ' ';
        ELSE
            CP_ENTIDAD := ' AND PC.CPDC_COD_ENTIDAD = '|| P_ENTIDAD;
        END IF;

        CP_FEC_PUB := ' ';
        IF (P_FEC_DESDE IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(ALER.DALE_FECHA_PUB,''YYYYMMDD'') >= '''|| TO_CHAR(P_FEC_DESDE,'YYYYMMDD') || '''';
        END IF;
        IF (P_FEC_HASTA IS NOT NULL) THEN
            CP_FEC_PUB := CP_FEC_PUB ||
                            ' AND TO_CHAR(ALER.DALE_FECHA_PUB,''YYYYMMDD'') <= '''|| TO_CHAR(P_FEC_HASTA,'YYYYMMDD') || '''';
        END IF;

        IF (P_NUM_CASO IS NULL) THEN
            CP_NUM_CASO := ' ';
        ELSE
            CP_NUM_CASO := ' AND UPPER(PS.CPCS_NUM_PUB) LIKE ''%'|| UPPER(P_NUM_CASO) || '%''';
        END IF;

        IF (P_NUM_ALERT IS NULL) THEN
            CP_NUM_ALERT := ' ';
        ELSE
            CP_NUM_ALERT := ' AND UPPER(ALER.CALE_NUM_ALERTA) LIKE ''%'|| UPPER(P_NUM_ALERT) || '%''';
        END IF;

        IF (P_ASUN_CASO IS NULL) THEN
            CP_ASUNTO_CASO := ' ';
        ELSE
            CP_ASUNTO_CASO := ' AND UPPER(PS.CPCS_ASUNTO) LIKE ''%'|| UPPER(P_ASUN_CASO) || '%''';
        END IF;

        IF (P_NUM_INF IS NULL) THEN
            CP_NUM_INF := ' ';
        ELSE
            CP_NUM_INF := ' AND UPPER(PC.CPDC_NRO_INFOR_AUD) LIKE ''%'|| UPPER(P_NUM_INF) || '%''';
        END IF;


        IF (P_ASUN_ALERT IS NULL) THEN
            CP_ASUNTO_ALERT := ' ';
        ELSE
            CP_ASUNTO_ALERT := ' AND UPPER(ALER.CALE_ASUNTO) LIKE ''%'|| UPPER(P_ASUN_ALERT) || '%''';
        END IF;

        IF (P_SEMANTICA IS NULL) THEN
            CP_SEMANTICA := ' ';
            CP_BP_SEMANTICA := ' ';
        ELSE
            CP_SEMANTICA := ' AND (1 = 0 ';
            CP_SEMANTICA := CP_SEMANTICA || ' OR UPPER(PC.CPDC_NOM_ENTIDAD) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_SEMANTICA := CP_SEMANTICA || ' OR UPPER(ALER.CALE_NUM_ALERTA) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_SEMANTICA := CP_SEMANTICA || ' OR UPPER(TEM.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_SEMANTICA := CP_SEMANTICA || ' OR UPPER(PVRES.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_SEMANTICA := CP_SEMANTICA || ' OR EXISTS(SELECT 1 FROM SABEC_PROY_CASO_TIP_DEL TD';
            CP_SEMANTICA := CP_SEMANTICA || ' INNER JOIN SABEC_PARAMETROS_VAL P ON TD.NPRV_ID_TIP_DEL = P.NPRV_ID';
            CP_SEMANTICA := CP_SEMANTICA || ' WHERE TD.NPDC_ID = PC.NPDC_ID AND UPPER(P.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) ||'%'')';
            CP_SEMANTICA := CP_SEMANTICA || ' OR EXISTS(SELECT 1 FROM SABEC_PROY_CASO_SABEC_BP BP';
            CP_SEMANTICA := CP_SEMANTICA || ' INNER JOIN SABEC_PARAMETROS_VAL P ON BP.NPRV_ID_SUB_CATEGORIA = P.NPRV_ID';
            CP_SEMANTICA := CP_SEMANTICA || ' WHERE BP.NPCS_ID = PS.NPCS_ID AND UPPER(P.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) ||'%'')';
            CP_SEMANTICA := CP_SEMANTICA || ')';

            CP_BP_SEMANTICA := ' AND (1 = 0 ';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR UPPER(PC.CPDC_NOM_ENTIDAD) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR UPPER(ALER.CALE_NUM_ALERTA) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR UPPER(TEM.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR UPPER(PVRES.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR EXISTS(SELECT 1 FROM SABEC_PROY_CASO_TIP_DEL TD';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' INNER JOIN SABEC_PARAMETROS_VAL P ON TD.NPRV_ID_TIP_DEL = P.NPRV_ID';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' WHERE TD.NPDC_ID = PC.NPDC_ID AND UPPER(P.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) ||'%'')';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ' OR UPPER(SBP.CPRV_DESCRIPCION) LIKE ''%'|| UPPER(P_SEMANTICA) || '%''';
            CP_BP_SEMANTICA := CP_BP_SEMANTICA || ')';
        END IF;

        RC_QUERY := '
        SELECT FILA, 
                idProyectoCaso, 
                idCasoSabec,
                idBp,
                nroAlerta, 
                origen,
                nroCasoPublicado, 
                asunto, 
                fechaPublicacion,
                entidad, 
                tipoResponsabilidad, 
                bp
        FROM
        (SELECT ROWNUM AS FILA, 
                idProyectoCaso, 
                idCasoSabec,
                idBp,
                nroAlerta, 
                origen,
                nroCasoPublicado, 
                asunto, 
                fechaPublicacion,
                entidad, 
                tipoResponsabilidad, 
                bp
        FROM
            (
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    PS.NPCS_ID AS idCasoSabec,
                    NULL AS idBp,
                    ALER.CALE_NUM_ALERTA AS nroAlerta,
                    ''CASO SABEC'' AS origen,
                    PS.CPCS_NUM_PUB AS nroCasoPublicado,
                    ALER.CALE_ASUNTO AS asunto,
                    ALER.DALE_FECHA_PUB AS fechaPublicacion,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    0 as bp
            FROM SABEC_ALERTA_SABEC ALER
            INNER JOIN SABEC_PROY_CASO_SABEC PS ON ALER.NALE_ID = PS.NALE_ID
            INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PC.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL TEM ON PS.NPRV_ID_TEMATICA = TEM.NPRV_ID
            WHERE 1 = 1 '
              || CP_TIPO_RESP
              || CP_ENTIDAD
              || CP_NUM_CASO
              || CP_NUM_ALERT
              || CP_ASUNTO_CASO
              || CP_ASUNTO_ALERT
              || CP_FEC_PUB
              || CP_NUM_INF
              || CP_SEMANTICA
              --|| C_ORDER_BY
              || '
            UNION ALL
            SELECT  NULL AS idProyectoCaso,
                    NULL AS idCasoSabec,
                    BP.NPSB_ID AS idBp,
                    ALER.CALE_NUM_ALERTA AS nroAlerta,
                    ''BUENA PRACTICA ''||BP.CPSB_NRO AS origen,
                    PS.CPCS_NUM_PUB AS nroCasoPublicado,
                    ALER.CALE_ASUNTO AS asunto,
                    ALER.DALE_FECHA_PUB AS fechaPublicacion,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    PVRES.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    1 as bp
            FROM SABEC_ALERTA_SABEC ALER
            INNER JOIN SABEC_PROY_CASO_SABEC_BP BP ON BP.NALE_ID = ALER.NALE_ID
            INNER JOIN SABEC_PROY_CASO_SABEC PS ON BP.NPCS_ID = PS.NPCS_ID
            INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PC.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL TEM ON PS.NPRV_ID_TEMATICA = TEM.NPRV_ID
            INNER JOIN SABEC_PARAMETROS_VAL SBP ON BP.NPRV_ID_SUB_CATEGORIA = SBP.NPRV_ID
            WHERE 1 = 1'
              || CP_TIPO_RESP
              || CP_ENTIDAD
              || CP_NUM_CASO
              || CP_NUM_ALERT
              || CP_ASUNTO_CASO
              || CP_ASUNTO_ALERT
              || CP_FEC_PUB
              || CP_NUM_INF
              || CP_BP_SEMANTICA
              || C_ORDER_BY
              ||
            ') TABLA1) TABLA2
        WHERE FILA >= ' || C_FILA_DESDE || ' AND FILA <= ' || C_FILA_HASTA;

        EXECUTE IMMEDIATE ' SELECT COUNT(1)
                            FROM(
                                SELECT 1 AS FILA
                                FROM SABEC_ALERTA_SABEC ALER
                                INNER JOIN SABEC_PROY_CASO_SABEC PS ON ALER.NALE_ID = PS.NALE_ID
                                INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
                                INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PC.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
                                INNER JOIN SABEC_PARAMETROS_VAL TEM ON PS.NPRV_ID_TEMATICA = TEM.NPRV_ID
                                WHERE 1 = 1 '
                                  || CP_TIPO_RESP
                                  || CP_ENTIDAD
                                  || CP_NUM_CASO
                                  || CP_NUM_ALERT
                                  || CP_ASUNTO_CASO
                                  || CP_ASUNTO_ALERT
                                  || CP_FEC_PUB
                                  || CP_NUM_INF
                                  || CP_SEMANTICA
                                  ||'
                                UNION ALL
                                SELECT 1 AS FILA
                                FROM SABEC_ALERTA_SABEC ALER
                                INNER JOIN SABEC_PROY_CASO_SABEC_BP BP ON BP.NALE_ID = ALER.NALE_ID
                                INNER JOIN SABEC_PROY_CASO_SABEC PS ON BP.NPCS_ID = PS.NPCS_ID
                                INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
                                INNER JOIN SABEC_PARAMETROS_VAL PVRES ON PC.NPRV_ID_TIP_RESP = PVRES.NPRV_ID
                                INNER JOIN SABEC_PARAMETROS_VAL TEM ON PS.NPRV_ID_TEMATICA = TEM.NPRV_ID
                                INNER JOIN SABEC_PARAMETROS_VAL SBP ON BP.NPRV_ID_SUB_CATEGORIA = SBP.NPRV_ID
                                WHERE 1 = 1 '
                                  || CP_TIPO_RESP
                                  || CP_ENTIDAD
                                  || CP_NUM_CASO
                                  || CP_NUM_ALERT
                                  || CP_ASUNTO_CASO
                                  || CP_ASUNTO_ALERT
                                  || CP_FEC_PUB
                                  || CP_NUM_INF
                                  || CP_BP_SEMANTICA
                                  ||'
                            )  T'
                            INTO P_TOT_REGISTROS;
        OPEN P_CURSOR FOR RC_QUERY;
    END PA_SABEC_CONSULTA_CS_BP;

    PROCEDURE PA_SABEC_DASHBOARD_ASIGN_GEST (
       /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_ASIGN_GEST
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
       P_FECHA_FIN IN DATE,
       P_CURSOR OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN P_CURSOR FOR
            SELECT CPDC_NOM_GESTOR AS nombreGestor,
                   CPDC_COD_GESTOR AS codigoGestor,
                   COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
            GROUP BY CPDC_NOM_GESTOR,CPDC_COD_GESTOR;
    END PA_SABEC_DASHBOARD_ASIGN_GEST;

    PROCEDURE PA_SABEC_DASHBOARD_EMIT_PUB (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_EMIT_PUB
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ENV_COOR_GDEE_REV INTEGER;
    V_ID_EST_PUBLICADO INTEGER;
    BEGIN
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_ENV_COOR_GDEE_REV := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');

        OPEN P_CURSOR FOR
            SELECT CPDC_NOM_GESTOR AS nombreGestor,
                   CPDC_COD_GESTOR AS codigoGestor,
                   COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_COOR_GDEE_REV
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
            GROUP BY CPDC_NOM_GESTOR,CPDC_COD_GESTOR;
    END PA_SABEC_DASHBOARD_EMIT_PUB;

    PROCEDURE PA_SABEC_DASHBOARD_NUM_CASOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_NUM_CASOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
       P_FECHA_FIN IN DATE,
       P_CURSOR_CASOS OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PUBLICADO INTEGER;
    V_ID_EST_CONCLUIDO_UO INTEGER;
    V_ID_EST_ENV_UO INTEGER;
    V_ID_EST_ENV_COOR_GDEE_REV INTEGER;
    V_ID_EST_VAL_COOR_GDEE INTEGER;
    V_ID_EST_VAL_GER_GDEE INTEGER;

    V_CANT_CASOS INTEGER;
    V_CANT_OBSERVADOS INTEGER;
    V_CANT_CONCLUIDOS INTEGER;
    V_CANT_CASOS_PUBLICADOS INTEGER;
    V_CANT_BP_PUBLCIADOS INTEGER;
    V_CANT_LA_PUBLICADOS INTEGER;
    V_CANT_ENV_COOR_GDEE_REV INTEGER;
    V_CANT_VAL_COOR_GDEE INTEGER;
    V_CANT_VAL_GER_GDEE INTEGER;
    BEGIN
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_CONCLUIDO_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES23');
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        V_ID_EST_ENV_COOR_GDEE_REV := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');
        V_ID_EST_VAL_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES17');
        V_ID_EST_VAL_GER_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');

        WITH casos AS (
            SELECT  PC.NPDC_ID AS idProyectoCaso         
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            WHERE PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_ENV.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_ENV.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
            GROUP BY PC.NPDC_ID, PC.NPRV_ID_ESTADO
        ), casosObservaciones AS (
            SELECT PC.NPDC_ID AS idProyectoCaso
            FROM casos c
            INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = c.idProyectoCaso
            INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID AND OBS.NTIN_ID_TIPO_INC IS NOT NULL
            GROUP BY PC.NPDC_ID
            HAVING COUNT(1) > 0
        )
        SELECT  COUNT(1), COUNT(CO.idProyectoCaso)
                INTO V_CANT_CASOS,V_CANT_OBSERVADOS
        FROM casos C
        LEFT JOIN casosObservaciones CO ON CO.idProyectoCaso = C.idProyectoCaso;   

        SELECT COUNT(1) INTO V_CANT_CONCLUIDOS
        FROM SABEC_PROY_CASO PC
        INNER JOIN SABEC_PROY_CASO_EST EST_CON ON EST_CON.NPDC_ID = PC.NPDC_ID AND EST_CON.NPRV_ID_ESTADO_POST = V_ID_EST_CONCLUIDO_UO
        WHERE PC.NPDC_ACTIVO = 1 AND PC.NPRV_ID_ESTADO = V_ID_EST_CONCLUIDO_UO AND
              1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST_CON.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END AND
              1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST_CON.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END;

        WITH casosPublicados AS (
            SELECT  PCS.NPCS_ID AS idCasoSabec
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            WHERE PC.NPDC_ACTIVO = 1 AND PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(DPDC_FECHA_PUB,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(DPDC_FECHA_PUB,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        ), casosBp AS (
            SELECT  CP.idCasoSabec,
                    COUNT(1) AS buenasPracticas
            FROM casosPublicados CP 
            INNER JOIN SABEC_PROY_CASO_SABEC_BP BP ON BP.NPCS_ID = CP.idCasoSabec 
            GROUP BY CP.idCasoSabec
        ), casosLa AS (
            SELECT  CP.idCasoSabec,
                    COUNT(1) AS leccionesAprendidas
            FROM casosPublicados CP 
            INNER JOIN SABEC_PROY_CASO_SABEC_LA LA ON LA.NPCS_ID = CP.idCasoSabec 
            GROUP BY CP.idCasoSabec
        )
        SELECT  COUNT(PC.idCasoSabec), SUM(BP.buenasPracticas), SUM(LA.leccionesAprendidas)
                INTO V_CANT_CASOS_PUBLICADOS, V_CANT_BP_PUBLCIADOS, V_CANT_LA_PUBLICADOS
        FROM casosPublicados PC
        LEFT JOIN casosBp BP ON BP.idCasoSabec = PC.idCasoSabec 
        LEFT JOIN casosLa LA ON LA.idCasoSabec = PC.idCasoSabec;

        SELECT COUNT(PC.NPDC_ID) INTO V_CANT_ENV_COOR_GDEE_REV              
        FROM SABEC_PROY_CASO PC
        INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_COOR_GDEE_REV
        WHERE PC.NPDC_ACTIVO = 1 AND
              1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END AND
              1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END;

        SELECT COUNT(PC.NPDC_ID) INTO V_CANT_VAL_COOR_GDEE              
        FROM SABEC_PROY_CASO PC
        INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_COOR_GDEE
        WHERE PC.NPDC_ACTIVO = 1 AND
              1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END AND
              1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END;

        SELECT COUNT(PC.NPDC_ID) INTO V_CANT_VAL_GER_GDEE              
        FROM SABEC_PROY_CASO PC
        INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GER_GDEE
        WHERE PC.NPDC_ACTIVO = 1 AND
              1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END AND
              1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                       WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                       ELSE 0
                  END;

        OPEN P_CURSOR_CASOS FOR
        SELECT  V_CANT_CASOS AS numeroCasos,
                V_CANT_OBSERVADOS AS casosObservados,
                V_CANT_CONCLUIDOS AS concluido,
                V_CANT_CASOS_PUBLICADOS AS publicado,
                V_CANT_BP_PUBLCIADOS AS buenasPracticas,
                V_CANT_LA_PUBLICADOS AS leccionesAprendidas,
                V_CANT_ENV_COOR_GDEE_REV AS casosEvaGesSabec,
                V_CANT_VAL_COOR_GDEE AS casosRevCoorGdee,
                V_CANT_VAL_GER_GDEE AS casosValGerGdee
        FROM DUAL;
    END PA_SABEC_DASHBOARD_NUM_CASOS;

    PROCEDURE PA_SABEC_DASHBOARD_PROM_PUBL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_PROM_PUBL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
       P_FECHA_FIN IN DATE,
       P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PUBLICADO INTEGER;
    V_ID_EST_ENV_UO INTEGER;
    V_ANIO_INI INTEGER;
    V_MES_INI INTEGER;
    V_SEM_INI INTEGER;
    V_ANIO_FIN INTEGER;
    V_MES_FIN INTEGER;
    V_SEM_FIN INTEGER;
    BEGIN
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        OPEN P_CURSOR FOR
        WITH CASOS AS (
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    EST_PUB.CPCE_NOM_USU AS usuarioPublico,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_ENV.DPCE_FECHA, EST_PUB.DPCE_FECHA) AS diasOporPubli
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        )
        SELECT usuarioPublico,
               ROUND(SUM(diasOporPubli)/COUNT(1),2) AS oportunidadPublicacion
        FROM CASOS
        GROUP BY usuarioPublico
        ORDER BY usuarioPublico;    
    END PA_SABEC_DASHBOARD_PROM_PUBL;

    PROCEDURE PA_SABEC_DASHBOARD_PUBLICADOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_PUBLICADOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
        V_ANIO_INI INTEGER;
        V_MES_INI INTEGER;
        V_SEM_INI INTEGER;
        V_ANIO_FIN INTEGER;
        V_MES_FIN INTEGER;
        V_SEM_FIN INTEGER;
        V_ID_EST_PUBLICADO INTEGER;
        V_ID_EST_VAL_GDEE INTEGER;
        V_PLAZO INTEGER;
    BEGIN

        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');

        SELECT NTIN_PLAZO_DIAS INTO V_PLAZO
        FROM SABEC_TIPO_INCONSISTENCIA WHERE NTIN_ID = 13;

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        OPEN P_CURSOR FOR
        SELECT grupo, plazo, COUNT(1) cantidad
        FROM (
            SELECT  CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN TO_CHAR(EXTRACT(YEAR FROM EST_PUB.DPCE_FECHA))
                         WHEN V_MES_INI != V_MES_FIN THEN TO_CHAR(EST_PUB.DPCE_FECHA,'Month','NLS_DATE_LANGUAGE = SPANISH')
                         WHEN V_SEM_INI != V_SEM_FIN THEN TO_CHAR(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_ULT_DIA_SEM(EST_PUB.DPCE_FECHA,P_FECHA_FIN), 'DD/MM/YYYY')
                         ELSE TO_CHAR(EST_PUB.DPCE_FECHA,'DD/MM/YYYY')
                    END AS grupo,
                    CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN EXTRACT(YEAR FROM EST_PUB.DPCE_FECHA)
                         WHEN V_MES_INI != V_MES_FIN THEN EXTRACT(MONTH FROM EST_PUB.DPCE_FECHA)
                         WHEN V_SEM_INI != V_SEM_FIN THEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'IW'))
                         ELSE TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD'))
                    END AS codigoGrupo,
                    CASE WHEN PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_VAL.DPCE_FECHA, EST_PUB.DPCE_FECHA) <= V_PLAZO THEN 'Publicado dentro del plazo'
                         ELSE 'Publicado fuera del plazo'
                    END AS plazo
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            INNER JOIN SABEC_PROY_CASO_EST EST_VAL ON EST_VAL.NPDC_ID = PC.NPDC_ID AND EST_VAL.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GDEE
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        ) T
        GROUP BY grupo, plazo, codigoGrupo
        ORDER BY codigoGrupo, plazo;

    END PA_SABEC_DASHBOARD_PUBLICADOS;

    PROCEDURE PA_SABEC_DASHBOARD_REPROC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_REPROC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
        V_ANIO_INI INTEGER;
        V_MES_INI INTEGER;
        V_SEM_INI INTEGER;
        V_ANIO_FIN INTEGER;
        V_MES_FIN INTEGER;
        V_SEM_FIN INTEGER;

        V_ID_EST_PCS_OBS_COOR_GDEE INTEGER;
        V_ID_EST_PCS_OBS_GER_GDEE INTEGER;
    BEGIN
        V_ID_EST_PCS_OBS_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES14');
        V_ID_EST_PCS_OBS_GER_GDEE   := SABEC_OBT_ID_PARAMETRO('ESTD','ES19');

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        OPEN P_CURSOR FOR
        WITH casos AS (
            SELECT idProyectoCaso,codigoGestor,nombreGestor
            FROM (
                SELECT  PC.NPDC_ID AS idProyectoCaso,
                        PC.CPDC_COD_GESTOR AS codigoGestor,
                        PC.CPDC_NOM_GESTOR AS nombreGestor,
                        MAX(EST.DPCE_FECHA) AS fecha
                FROM SABEC_PROY_CASO PC
                INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                      EST.NPRV_ID_ESTADO_POST IN(V_ID_EST_PCS_OBS_COOR_GDEE, V_ID_EST_PCS_OBS_GER_GDEE) AND
                                                      EST.DPCE_FECHA >= PC.DPDC_FECHA_ASIG
                WHERE PC.CPDC_COD_GESTOR IS NOT NULL
                GROUP BY PC.NPDC_ID,
                         PC.CPDC_COD_GESTOR,
                         PC.CPDC_NOM_GESTOR
            )
            WHERE 1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(fecha,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(fecha,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        ),casosGestorObservados AS(
            SELECT  codigoGestor,
                    nombreGestor,
                    idProyectoCaso,
                    COUNT(1) cantidadObservaciones
            FROM SABEC_PROY_CASO PC
            INNER JOIN CASOS C ON C.idProyectoCaso = PC.NPDC_ID
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                  EST.NPRV_ID_ESTADO_POST IN(V_ID_EST_PCS_OBS_COOR_GDEE, V_ID_EST_PCS_OBS_GER_GDEE) AND
                                                  EST.DPCE_FECHA >= PC.DPDC_FECHA_ASIG
            GROUP BY codigoGestor,
                     nombreGestor,
                     idProyectoCaso              
            HAVING COUNT(1) > 1
        )
        SELECT codigoGestor,
               nombreGestor, 
               COUNT(1) AS cantidad
        FROM casosGestorObservados
        GROUP BY codigoGestor, nombreGestor;
    END PA_SABEC_DASHBOARD_REPROC;

    PROCEDURE PA_SABEC_DASHBOARD_TIP_DEL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_DEL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
       P_FECHA_FIN IN DATE,
       P_CURSOR OUT SYS_REFCURSOR
    ) IS
        V_ANIO_INI INTEGER;
        V_MES_INI INTEGER;
        V_SEM_INI INTEGER;
        V_ANIO_FIN INTEGER;
        V_MES_FIN INTEGER;
        V_SEM_FIN INTEGER;
        V_ID_EST_ENV_UO INTEGER;
    BEGIN

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        V_ID_EST_ENV_UO := PG_SABEC_PRINCIPAL.SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR
            SELECT grupo, codigoGrupo, tipoDelito, COUNT(1) AS cantidad
            FROM (
                SELECT CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN TO_CHAR(EXTRACT(YEAR FROM EST.DPCE_FECHA))
                            WHEN V_MES_INI != V_MES_FIN THEN TO_CHAR(EST.DPCE_FECHA,'Month','NLS_DATE_LANGUAGE = SPANISH')
                            WHEN V_SEM_INI != V_SEM_FIN THEN TO_CHAR(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_ULT_DIA_SEM(EST.DPCE_FECHA,P_FECHA_FIN), 'DD/MM/YYYY')
                            ELSE TO_CHAR(EST.DPCE_FECHA,'DD/MM/YYYY')
                       END AS grupo,
                        CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN EXTRACT(YEAR FROM EST.DPCE_FECHA)
                             WHEN V_MES_INI != V_MES_FIN THEN EXTRACT(MONTH FROM EST.DPCE_FECHA)
                             WHEN V_SEM_INI != V_SEM_FIN THEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'IW'))
                             ELSE TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD'))
                        END AS codigoGrupo,
                       TD.CPRV_DESCRIPCION AS tipoDelito
                FROM SABEC_PROY_CASO PC
                INNER JOIN SABEC_PROY_CASO_TIP_DEL PCTD ON PCTD.NPDC_ID = PC.NPDC_ID
                INNER JOIN SABEC_PARAMETROS_VAL TD ON TD.NPRV_ID = PCTD.NPRV_ID_TIP_DEL
                INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                      EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
                WHERE PC.NPDC_ACTIVO = 1 AND
                      1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END AND
                      1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END
            ) T
            GROUP BY grupo, codigoGrupo, tipoDelito
            ORDER BY codigoGrupo,tipoDelito;
    END PA_SABEC_DASHBOARD_TIP_DEL;

    PROCEDURE PA_SABEC_DASHBOARD_TIP_INF (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_INF
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
       P_FECHA_FIN IN DATE,
       P_CURSOR OUT SYS_REFCURSOR
    ) IS
        V_ANIO_INI INTEGER;
        V_MES_INI INTEGER;
        V_SEM_INI INTEGER;
        V_ANIO_FIN INTEGER;
        V_MES_FIN INTEGER;
        V_SEM_FIN INTEGER;
        V_ID_EST_ENV_UO INTEGER;
    BEGIN

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR
            SELECT grupo, codigoGrupo, tipoInfraccion, COUNT(1) AS cantidad
            FROM (
                SELECT CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN TO_CHAR(EXTRACT(YEAR FROM EST.DPCE_FECHA))
                            WHEN V_MES_INI != V_MES_FIN THEN TO_CHAR(EST.DPCE_FECHA,'Month','NLS_DATE_LANGUAGE = SPANISH')
                            WHEN V_SEM_INI != V_SEM_FIN THEN TO_CHAR(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_ULT_DIA_SEM(EST.DPCE_FECHA,P_FECHA_FIN), 'DD/MM/YYYY')
                            ELSE TO_CHAR(EST.DPCE_FECHA,'DD/MM/YYYY')
                       END AS grupo,
                        CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN EXTRACT(YEAR FROM EST.DPCE_FECHA)
                             WHEN V_MES_INI != V_MES_FIN THEN EXTRACT(MONTH FROM EST.DPCE_FECHA)
                             WHEN V_SEM_INI != V_SEM_FIN THEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'IW'))
                             ELSE TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD'))
                        END AS codigoGrupo,
                       INF.CPCI_INFRACCION AS tipoInfraccion
                FROM SABEC_PROY_CASO PC
                INNER JOIN SABEC_PROY_CASO_INF INF ON INF.NPDC_ID = PC.NPDC_ID
                INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                      EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
                WHERE PC.NPDC_ACTIVO = 1 AND
                      1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END AND
                      1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END
            ) T
            GROUP BY grupo, codigoGrupo, tipoInfraccion
            ORDER BY codigoGrupo,tipoInfraccion;
    END PA_SABEC_DASHBOARD_TIP_INF;

    PROCEDURE PA_SABEC_DASHBOARD_TIP_RESP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DASHBOARD_TIP_RESP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
        V_ANIO_INI INTEGER;
        V_MES_INI INTEGER;
        V_SEM_INI INTEGER;
        V_ANIO_FIN INTEGER;
        V_MES_FIN INTEGER;
        V_SEM_FIN INTEGER;
        V_ID_EST_ENV_UO INTEGER;
    BEGIN

        SELECT EXTRACT(YEAR FROM P_FECHA_INICIO),EXTRACT(MONTH FROM P_FECHA_INICIO),TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'IW'))
        INTO V_ANIO_INI, V_MES_INI, V_SEM_INI
        FROM DUAL;

        SELECT EXTRACT(YEAR FROM P_FECHA_FIN),EXTRACT(MONTH FROM P_FECHA_FIN),TO_NUMBER(TO_CHAR(P_FECHA_FIN,'IW'))
        INTO V_ANIO_FIN, V_MES_FIN, V_SEM_FIN
        FROM DUAL;

        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR
            SELECT grupo, codigoGrupo, tipoResponsabilidad, COUNT(1) AS cantidad
            FROM (
                SELECT CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN TO_CHAR(EXTRACT(YEAR FROM EST.DPCE_FECHA))
                            WHEN V_MES_INI != V_MES_FIN THEN TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH')
                            WHEN V_SEM_INI != V_SEM_FIN THEN TO_CHAR(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_ULT_DIA_SEM(EST.DPCE_FECHA,P_FECHA_FIN), 'DD/MM/YYYY')
                            ELSE TO_CHAR(EST.DPCE_FECHA,'DD/MM/YYYY')
                       END AS grupo,
                        CASE WHEN V_ANIO_INI != V_ANIO_FIN THEN EXTRACT(YEAR FROM EST.DPCE_FECHA)
                             WHEN V_MES_INI != V_MES_FIN THEN EXTRACT(MONTH FROM EST.DPCE_FECHA)
                             WHEN V_SEM_INI != V_SEM_FIN THEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'IW'))
                             ELSE TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD'))
                        END AS codigoGrupo,
                       TR.CPRV_DESCRIPCION AS tipoResponsabilidad
                FROM SABEC_PROY_CASO PC
                INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
                INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                      EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
                WHERE PC.NPDC_ACTIVO = 1 AND
                      1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END AND
                      1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                               WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                               ELSE 0
                          END
            ) T
            GROUP BY grupo, codigoGrupo, tipoResponsabilidad
            ORDER BY codigoGrupo;
    END PA_SABEC_DASHBOARD_TIP_RESP;

    PROCEDURE PA_SABEC_DEL_PARAM_VAL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DEL_PARAM_VAL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/  P_ID IN INTEGER,
    /*2*/  P_USUARIO IN VARCHAR2
    )IS
    BEGIN
        UPDATE SABEC_PARAMETROS_VAL SET NPRV_ACTIVO = 0
        WHERE NPRV_ID = P_ID; 
    END PA_SABEC_DEL_PARAM_VAL;

    PROCEDURE PA_SABEC_DEL_PROY_CASO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_DEL_PROY_CASO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_USUARIO IN VARCHAR2
    )IS
    BEGIN
      UPDATE SABEC_PROY_CASO SET NPDC_ACTIVO = 0,
                                 CPDC_USUARIO_MODIFICO = P_USUARIO,
                                 DPDC_FECHA_MODIFICO = SYSDATE
      WHERE NPDC_ID = P_ID;
    END PA_SABEC_DEL_PROY_CASO;

    PROCEDURE PA_SABEC_INS_CASO_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_CASO_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID OUT INTEGER,
    /*2*/   P_ID_PROYECTO_CASO IN INTEGER,
    /*3*/   P_ID_ESTADO IN INTEGER,
    /*4*/   P_FECHA_INICIO_EVALUACION  IN DATE,
    /*5*/   P_FECHA_ENVIO DATE,
    /*6*/   P_NOM_USU_DEST IN VARCHAR2,
    /*7*/   P_COD_USU_DEST IN VARCHAR2,
    /*8*/   P_ID_ROL_DEST IN INTEGER, 
    /*9*/   P_NOM_USU_REM IN VARCHAR2,
    /*10*/  P_COD_USU_REM IN VARCHAR2,
    /*11*/  P_ID_ROL_REM IN INTEGER,
    /*12*/  P_ID_TEMATICA IN INTEGER,
    /*13*/  P_ASUNTO IN VARCHAR2,
    /*14*/  P_FECHA_INI_AUDIT IN DATE,
    /*15*/  P_FECHA_FIN_AUDIT IN DATE,
    /*16*/  P_UO_EMISOR IN VARCHAR2,
    /*17*/  P_JEFE_OCI IN VARCHAR2,
    /*18*/  P_JEFE_COMISION IN VARCHAR2,
    /*19*/  P_SUPERVISOR IN VARCHAR2,
    /*20*/  P_ESPECIALISTA IN VARCHAR2,
    /*21*/  P_SINTESIS_AUDITORIA IN VARCHAR2,
    /*22*/  P_ID_ETAPA_CONCLUYE IN VARCHAR2,
    /*23*/  P_FUNDAMENTOS_JURIDICOS IN VARCHAR2,
    /*24*/  P_OTROS_FUNDAMENTOS_JUR IN VARCHAR2,
    /*25*/  P_IS_BUEN_PRACT IN NUMBER,
    /*26*/  P_JUSTI_BUEN_PRACT IN VARCHAR2,
    /*27*/  P_IS_LECC_APREN IN NUMBER,
    /*28*/  P_JUSTI_LECC_APREN IN VARCHAR2,
    /*29*/  P_AUDITORES_ENCARGADOS IN TYP_TBL_AUDIT_ENC,
    /*30*/  P_RESULTADO_FINAL IN TYP_TBL_RESULT_FINAL,
    /*31*/  P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC,
    /*32*/  P_LECCIONES_APRENDIDAS IN TYP_TBL_LECCIONES_APREN,
    /*33*/  P_USUARIO IN VARCHAR2,
    /*34*/  P_ID_GUIA_SABEC IN NUMBER,
    /*35*/  P_LOAD_FEC_INICIO IN NUMBER,
    /*36*/  P_LOAD_FEC_TERMINO IN NUMBER,
    /*37*/  P_LOAD_UOEMISORA_INFORME IN NUMBER,
    /*38*/  P_LOAD_JEFE_OCI IN NUMBER,
    /*39*/  P_LOAD_JEFE_COMISION IN NUMBER,
    /*40*/  P_LOAD_SUPERVISOR IN NUMBER,
    /*41*/  P_LOAD_ESPECIALISTA IN NUMBER,
    /*42*/  P_LOAD_SINTESIS_AUDITORIA IN NUMBER
    )IS
    N_ID_ESTADO_ANT INTEGER;
    C_NOM_USU_GEST VARCHAR2(200);    
    C_COD_USU_GEST VARCHAR2(100);
    N_ID_ROL_GEST INTEGER;
    BEGIN

        SELECT NPRV_ID_ESTADO, CPDC_NOM_GESTOR, CPDC_COD_GESTOR, NPRV_ID_ROL_GESTOR
          INTO N_ID_ESTADO_ANT, C_NOM_USU_GEST, C_COD_USU_GEST, N_ID_ROL_GEST
        FROM SABEC_PROY_CASO
        WHERE NPDC_ID = P_ID_PROYECTO_CASO;

        INSERT INTO SABEC_PROY_CASO_SABEC(
               NPCS_ID,
               NPDC_ID,
               CPCS_NUM_PUB,
               DPCS_INICIO_EVALUACION,
               NPRV_ID_TEMATICA,
               CPCS_ASUNTO,
               DPCS_INICIO_AUDIT,
               DPCS_FIN_AUDIT,
               CPCS_UO_EMISOR,
               CPCS_JEFE_OCI,
               CPCS_JEFE_COMISION,
               CPCS_SUPERVISOR,
               CPCS_ESPECIALISTA,
               CPCS_SINTESIS_AUDIT,
               NPCS_ETAPA_CONCLUYE,
               CPCS_FUND_JURIDICOS,
               CPCS_FUND_OTROS,
               NPCS_BP,
               CPCS_JUST_BP,
               NPCS_LA,
               CPCS_JUST_LA,
               CPCS_USUARIO_INSERTO,
               DPCS_FECHA_INSERTO,
               DPCS_FECHA_ENVIO,
               NPCS_ACTIVO,
               NPRV_ID_GUIA,
               NPCS_LOAD_FEC_INI,
               NPCS_LOAD_FEC_TER,
               NPCS_LOAD_UO_EMISOR,
               NPCS_LOAD_JEFE_OCI,
               NPCS_LOAD_JEFE_COMISION,
               NPCS_LOAD_SUPERVISOR, 
               NPCS_LOAD_ESPECIALISTA,
               NPCS_LOAD_SINTESIS_AUDIT)
        VALUES (
               SEQ_SABEC_PROY_CASO_SABEC.NEXTVAL,
               P_ID_PROYECTO_CASO,
               NULL,
               P_FECHA_INICIO_EVALUACION,
               P_ID_TEMATICA,
               P_ASUNTO,
               P_FECHA_INI_AUDIT,
               P_FECHA_FIN_AUDIT,
               P_UO_EMISOR,
               P_JEFE_OCI,
               P_JEFE_COMISION,
               P_SUPERVISOR,
               P_ESPECIALISTA,
               P_SINTESIS_AUDITORIA,
               P_ID_ETAPA_CONCLUYE,
               P_FUNDAMENTOS_JURIDICOS,
               P_OTROS_FUNDAMENTOS_JUR,
               P_IS_BUEN_PRACT,
               P_JUSTI_BUEN_PRACT,
               P_IS_LECC_APREN,
               P_JUSTI_LECC_APREN,
               P_USUARIO,
               SYSDATE,
               P_FECHA_ENVIO,
               1,
               P_ID_GUIA_SABEC,
               P_LOAD_FEC_INICIO,
               P_LOAD_FEC_TERMINO,
               P_LOAD_UOEMISORA_INFORME,
               P_LOAD_JEFE_OCI,
               P_LOAD_JEFE_COMISION,
               P_LOAD_SUPERVISOR,
               P_LOAD_ESPECIALISTA,
               P_LOAD_SINTESIS_AUDITORIA
           ) RETURNING NPCS_ID INTO P_ID;

           INSERT INTO SABEC_PROY_CASO_SABEC_AUD(
                  NPSA_ID, 
                  NPCS_ID, 
                  CPSA_NOMBRE_AUDITOR, 
                  NPSA_LOAD,
                  DPSA_FECHA_ASIG, 
                  CPSA_USUARIO_INSERTO, 
                  DPSA_FECHA_INSERTO
            )
            SELECT SEQ_SABEC_PROY_CASO_SABEC_AUD.NEXTVAL,
                   P_ID,
                   CAUD_NOMBRE_AUDITOR,
                   NAUD_LOAD,
                   SYSDATE,
                   P_USUARIO,
                   SYSDATE
            FROM TABLE(P_AUDITORES_ENCARGADOS) AU;

            INSERT INTO SABEC_PROY_CASO_SABEC_RES(
                   NPSR_ID, 
                   NPCS_ID, 
                   CPSR_DESCRIPCION, 
                   NPSR_CONFIRMADA, 
                   CPSR_USUARIO_INSERTO, 
                   DPSR_FECHA_INSERTO, 
                   NPRV_ID_RESULTADO_FINAL
            )
            SELECT SEQ_SABEC_PROY_CASO_SABEC_RES.NEXTVAL,
                   P_ID,
                   CRES_DESCRIPCION,
                   NRES_CONFIRMADA,
                   P_USUARIO,
                   SYSDATE,
                   NRES_ID_RESULTADO_FINAL
            FROM TABLE(P_RESULTADO_FINAL) RES;

            INSERT INTO SABEC_PROY_CASO_SABEC_BP(
                   NPSB_ID, 
                   NPCS_ID, 
                   CPSB_NRO, 
                   CPSB_ASUNTO, 
                   CPSB_USUARIO_INSERTO, 
                   DPSB_FECHA_INSERTO, 
                   NPRV_ID_SUB_CATEGORIA, 
                   CPSB_DESCRIPCION
            )
            SELECT SEQ_SABEC_PROY_CASO_SABEC_BP.NEXTVAL,
                   P_ID,
                   NBP_NUMERO,
                   CBP_ASUNTO,
                   P_USUARIO,
                   SYSDATE,
                   NBP_ID_SUB_CATEGORIA,
                   CBP_DESCRIPCION
            FROM TABLE(P_BUENAS_PRACTICAS) BP;

            INSERT INTO SABEC_PROY_CASO_SABEC_LA(
                   NPSL_ID, 
                   NPCS_ID, 
                   CPSL_NRO, 
                   CPSL_ASUNTO, 
                   CPSL_USUARIO_INSERTO, 
                   DPSL_FECHA_INSERTO, 
                   CPSL_DESCRIPCION, 
                   NPRV_ID_SUB_CATEGORIA)
            SELECT SEQ_SABEC_PROY_CASO_SABEC_LA.NEXTVAL,
                   P_ID,
                   NLAP_NUMERO,
                   CLAP_ASUNTO,
                   P_USUARIO,
                   SYSDATE,
                   CLAP_DESCRIPCION,
                   NLAP_ID_SUB_CATEGORIA
            FROM TABLE(P_LECCIONES_APRENDIDAS);

            UPDATE SABEC_PROY_CASO
            SET    CPDC_NOM_USU_DESTINO = P_NOM_USU_DEST,
                   CPDC_COD_USU_DESTINO = P_COD_USU_DEST,
                   NPRV_ID_ROL_DESTINO = P_ID_ROL_DEST,
                   CPDC_COD_USU_REMITE = P_COD_USU_REM,
                   CPDC_NOM_USU_REMITE = P_NOM_USU_REM,
                   NPRV_ID_ROL_REMITE = P_ID_ROL_REM,
                   DPDC_FECHA_ENVIO = P_FECHA_ENVIO,
                   DPDC_FECHA_REMITE = P_FECHA_ENVIO,
                   NPRV_ID_ESTADO = P_ID_ESTADO,
                   CPDC_USUARIO_MODIFICO = P_USUARIO,
                   DPDC_FECHA_MODIFICO = SYSDATE
            WHERE NPDC_ID = P_ID_PROYECTO_CASO;

            UPDATE SABEC_PROY_CASO_EST SET CPCE_SITUACION = 'I'
            WHERE NPDC_ID = P_ID_PROYECTO_CASO;

            INSERT INTO SABEC_PROY_CASO_EST(
                   NPCE_ID,
                   NPDC_ID,
                   NPRV_ID_ESTADO_ANT,
                   NPRV_ID_ESTADO_POST,
                   CPCE_NOM_USU,
                   CPCE_COD_USU,
                   NPRV_ID_ROL,
                   DPCE_FECHA,
                   CPCE_SITUACION,
                   CPCE_USUARIO_INSERTO,
                   DPCE_FECHA_INSERTO
            )
            VALUES(
                   SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
                   P_ID_PROYECTO_CASO,
                   N_ID_ESTADO_ANT, 
                   P_ID_ESTADO,     
                   C_NOM_USU_GEST,    
                   C_COD_USU_GEST,
                   N_ID_ROL_GEST,
                   SYSDATE,
                   'A',
                   P_USUARIO,
                   SYSDATE);
    END PA_SABEC_INS_CASO_SABEC;

    PROCEDURE PA_SABEC_INS_OBS_CASO_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_OBS_CASO_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER,
        P_ID_EST_OBS IN INTEGER,
        P_ID_TIP_INC IN INTEGER,
        P_NOM_USUARIO IN VARCHAR2,
        P_COD_USUARIO IN VARCHAR2,
        P_ID_ROL IN INTEGER,
        P_DETALLE IN VARCHAR2,
        P_USUARIO IN VARCHAR2
    )IS
    BEGIN

        UPDATE SABEC_PROY_CASO_SABEC_OBSA
        SET CPSO_SITUACION = 'I'
        WHERE NPCS_ID = P_ID_CASO_SABEC AND CPSO_SITUACION = 'A';

        INSERT INTO SABEC_PROY_CASO_SABEC_OBSA(
               NPSO_ID,
               NPCS_ID,
               NPRV_ID_ESTADO,
               DPSO_FECHA_OBSERVACION,
               NINC_ID_TIPO_INC,
               CPSO_DETALLE,
               CPSO_NOM_USU_OBSERVA,
               CPSO_COD_USU_OBSERVA,
               NPRV_ID_ROL_OBSERVA,
               CPSO_USUARIO_INSERTO,
               DPSO_FECHA_INSERTO,
               CPSO_SITUACION
        )
        VALUES (
               SEQ_SABEC_PROY_CASO_SABEC_OBSA.NEXTVAL,
               P_ID_CASO_SABEC,
               P_ID_EST_OBS,
               SYSDATE,
               P_ID_TIP_INC,
               P_DETALLE,
               P_NOM_USUARIO,
               P_COD_USUARIO,
               P_ID_ROL,
               P_USUARIO,
               SYSDATE,
               'A'
        );
    END PA_SABEC_INS_OBS_CASO_SABEC;

    PROCEDURE PA_SABEC_INS_OBS_PROY_CASO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_OBS_PROY_CASO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_PROY_CASO IN INTEGER,
        P_ID_EST_OBS IN INTEGER,
        P_ID_TIP_INC IN INTEGER,
        P_NOM_USUARIO IN VARCHAR2,
        P_COD_USUARIO IN VARCHAR2,
        P_ID_ROL IN INTEGER,
        P_DETALLE IN VARCHAR2,
        P_USUARIO IN VARCHAR2
    )IS
    BEGIN
        UPDATE SABEC_PROY_CASO_OBS
        SET CPCO_SITUACION = 'I'
        WHERE NPDC_ID = P_ID_PROY_CASO AND CPCO_SITUACION = 'A';

        INSERT INTO SABEC_PROY_CASO_OBS(
               NPCO_ID,
               NPDC_ID,
               NPRV_ID_ESTADO,
               DPCO_FECHA_OBSERVACION,
               NTIN_ID_TIPO_INC,
               CPCO_DETALLE,
               CPCO_NOM_USU_OBSERVA,
               CPCO_COD_USU_OBSERVA,
               NPRV_ID_ROL_OBSERVA,
               CPCO_USUARIO_INSERTO,
               DPCO_FECHA_INSERTO,
               CPCO_SITUACION
        )
        VALUES (
               SEQ_SABEC_PROY_CASO_OBS.NEXTVAL,
               P_ID_PROY_CASO,
               P_ID_EST_OBS,
               SYSDATE,
               P_ID_TIP_INC,
               P_DETALLE,
               P_NOM_USUARIO,
               P_COD_USUARIO,
               P_ID_ROL,
               P_USUARIO,
               SYSDATE,
               'A'
        );
    END PA_SABEC_INS_OBS_PROY_CASO;

    PROCEDURE PA_SABEC_INS_PROY_CASO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_INS_PROY_CASO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID OUT INTEGER,
    /*2*/   P_NUMERO_REGISTRO IN VARCHAR2,
    /*3*/   P_NUMERO_ENVIO IN VARCHAR2,
    /*4*/   P_NOM_OPERADOR IN VARCHAR2,
    /*5*/   P_COD_OPERADOR IN VARCHAR2,
    /*6*/   P_ID_ROL_OPERADOR IN INTEGER,
    /*7*/   P_FECHA IN DATE,
    /*8*/   P_ID_ESTADO IN INTEGER,
    /*9*/    P_NOM_USU_REM IN VARCHAR2,
    /*10*/   P_COD_USU_REM IN VARCHAR2,
    /*11*/   P_ID_ROL_REM IN INTEGER,
    /*12*/   P_FECHA_ENVIO IN DATE,
    /*13*/   P_NOM_USU_DEST IN VARCHAR2,
    /*14*/   P_COD_USU_DEST IN VARCHAR2,
    /*15*/   P_ID_ROL_DEST IN INTEGER,
    /*16*/   P_ID_TIPO_RESPONSABILIDAD IN INTEGER,
    /*17*/   P_ID_TIPO_DELITO IN TYP_TBL_INTEGER,
    /*18*/   P_COD_ENTIDAD IN VARCHAR2,
    /*19*/   P_NOM_ENTIDAD IN VARCHAR2,
    /*20*/   P_DEP_ENTIDAD IN VARCHAR2,
    /*21*/   P_RESOLUCION_SENTENCIA IN VARCHAR2,
    /*22*/   P_NUMERO_INFORME IN VARCHAR2,
    /*23*/   P_DECISION_RESOLUCION IN VARCHAR2,
    /*24*/   P_INFRACCION IN TYP_TBL_INFRACCION,
    /*25*/   P_ADJUNTOS  IN TYP_TBL_ADJUNTO,
    /*26*/   P_CONSIDERACIONES IN VARCHAR2,
    /*27*/   P_USUARIO IN VARCHAR2,
    /*28*/   P_COD_UNIDAD_ORGANICA IN VARCHAR2,
    /*29*/   P_NOM_UNIDAD_ORGANICA IN VARCHAR2
    )IS
    BEGIN
        INSERT INTO SABEC_PROY_CASO (
               NPDC_ID,
               CPDC_NUM_REG,
               CPDC_NUM_ENVIO,
               CPDC_OPERADOR_UO,
               CPDC_COD_OPERADOR_UO,
               NPRV_ID_ROL_OPERADOR_UO,
               DPDC_FECHA_REGISTRO,
               NPRV_ID_TIP_RESP,
               CPDC_COD_ENTIDAD,
               CPDC_NOM_ENTIDAD,
               CPDC_DEP_ENTIDAD,
               CPDC_NOM_USU_REMITE,
               CPDC_COD_USU_REMITE,
               NPRV_ID_ROL_REMITE,
               NPRV_ID_ROL_DESTINO,
               DPDC_FECHA_ENVIO,
               DPDC_INICIO_ATENCION,
               DPDC_FECHA_REMITE,
               CPDC_RESOL_SENT,
               CPDC_NRO_INFOR_AUD,
               CPDC_DECI_RESOL,
               CPDC_CONSIDERACIONES,
               NPRV_ID_ESTADO,
               CPDC_USUARIO_INSERTO,
               DPDC_FECHA_INSERTO,
               CPDC_UNIDAD_ORGANICA,
               CPDC_COD_UNIDAD_ORGANICA
        ) VALUES (
            SEQ_SABEC_PROY_CASO.NEXTVAL,    -- NPDC_ID,
            P_NUMERO_REGISTRO,              -- CPDC_NUM_REG,
            P_NUMERO_ENVIO,                 -- CPDC_NUM_ENVIO,
            P_NOM_OPERADOR,                 -- CPDC_OPERADOR_UO,
            P_COD_OPERADOR,                 -- CPDC_COD_OPERADOR_UO,
            P_ID_ROL_OPERADOR,              -- NPRV_ID_ROL_OPERADOR_UO,
            P_FECHA,                        -- DPDC_FECHA_REGISTRO,
            P_ID_TIPO_RESPONSABILIDAD,      -- NPRV_ID_TIP_RESP,
            P_COD_ENTIDAD,                  -- CPDC_COD_ENTIDAD,
            P_NOM_ENTIDAD,                  -- CPDC_NOM_ENTIDAD,
            P_DEP_ENTIDAD,                  -- CPDC_DEP_ENTIDAD,
            P_NOM_USU_REM,                  -- CPDC_NOM_USU_REMITE,
            P_COD_USU_REM,                  -- CPDC_COD_USU_REMITE,
            P_ID_ROL_REM,                   -- NPRV_ID_ROL_REMITE,
            P_ID_ROL_DEST,                  -- NPRV_ID_ROL_DESTINO,
            P_FECHA_ENVIO,                  -- DPDC_FECHA_ENVIO,
            P_FECHA,                        -- DPDC_INICIO_ATENCION,
            P_FECHA_ENVIO,                  -- DPDC_FECHA_REMITE,
            P_RESOLUCION_SENTENCIA,         -- CPDC_RESOL_SENT,
            P_NUMERO_INFORME,               -- CPDC_NRO_INFOR_AUD,
            P_DECISION_RESOLUCION,          -- CPDC_DECI_RESOL,
            P_CONSIDERACIONES,              -- CPDC_CONSIDERACIONES,
            P_ID_ESTADO,                    -- NPRV_ID_ESTADO,
            P_USUARIO,                      -- CPDC_USUARIO_INSERTO,
            SYSDATE,                        -- DPDC_FECHA_INSERTO
            P_NOM_UNIDAD_ORGANICA,          -- CPDC_UNIDAD_ORGANICA,
            P_COD_UNIDAD_ORGANICA           -- CPDC_COD_UNIDAD_ORGANICA
      ) RETURNING NPDC_ID INTO P_ID;

        INSERT INTO SABEC_PROY_CASO_TIP_DEL (
               NPDC_ID,
               NPRV_ID_TIP_DEL,
               CPAR_USUARIO_INSERTO,
               DPAR_FECHA_INSERTO
        )
        SELECT P_ID,
               T.NINT_VAL,
               P_USUARIO,
               SYSDATE
        FROM TABLE(P_ID_TIPO_DELITO) T;

        INSERT INTO SABEC_PROY_CASO_INF (
            NPCI_ID,
            NPDC_ID,
            NPCI_ID_INFRACCION,
            NPCI_CANT_ADMIN,
            CPCI_INFRACCION,
            CPCI_CALIFICACION,
            CPCI_SANCION,
            CPCI_USUARIO_INSERTO,
            DPCI_FECHA_INSERTO
        )
        SELECT  SEQ_SABEC_PROY_CASO_INF.NEXTVAL,
                P_ID,
                NINF_ID_PARAMETRO,
                NINF_CANT_ADMIN,
                CINF_INFRACCION,
                CINF_CALIFICACION,
                CINF_SANCION,
                P_USUARIO,
                SYSDATE
        FROM TABLE(P_INFRACCION);

        INSERT INTO SABEC_PROY_CASO_ADJ (
            NPCA_ID,
            NPDC_ID,
            CPCA_RUTA_ARCHIVO,
            CPCA_NOMBRE,
            NPCA_PESO,
            CPCA_USUARIO_INSERTO,
            DPCA_FECHA_INSERTO
        )
        SELECT  SEQ_SABEC_PROY_CASO_INF.NEXTVAL,
                P_ID,
                CADJ_RUTA_ARCHIVO,
                CADJ_NOMBRE,
                NADJ_PESO,
                P_USUARIO,
                SYSDATE
        FROM TABLE(P_ADJUNTOS);

        INSERT INTO SABEC_PROY_CASO_EST(
               NPCE_ID,
               NPDC_ID,
               NPRV_ID_ESTADO_POST,
               CPCE_NOM_USU,
               CPCE_COD_USU,
               NPRV_ID_ROL,
               DPCE_FECHA,
               CPCE_SITUACION,
               CPCE_USUARIO_INSERTO,
               DPCE_FECHA_INSERTO
        )
        VALUES(
               SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
               P_ID,
               P_ID_ESTADO,
               P_NOM_OPERADOR,
               P_COD_OPERADOR,
               P_ID_ROL_OPERADOR,
               SYSDATE,
               'A',
               P_USUARIO,
               SYSDATE);
    END PA_SABEC_INS_PROY_CASO;

    PROCEDURE PA_SABEC_OBT_SIG_CORR_ALER_SAB (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_OBT_SIG_CORR_ALER_SAB
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    )
    IS
    BEGIN
        OPEN P_CURSOR FOR
          SELECT (SELECT   NVL(MAX(SUBSTRC(CALE_NUM_ALERTA, -5)),0)+1 FROM SABEC_ALERTA_SABEC) AS correlativoAlerta,
                 (SELECT   NVL(MAX(SUBSTRC(CPCS_NUM_PUB, -5)),0)+1 FROM SABEC_PROY_CASO_SABEC) AS correlativoCaso
          FROM DUAL;
    END PA_SABEC_OBT_SIG_CORR_ALER_SAB;

    PROCEDURE PA_SABEC_OBT_SIG_CORR_PROY_CAS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_OBT_SIG_CORR_PROY_CAS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    )
    IS
    BEGIN
        OPEN P_CURSOR FOR
          SELECT   NVL(MAX(SUBSTRC(CPDC_NUM_REG, -5)),0)+1 AS correlativoRegistro,
                   NVL(MAX(SUBSTRC(CPDC_NUM_ENVIO, -5)),0)+1 AS correlativoEnvio
          FROM SABEC_PROY_CASO;
    END PA_SABEC_OBT_SIG_CORR_PROY_CAS;

    PROCEDURE PA_SABEC_PUBLICAR_BP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_PUBLICAR_BP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID OUT INTEGER,
         P_NUM_ALERTA IN VARCHAR2,
         P_NUMERO_CASOS IN INTEGER,
         P_NOM_USU_PUB IN VARCHAR2,--
         P_COD_USU_PUB IN VARCHAR2,--
         P_ID_ROL_PUB IN INTEGER,--
         P_ASUNTO IN VARCHAR2,--
         P_SUMILLA IN CLOB,--
         P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC,--
         P_USUARIO IN VARCHAR2--
    )IS
    BEGIN
       INSERT INTO SABEC_ALERTA_SABEC (
            NALE_ID,
            CALE_NUM_ALERTA,
            NALE_NUM_CASOS,
            CALE_ASUNTO,
            CALE_SUMILLA,
            DALE_FECHA_PUB,
            CALE_NOM_USU_PUB,
            CALE_COD_USU_PUB,
            NPRV_ID_ROL_USU_PUB,
            CALE_USUARIO_INSERTO,
            DALE_FECHA_INSERTO
        ) VALUES (
            SEQ_SABEC_ALERTA_SABEC.NEXTVAL,
            P_NUM_ALERTA,
            P_NUMERO_CASOS,
            P_ASUNTO,
            P_SUMILLA,
            SYSDATE,
            P_NOM_USU_PUB,
            P_COD_USU_PUB,
            P_ID_ROL_PUB,
            P_USUARIO,
            SYSDATE
        ) RETURNING NALE_ID INTO P_ID;

       MERGE INTO SABEC_PROY_CASO_SABEC_BP TARGET
        USING TABLE(P_BUENAS_PRACTICAS) SOURCE ON (TARGET.NPSB_ID = SOURCE.NBP_ID)
        WHEN MATCHED THEN
          UPDATE SET
            TARGET.CPSB_ASUNTO = SOURCE.CBP_ASUNTO,
            TARGET.NPRV_ID_SUB_CATEGORIA = SOURCE.NBP_ID_SUB_CATEGORIA,
            TARGET.NPSB_PUBLICADO = 1,
            TARGET.NALE_ID = P_ID,
            TARGET.CPSB_DESCRIPCION = SOURCE.CBP_DESCRIPCION,
            TARGET.CPSB_USUARIO_MODIFICO = P_USUARIO,
            TARGET.DPSB_FECHA_MODIFICO = SYSDATE;
    END PA_SABEC_PUBLICAR_BP;

    PROCEDURE PA_SABEC_PUBLICAR_CASO_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_PUBLICAR_CASO_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID OUT INTEGER,
        P_NUM_ALERTA IN VARCHAR2,
        P_NOM_USU_PUB IN VARCHAR2,--
        P_COD_USU_PUB IN VARCHAR2,--
        P_ID_ROL_PUB IN INTEGER,--
        P_NUMERO_CASOS IN INTEGER,--
        P_ASUNTO IN VARCHAR2,--
        P_SUMILLA IN CLOB,--
        P_CASOS IN TYP_TBL_PROY_CASO_SABEC,--
        P_ID_ESTADO IN INTEGER,--
        P_USUARIO IN VARCHAR2--
    )IS
    BEGIN
       INSERT INTO SABEC_ALERTA_SABEC (
            NALE_ID,
            CALE_NUM_ALERTA,
            NALE_NUM_CASOS,
            CALE_ASUNTO,
            CALE_SUMILLA,
            DALE_FECHA_PUB,
            CALE_NOM_USU_PUB,
            CALE_COD_USU_PUB,
            NPRV_ID_ROL_USU_PUB,
            CALE_USUARIO_INSERTO,
            DALE_FECHA_INSERTO
        ) VALUES (
            SEQ_SABEC_ALERTA_SABEC.NEXTVAL,
            P_NUM_ALERTA,
            P_NUMERO_CASOS,
            P_ASUNTO,
            P_SUMILLA,
            SYSDATE,
            P_NOM_USU_PUB,
            P_COD_USU_PUB,
            P_ID_ROL_PUB,
            P_USUARIO,
            SYSDATE
        ) RETURNING NALE_ID INTO P_ID;

        UPDATE SABEC_PROY_CASO_EST
        SET CPCE_SITUACION = 'I',
            CPCE_USUARIO_MODIFICO = P_USUARIO,
            DPCE_FECHA_MODIFICO = SYSDATE
        WHERE NPDC_ID IN (SELECT NPRJ_ID_PROY_CASO FROM TABLE(P_CASOS) T) AND CPCE_SITUACION = 'A';

        INSERT INTO SABEC_PROY_CASO_EST(
             NPCE_ID,
             NPDC_ID,
             NPRV_ID_ESTADO_ANT,
             NPRV_ID_ESTADO_POST,
             CPCE_COD_USU,
             CPCE_NOM_USU,
             NPRV_ID_ROL,
             DPCE_FECHA,
             CPCE_SITUACION,
             CPCE_USUARIO_INSERTO,
             DPCE_FECHA_INSERTO
        )
        SELECT   SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
                 PC.NPDC_ID,
                 PC.NPRV_ID_ESTADO,
                 P_ID_ESTADO,
                 P_COD_USU_PUB,
                 P_NOM_USU_PUB,
                 P_ID_ROL_PUB,
                 SYSDATE,
                 'A',
                 P_USUARIO,
                 SYSDATE
        FROM SABEC_PROY_CASO PC
        INNER JOIN TABLE(P_CASOS)C ON C.NPRJ_ID_PROY_CASO = PC.NPDC_ID;      

        UPDATE SABEC_PROY_CASO_SABEC 
        SET (CPCS_NUM_PUB) = (SELECT T2.CPRJ_NUMERO FROM TABLE(P_CASOS) T2 WHERE T2.NPRJ_ID_CASO_SABEC = NPCS_ID),
            CPCS_USUARIO_MODIFICO = P_USUARIO,
            DPCS_FECHA_MODIFICO = SYSDATE,
            NALE_ID = P_ID
        WHERE NPCS_ID IN (SELECT NPRJ_ID_CASO_SABEC FROM TABLE(P_CASOS) T);

        UPDATE SABEC_PROY_CASO 
        SET CPDC_USUARIO_MODIFICO = P_USUARIO,
            DPDC_FECHA_MODIFICO = SYSDATE,
            DPDC_FECHA_PUB = SYSDATE,
            NPRV_ID_ESTADO = P_ID_ESTADO
        WHERE NPDC_ID IN (SELECT NPRJ_ID_PROY_CASO FROM TABLE(P_CASOS) T);

    END PA_SABEC_PUBLICAR_CASO_SABEC;

    PROCEDURE PA_SABEC_REPORTE_1 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_1
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FEC_DESDE IN DATE,
        P_FEC_HASTA IN DATE,
        P_COD_ENTIDAD IN VARCHAR2,
        P_ID_TIP_RESP IN INTEGER,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER,
        P_ID_TIP_INF IN TYP_TBL_INTEGER,
        P_CURSOR_TOTAL OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_RESP OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_DEL OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_INF OUT SYS_REFCURSOR,
        P_CURSOR_ENTIDAD OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ENV_UO INTEGER;
    BEGIN
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR_TOTAL FOR
            SELECT  EXTRACT(YEAR FROM EST.DPCE_FECHA) AS anio,
                    EXTRACT(MONTH FROM EST.DPCE_FECHA) AS mes,
                    TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                           WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY EXTRACT(YEAR FROM EST.DPCE_FECHA),
                     EXTRACT(MONTH FROM EST.DPCE_FECHA),
                     TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH');

        OPEN P_CURSOR_TIPO_RESP FOR
            SELECT  EXTRACT(YEAR FROM EST.DPCE_FECHA) AS anio,
                    EXTRACT(MONTH FROM EST.DPCE_FECHA) AS mes,
                    TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TR.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    TR.CPRV_COD AS codTipoResponsabilidad,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY EXTRACT(YEAR FROM EST.DPCE_FECHA),
                     EXTRACT(MONTH FROM EST.DPCE_FECHA),
                     TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TR.CPRV_DESCRIPCION,
                     TR.CPRV_COD;

        OPEN P_CURSOR_TIPO_DEL FOR
            SELECT  EXTRACT(YEAR FROM EST.DPCE_FECHA) AS anio,
                    EXTRACT(MONTH FROM EST.DPCE_FECHA) AS mes,
                    TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TD.CPRV_DESCRIPCION AS tipoDelito,
                    TD.CPRV_COD AS codigoTipoDelito,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PROY_CASO_TIP_DEL PCTD ON PCTD.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TD ON TD.NPRV_ID = PCTD.NPRV_ID_TIP_DEL
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO  AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END AND
                 1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                          WHEN EXISTS(SELECT 1 FROM TABLE(P_ID_TIP_DEL) T WHERE NINT_VAL = PCTD.NPRV_ID_TIP_DEL) THEN 1
                          ELSE 0
                     END
            GROUP BY EXTRACT(YEAR FROM EST.DPCE_FECHA),
                     EXTRACT(MONTH FROM EST.DPCE_FECHA),
                     TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TD.CPRV_DESCRIPCION,
                     TD.CPRV_COD;

        OPEN P_CURSOR_TIPO_INF FOR
            SELECT  EXTRACT(YEAR FROM EST.DPCE_FECHA) AS anio,
                    EXTRACT(MONTH FROM EST.DPCE_FECHA) AS mes,
                    TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TINF.CPRV_DESCRIPCION AS tipoInfraccion,
                    TINF.CPRV_COD AS codigoTipoInfraccion,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PROY_CASO_INF PCINF ON PCINF.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TINF ON TINF.NPRV_ID = PCINF.NPCI_ID_INFRACCION
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO  AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END AND
                 1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                          WHEN EXISTS(SELECT 1 FROM TABLE(P_ID_TIP_INF) T WHERE NINT_VAL = PCINF.NPCI_ID_INFRACCION) THEN 1
                          ELSE 0
                     END
            GROUP BY EXTRACT(YEAR FROM EST.DPCE_FECHA),
                     EXTRACT(MONTH FROM EST.DPCE_FECHA),
                     TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TINF.CPRV_DESCRIPCION,
                     TINF.CPRV_COD;

        OPEN P_CURSOR_ENTIDAD FOR
            SELECT  EXTRACT(YEAR FROM EST.DPCE_FECHA) AS anio,
                    EXTRACT(MONTH FROM EST.DPCE_FECHA) AS mes,
                    TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    PC.CPDC_COD_ENTIDAD AS codigoEntidad,
                    PC.CPDC_NOM_ENTIDAD AS nombreEntidad,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO  AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY EXTRACT(YEAR FROM EST.DPCE_FECHA),
                     EXTRACT(MONTH FROM EST.DPCE_FECHA),
                     TO_CHAR(EST.DPCE_FECHA,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     PC.CPDC_COD_ENTIDAD,
                     PC.CPDC_NOM_ENTIDAD;
    END PA_SABEC_REPORTE_1;

    PROCEDURE PA_SABEC_REPORTE_2 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_2
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FEC_DESDE IN DATE,
        P_FEC_HASTA IN DATE,
        P_COD_ENTIDAD IN VARCHAR2,
        P_ID_TIP_RESP IN INTEGER,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER,
        P_ID_TIP_INF IN TYP_TBL_INTEGER,
        P_COD_USU_GEST IN VARCHAR2,
        P_CURSOR_TOTAL OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_RESP OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_DEL OUT SYS_REFCURSOR,
        P_CURSOR_TIPO_INF OUT SYS_REFCURSOR,
        P_CURSOR_ENTIDAD OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ASIG_GEST INTEGER;
    BEGIN
        V_ID_EST_ASIG_GEST := SABEC_OBT_ID_PARAMETRO('ESTD','ES07');

        OPEN P_CURSOR_TOTAL FOR
            SELECT  PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_COD_USU_GEST IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GEST THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                           WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY PC.CPDC_COD_GESTOR,
                    PC.CPDC_NOM_GESTOR,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG),
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG),
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH');

        OPEN P_CURSOR_TIPO_RESP FOR
            SELECT  PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TR.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    TR.CPRV_COD AS codTipoResponsabilidad,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_COD_USU_GEST IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GEST THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                           WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY PC.CPDC_COD_GESTOR,
                     PC.CPDC_NOM_GESTOR,
                     EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG),
                     EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG),
                     TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TR.CPRV_DESCRIPCION,
                     TR.CPRV_COD;

        OPEN P_CURSOR_TIPO_DEL FOR
            SELECT  PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TD.CPRV_DESCRIPCION AS tipoDelito,
                    TD.CPRV_COD AS codigoTipoDelito,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_TIP_DEL PCTD ON PCTD.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TD ON TD.NPRV_ID = PCTD.NPRV_ID_TIP_DEL
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_COD_USU_GEST IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GEST THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END AND
                 1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                          WHEN EXISTS(SELECT 1 FROM TABLE(P_ID_TIP_DEL) T WHERE NINT_VAL = PCTD.NPRV_ID_TIP_DEL) THEN 1
                          ELSE 0
                     END
            GROUP BY PC.CPDC_COD_GESTOR,
                     PC.CPDC_NOM_GESTOR,
                     EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG),
                     EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG),
                     TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TD.CPRV_DESCRIPCION,
                     TD.CPRV_COD;

        OPEN P_CURSOR_TIPO_INF FOR
            SELECT  PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    TINF.CPRV_DESCRIPCION AS tipoInfraccion,
                    TINF.CPRV_COD AS codigoTipoInfraccion,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_INF PCINF ON PCINF.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TINF ON TINF.NPRV_ID = PCINF.NPCI_ID_INFRACCION
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_COD_USU_GEST IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GEST THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END  AND
                 1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                          WHEN EXISTS(SELECT 1 FROM TABLE(P_ID_TIP_INF) T WHERE NINT_VAL = PCINF.NPCI_ID_INFRACCION) THEN 1
                          ELSE 0
                     END
            GROUP BY PC.CPDC_COD_GESTOR,
                     PC.CPDC_NOM_GESTOR,
                     EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG),
                     EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG),
                     TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     TINF.CPRV_DESCRIPCION,
                     TINF.CPRV_COD;

        OPEN P_CURSOR_ENTIDAD FOR
            SELECT  PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    PC.CPDC_COD_ENTIDAD AS codigoEntidad,
                    PC.CPDC_NOM_ENTIDAD AS nombreEntidad,
                    COUNT(1) AS cantidad
            FROM SABEC_PROY_CASO PC
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE WHEN P_COD_USU_GEST IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GEST THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_DESDE IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FEC_DESDE,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FEC_HASTA IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FEC_HASTA,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                 1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                          WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                          ELSE 0
                     END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END
            GROUP BY PC.CPDC_COD_GESTOR,
                     PC.CPDC_NOM_GESTOR,
                     EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG),
                     EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG),
                     TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                     PC.CPDC_COD_ENTIDAD,
                     PC.CPDC_NOM_ENTIDAD;
    END PA_SABEC_REPORTE_2;

    PROCEDURE PA_SABEC_REPORTE_3 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_3
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_ID_TIP_OBS IN INTEGER,
        P_COD_UNI_ORG IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_CON_UO INTEGER;
    V_ID_EST_CON_GES INTEGER;
    V_ID_EST_ENV INTEGER;
    BEGIN
        V_ID_EST_CON_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES23');
        V_ID_EST_CON_GES := SABEC_OBT_ID_PARAMETRO('ESTD','ES24');
        V_ID_EST_ENV := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

       OPEN P_CURSOR FOR
       WITH Observaciones AS (
            SELECT  OBS.NPDC_ID,
                    OBS.DPCO_FECHA_OBSERVACION,
                    OBS.CPCO_DETALLE,
                    OBS.NTIN_ID_TIPO_INC,
                    RUOB.CPRV_DESCRIPCION||' - '||OBS.CPCO_NOM_USU_OBSERVA AS usuariObserva
            FROM SABEC_PROY_CASO_OBS OBS
            INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
            UNION ALL
            SELECT  PCS.NPDC_ID,
                    OBS.DPSO_FECHA_OBSERVACION,
                    OBS.CPSO_DETALLE,
                    OBS.NINC_ID_TIPO_INC,
                    RUOB.CPRV_DESCRIPCION||' - '||OBS.CPSO_NOM_USU_OBSERVA AS usuariObserva
            FROM SABEC_PROY_CASO_SABEC_OBSA  OBS
            INNER JOIN SABEC_PROY_CASO_SABEC  PCS ON PCS.NPCS_ID = OBS.NPCS_ID
            INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
       ),
       CasosObservaciones AS (
            SELECT  PC.NPDC_ID,
                    ROW_NUMBER() OVER (PARTITION BY PC.NPDC_ID ORDER BY PC.DPDC_FECHA_REGISTRO ASC ) AS rowNumber,
                    COUNT(1) OVER (PARTITION BY PC.NPDC_ID) AS totalObsCaso,
                    EST.DPCE_FECHA AS fechaRegistro,
                    PC.CPDC_NUM_ENVIO AS codigoProyectoCaso,
                    CS.CPCS_NUM_PUB AS codigoCasoSabec,
                    CPDC_UNIDAD_ORGANICA AS unidadOrganica,
                    PC.CPDC_NRO_INFOR_AUD AS numeroInforme,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    TIN.CTIN_DESCRIPCION AS tipoObservacion,
                    OBS.DPCO_FECHA_OBSERVACION AS fechaObservacion,
                    OBS.CPCO_DETALLE AS observacion,
                    OBS.usuariObserva
            FROM SABEC_PROY_CASO PC
            INNER JOIN Observaciones OBS ON OBS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_TIPO_INCONSISTENCIA TIN ON TIN.NTIN_ID = OBS.NTIN_ID_TIPO_INC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = V_ID_EST_ENV
            LEFT JOIN SABEC_PROY_CASO_SABEC CS ON CS.NPDC_ID = PC.NPDC_ID
            WHERE PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM OBS.DPCO_FECHA_OBSERVACION) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM OBS.DPCO_FECHA_OBSERVACION) = P_MES THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_ID_TIP_OBS IS NULL THEN 1
                            WHEN OBS.NTIN_ID_TIPO_INC = P_ID_TIP_OBS THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_COD_UNI_ORG IS NULL THEN 1
                            WHEN PC.CPDC_COD_UNIDAD_ORGANICA = P_COD_UNI_ORG THEN 1
                            ELSE 0
                      END
        ), Conclusion AS (
             SELECT PC.NPDC_ID,
                    PC.DPDC_FECHA_REGISTRO AS fechaRegistro,
                    PC.CPDC_NUM_REG AS codigoProyectoCaso,
                    PC.CPDC_NUM_ENVIO AS codigoCasoSabec,
                    CPDC_UNIDAD_ORGANICA AS unidadOrganica,
                    PC.CPDC_NRO_INFOR_AUD AS numeroInforme,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    PC.CPDC_MOT_CONCLUIDO AS motivoConclusion,
                    EST.DPCE_FECHA AS fechaConclusion,
                    RCON.CPRV_DESCRIPCION||' - '||EST.CPCE_NOM_USU AS usuarioConclusion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = PC.NPRV_ID_ESTADO
            INNER JOIN SABEC_PARAMETROS_VAL RCON ON RCON.NPRV_ID = EST.NPRV_ID_ROL
            WHERE PC.NPRV_ID_ESTADO IN (V_ID_EST_CON_UO,V_ID_EST_CON_GES) AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM EST.DPCE_FECHA) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM EST.DPCE_FECHA) = P_MES THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_COD_UNI_ORG IS NULL THEN 1
                            WHEN PC.CPDC_COD_UNIDAD_ORGANICA = P_COD_UNI_ORG THEN 1
                            ELSE 0
                      END
        )
            SELECT  O.fechaRegistro,
                    O.codigoProyectoCaso,
                    O.codigoCasoSabec,
                    O.unidadOrganica,
                    O.numeroInforme,
                    O.entidad,
                    O.tipoObservacion,
                    O.fechaObservacion,
                    O.observacion,
                    O.usuariObserva,
                    C.motivoConclusion,
                    C.fechaConclusion,
                    C.usuarioConclusion
            FROM CasosObservaciones O
            LEFT JOIN Conclusion C ON O.NPDC_ID = C.NPDC_ID AND O.rowNumber = O.totalObsCaso
            UNION ALL
            SELECT  fechaRegistro,
                    codigoProyectoCaso,
                    codigoCasoSabec,
                    unidadOrganica,
                    numeroInforme,
                    entidad,
                    NULL AS tipoObservacion,
                    NULL AS fechaObservacion,
                    NULL AS observacion,
                    NULL AS usuariObserva,
                    motivoConclusion,
                    fechaConclusion,
                    usuarioConclusion
            FROM Conclusion C
            WHERE NOT EXISTS(SELECT 1 FROM CasosObservaciones O WHERE O.NPDC_ID = C.NPDC_ID)
            order BY fechaRegistro DESC;
    END PA_SABEC_REPORTE_3;

    PROCEDURE PA_SABEC_REPORTE_4 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_4
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PUBLICADO INTEGER;
    V_ID_EST_VAL_GDEE INTEGER;
    V_PLAZO INTEGER;
    BEGIN
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');

        SELECT NTIN_PLAZO_DIAS INTO V_PLAZO
        FROM SABEC_TIPO_INCONSISTENCIA WHERE NTIN_ID = 13;

        OPEN P_CURSOR FOR
        WITH CASOS AS (
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    EST_PUB.DPCE_FECHA AS fechaPublicacion,
                    PC.CPDC_NOM_ENTIDAD AS entidad, 
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_VAL.DPCE_FECHA, EST_PUB.DPCE_FECHA) dias
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            INNER JOIN SABEC_PROY_CASO_EST EST_VAL ON EST_VAL.NPDC_ID = PC.NPDC_ID AND EST_VAL.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GDEE
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        )
        SELECT EXTRACT(YEAR FROM fechaPublicacion) AS anio,
               EXTRACT(MONTH FROM fechaPublicacion) AS mes,
               TO_CHAR(fechaPublicacion,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
               entidad,
               COUNT(1) AS numeroCasos,
               COUNT(CASE WHEN dias <= V_PLAZO THEN 1 ELSE NULL END) AS dentroPlazo,
               COUNT(CASE WHEN dias > V_PLAZO THEN 1 ELSE NULL END) AS fueraPlazo
        FROM CASOS
        GROUP BY EXTRACT(YEAR FROM fechaPublicacion),
                 EXTRACT(MONTH FROM fechaPublicacion),
                 TO_CHAR(fechaPublicacion,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                 entidad;    
    END PA_SABEC_REPORTE_4;

    PROCEDURE PA_SABEC_REPORTE_5 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_5
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_ID_TIP_RESP IN INTEGER,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER,
        P_ID_TIP_INF IN TYP_TBL_INTEGER,
        P_ID_TEMATICA IN INTEGER,
        P_NUM_ENVIO IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_COD_ENTIDAD IN VARCHAR2,
        P_COD_USU_COORD IN VARCHAR2,
        P_COD_USU_GESTOR IN VARCHAR2,
        P_COD_UNI_ORG IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;
    V_ID_EST_PCS_APR_COOR_GDEE INTEGER;
    V_ID_EST_VAL_GDEE INTEGER;
    V_ID_EST_PUBLICADO INTEGER;
    V_PLAZO INTEGER;
    BEGIN
        V_ID_EST_PCS_ENV_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');
        V_ID_EST_PCS_APR_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES17');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        SELECT NTIN_PLAZO_DIAS INTO V_PLAZO 
        FROM SABEC_TIPO_INCONSISTENCIA WHERE NTIN_ID = 13;

       OPEN P_CURSOR FOR
       WITH Casos AS (
            SELECT  PCS.NPCS_ID,
                    PC.DPDC_FECHA_ENVIO AS fechaRegistro,
                    PC.CPDC_NUM_ENVIO AS codigoProyectoCaso,
                    PCS.CPCS_NUM_PUB AS codigoCasoSabec,
                    PC.CPDC_UNIDAD_ORGANICA AS unidadOrganica,
                    PC.CPDC_NRO_INFOR_AUD AS numeroInforme,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    TR.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_CAD_DELITO(PC.NPDC_ID) AS tipoDelito,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_CAD_INFRACC(PC.NPDC_ID) AS tipoInfraccion,
                    TTEM.CPRV_DESCRIPCION AS tematica,
                    PC.CPDC_OPERADOR_UO AS operadorUO,                
                    PC.CPDC_NOM_GESTOR AS gestor,
                    PC.CPDC_NOM_COORD AS coordinador,
                    EST_VAL.CPCE_NOM_USU AS gerente,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_VAL.DPCE_FECHA, EST_PUB.DPCE_FECHA) diasPublicacion,
                    EST_ENV.DPCE_FECHA AS fechaEnvio,
                    EST_APR.DPCE_FECHA AS fechaAprobacion,
                    EST_VAL.DPCE_FECHA AS fechaValidacion,
                    EST_PUB.DPCE_FECHA AS fechaPublicacion,
                    ALERTA.CALE_NUM_ALERTA AS numAlerta,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_FEC_BP(PCS.NPCS_ID) AS fechaPublicacionBP,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_ALERT_BP(PCS.NPCS_ID) AS codigoAlertaBP
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE 
            LEFT JOIN SABEC_PROY_CASO_EST EST_APR ON EST_APR.NPDC_ID = PC.NPDC_ID AND EST_APR.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_APR_COOR_GDEE
            LEFT JOIN SABEC_PROY_CASO_EST EST_VAL ON EST_VAL.NPDC_ID = PC.NPDC_ID AND EST_VAL.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GDEE
            LEFT JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            LEFT JOIN SABEC_ALERTA_SABEC ALERTA ON ALERTA.NALE_ID = PCS.NALE_ID

            WHERE PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_ENVIO) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM PC.DPDC_FECHA_ENVIO) = P_MES THEN 1
                            ELSE 0
                      END AND
                  1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                           WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE  WHEN P_ID_TEMATICA IS NULL THEN 1
                            WHEN P_ID_TEMATICA = 0 THEN 1
                            WHEN PCS.NPRV_ID_TEMATICA = P_ID_TEMATICA THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_NUM_ENVIO IS NULL THEN 1
                            WHEN PC.CPDC_NUM_ENVIO LIKE P_NUM_ENVIO || '%' THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_NUM_REG IS NULL THEN 1
                            WHEN PC.CPDC_NUM_REG LIKE P_NUM_REG || '%' THEN 1
                            ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_USU_COORD IS NULL THEN 1
                           WHEN PC.CPDC_COD_COORD = P_COD_USU_COORD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_USU_GESTOR IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GESTOR THEN 1
                           ELSE 0
                      END AND
                  1 = CASE  WHEN P_COD_UNI_ORG IS NULL THEN 1
                            WHEN PC.CPDC_COD_UNIDAD_ORGANICA = P_COD_UNI_ORG THEN 1
                            ELSE 0
                      END
        ), BuenasPracticas AS (
             SELECT BP.NPCS_ID,
                    COUNT(1) AS cantidadBP
            FROM SABEC_PROY_CASO_SABEC_BP BP
            GROUP BY BP.NPCS_ID
        ), LeccionesAprendidas AS (
             SELECT LA.NPCS_ID,
                    COUNT(1) AS cantidadLA
            FROM SABEC_PROY_CASO_SABEC_LA LA
            GROUP BY LA.NPCS_ID
        )    
            SELECT  O.fechaRegistro,
                    O.codigoProyectoCaso,
                    O.codigoCasoSabec,
                    O.unidadOrganica,
                    O.numeroInforme,
                    O.entidad,
                    O.tipoResponsabilidad,
                    O.tipoDelito,
                    O.tipoInfraccion,
                    O.tematica,
                    BP.cantidadBP,
                    LA.cantidadLA,
                    O.operadorUO,
                    O.gestor,
                    O.coordinador,
                    O.gerente,
                    CASE WHEN O.diasPublicacion <= V_PLAZO THEN 'Dentro'
                         WHEN O.diasPublicacion > V_PLAZO THEN 'Fuera'
                    END dentroFueraPlazo,
                    O.diasPublicacion diasPublicacion,
                    O.fechaEnvio,
                    O.fechaAprobacion,
                    O.fechaValidacion,
                    O.fechaPublicacion,
                    O.numAlerta,
                    O.fechaPublicacionBP,
                    O.codigoAlertaBP 
            FROM Casos O
            LEFT JOIN BuenasPracticas BP ON BP.NPCS_ID = O.NPCS_ID
            LEFT JOIN LeccionesAprendidas LA ON LA.NPCS_ID = O.NPCS_ID
            ORDER BY O.fechaRegistro DESC;
    END PA_SABEC_REPORTE_5;

    PROCEDURE PA_SABEC_REPORTE_6 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_6
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_ID_TIP_RESP IN INTEGER,
        P_ID_TIP_DEL IN TYP_TBL_INTEGER,
        P_ID_TIP_INF IN TYP_TBL_INTEGER,
        P_ID_TEMATICA IN INTEGER,
        P_NUM_ENVIO IN VARCHAR2,
        P_NUM_REG IN VARCHAR2,
        P_COD_ENTIDAD IN VARCHAR2,
        P_COD_USU_COORD IN VARCHAR2,
        P_COD_USU_GESTOR IN VARCHAR2,
        P_COD_USU_GERENTE IN VARCHAR2,
        P_COD_UNI_ORG IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ENV_UO INTEGER;
    V_ID_EST_ASIG_GEST INTEGER;
    V_ID_EST_PC_EVA_GEST_SABEC INTEGER;
    V_ID_EST_PCS_VER_COOR_GDEE INTEGER;
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;
    V_ID_EST_PCS_OBS_COOR_GDEE INTEGER;
    V_ID_EST_PCS_SUBS_GEST INTEGER;
    V_ID_EST_PCS_APR_COOR_GDEE INTEGER;
    V_ID_EST_PCS_EVA_GER_GDEE INTEGER;
    V_ID_EST_PCS_OBS_GER_GDEE INTEGER;
    V_ID_EST_VAL_GDEE INTEGER;
    V_ID_EST_PCS_SUBS_GEST_CS INTEGER;
    V_ID_EST_PUBLICADO INTEGER;
    BEGIN
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');
        V_ID_EST_ASIG_GEST := SABEC_OBT_ID_PARAMETRO('ESTD','ES07');
        V_ID_EST_PC_EVA_GEST_SABEC  := SABEC_OBT_ID_PARAMETRO('ESTD','ES08');
        V_ID_EST_PCS_ENV_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');
        V_ID_EST_PCS_VER_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES13');
        V_ID_EST_PCS_OBS_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES14');
        V_ID_EST_PCS_SUBS_GEST := SABEC_OBT_ID_PARAMETRO('ESTD','ES16');
        V_ID_EST_PCS_APR_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES17');
        V_ID_EST_PCS_EVA_GER_GDEE   := SABEC_OBT_ID_PARAMETRO('ESTD','ES18');
        V_ID_EST_PCS_OBS_GER_GDEE   := SABEC_OBT_ID_PARAMETRO('ESTD','ES19');
        V_ID_EST_PCS_SUBS_GEST_CS := SABEC_OBT_ID_PARAMETRO('ESTD','ES21');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');

       OPEN P_CURSOR FOR
       WITH Casos AS (
            SELECT  PC.NPDC_ID,
                    PCS.NPCS_ID,
                    PC.DPDC_FECHA_ENVIO AS fechaRegistro,
                    PC.CPDC_NUM_ENVIO AS codigoProyectoCaso,
                    PCS.CPCS_NUM_PUB AS codigoCasoSabec,
                    PC.CPDC_UNIDAD_ORGANICA AS unidadOrganica,
                    PC.CPDC_NRO_INFOR_AUD AS numeroInforme,
                    PC.CPDC_NOM_ENTIDAD AS entidad,
                    TR.CPRV_DESCRIPCION AS tipoResponsabilidad,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_CAD_DELITO(PC.NPDC_ID) AS tipoDelito,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_CAD_INFRACC(PC.NPDC_ID) AS tipoInfraccion,
                    TTEM.CPRV_DESCRIPCION AS tematica,
                    PC.CPDC_OPERADOR_UO AS operadorUO,                
                    PC.CPDC_NOM_GESTOR AS gestor,
                    PC.CPDC_NOM_COORD AS coordinador,
                    PC.CPDC_NOM_GERENTE AS gerente,
                    ALERTA.CALE_NUM_ALERTA AS numAlerta,
                    PC.DPDC_FECHA_ASIG AS fechaAsignacion,
                    EST_COOR.DPCE_FECHA AS fechaEnvioCoord,
                    EST_APROB.DPCE_FECHA AS fechaAprovCoord,
                    EST_VAL.DPCE_FECHA AS fechaValGerente,
                    EST_ENV.DPCE_FECHA AS fechaEnvioUO,
                    EST_PUB.DPCE_FECHA AS fechaPublicacion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            LEFT JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            LEFT JOIN SABEC_ALERTA_SABEC ALERTA ON ALERTA.NALE_ID = PCS.NALE_ID
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            LEFT JOIN SABEC_PROY_CASO_EST EST_COOR ON EST_COOR.NPDC_ID = PC.NPDC_ID AND EST_COOR.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE
            LEFT JOIN SABEC_PROY_CASO_EST EST_APROB ON EST_APROB.NPDC_ID = PC.NPDC_ID AND EST_APROB.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_APR_COOR_GDEE
            LEFT JOIN SABEC_PROY_CASO_EST EST_VAL ON EST_VAL.NPDC_ID = PC.NPDC_ID AND EST_VAL.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GDEE
            LEFT JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            WHERE PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_ENVIO) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM PC.DPDC_FECHA_ENVIO) = P_MES THEN 1
                            ELSE 0
                      END AND
                  1 = CASE WHEN P_ID_TIP_RESP IS NULL THEN 1
                           WHEN P_ID_TIP_RESP = 0 THEN 1
                           WHEN PC.NPRV_ID_TIP_RESP = P_ID_TIP_RESP THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_DEL)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_TIP_DEL PCTD 
                                       INNER JOIN TABLE(P_ID_TIP_DEL) FTD ON PCTD.NPRV_ID_TIP_DEL = FTD.NINT_VAL
                                       WHERE PCTD.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END  AND
                  1 = CASE WHEN (SELECT COUNT(1) FROM TABLE(P_ID_TIP_INF)) = 0 THEN 1
                           WHEN EXISTS(SELECT 1 
                                       FROM SABEC_PROY_CASO_INF PCINF  
                                       INNER JOIN TABLE(P_ID_TIP_INF) FTI ON PCINF.NPCI_ID_INFRACCION = FTI.NINT_VAL
                                       WHERE PCINF.NPDC_ID = PC.NPDC_ID) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE  WHEN P_ID_TEMATICA IS NULL THEN 1
                            WHEN P_ID_TEMATICA = 0 THEN 1
                            WHEN PCS.NPRV_ID_TEMATICA = P_ID_TEMATICA THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_NUM_ENVIO IS NULL THEN 1
                            WHEN PC.CPDC_NUM_ENVIO LIKE P_NUM_ENVIO || '%' THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_NUM_REG IS NULL THEN 1
                            WHEN PC.CPDC_NUM_REG LIKE P_NUM_REG || '%' THEN 1
                            ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_ENTIDAD IS NULL THEN 1
                           WHEN PC.CPDC_COD_ENTIDAD = P_COD_ENTIDAD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_USU_COORD IS NULL THEN 1
                           WHEN PC.CPDC_COD_COORD = P_COD_USU_COORD THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_USU_GESTOR IS NULL THEN 1
                           WHEN PC.CPDC_COD_GESTOR = P_COD_USU_GESTOR THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_COD_USU_GERENTE IS NULL THEN 1
                           WHEN PC.CPDC_NOM_GERENTE = P_COD_USU_GERENTE THEN 1
                           ELSE 0
                      END AND
                  1 = CASE  WHEN P_COD_UNI_ORG IS NULL THEN 1
                            WHEN PC.CPDC_COD_UNIDAD_ORGANICA = P_COD_UNI_ORG THEN 1
                            ELSE 0
                      END
        ), ReprocesoGestor AS (
            SELECT EST.NPDC_ID,
                    COUNT(1) AS reprocesosGestor
            FROM SABEC_PROY_CASO_EST EST
            WHERE EST.NPRV_ID_ESTADO_POST IN (V_ID_EST_PCS_OBS_COOR_GDEE, V_ID_EST_PCS_OBS_GER_GDEE)
            GROUP BY EST.NPDC_ID
        ), AperturaGESTOR AS (
            SELECT  EST.NPDC_ID,
                    MAX(EST.DPCE_FECHA) AS fechaAperturaGES
            FROM SABEC_PROY_CASO_EST EST
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PC_EVA_GEST_SABEC
            GROUP BY EST.NPDC_ID
        ), Verificacion AS (
            SELECT EST.NPDC_ID,
                    MIN(EST.DPCE_FECHA) AS fechaVerificacion
            FROM SABEC_PROY_CASO_EST EST
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_VER_COOR_GDEE
            GROUP BY EST.NPDC_ID
        ), SubsanadosGESTOR AS (
            SELECT SUBS.NPDC_ID, SUM(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(OBS.fecha, SUBS.fecha)) dias
            FROM  (SELECT EST.NPDC_ID, 
                       ROW_NUMBER() OVER (PARTITION BY EST.NPDC_ID ORDER BY EST.DPCE_FECHA ASC) AS rowNumber,
                       EST.DPCE_FECHA AS fecha
                   FROM SABEC_PROY_CASO_EST EST
                   WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_SUBS_GEST) SUBS
                   INNER JOIN (SELECT NPDC_ID, rowNumber, fecha FROM 
                                (SELECT EST.NPDC_ID,
                                   ROW_NUMBER() OVER (PARTITION BY EST.NPDC_ID ORDER BY EST.DPCE_FECHA ASC) AS rowNumber,
                                   EST.DPCE_FECHA AS fecha
                                 FROM SABEC_PROY_CASO_EST EST
                                 WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_OBS_COOR_GDEE
                                )T2) OBS ON 
                            SUBS.NPDC_ID = OBS.NPDC_ID AND SUBS.ROWNUMBER = OBS.ROWNUMBER
            GROUP BY SUBS.NPDC_ID
        ), AperturaGDEE AS (
            SELECT EST.NPDC_ID,
                    MIN(EST.DPCE_FECHA) AS fechaAperturaGER
            FROM SABEC_PROY_CASO_EST EST
            WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_EVA_GER_GDEE
            GROUP BY EST.NPDC_ID
        ), SubsanadosGDEE AS (
            SELECT SUBS.NPDC_ID, SUM(PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(OBS.fecha, SUBS.fecha)) dias
            FROM  (SELECT EST.NPDC_ID, 
                       ROW_NUMBER() OVER (PARTITION BY EST.NPDC_ID ORDER BY EST.DPCE_FECHA ASC) AS rowNumber,
                       EST.DPCE_FECHA AS fecha
                   FROM SABEC_PROY_CASO_EST EST
                   WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_SUBS_GEST_CS) SUBS
                   INNER JOIN (SELECT NPDC_ID, rowNumber, fecha FROM 
                                (SELECT EST.NPDC_ID,
                                   ROW_NUMBER() OVER (PARTITION BY EST.NPDC_ID ORDER BY EST.DPCE_FECHA ASC) AS rowNumber,
                                   EST.DPCE_FECHA AS fecha
                                 FROM SABEC_PROY_CASO_EST EST
                                 WHERE EST.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_OBS_GER_GDEE
                                )T2) OBS ON 
                            SUBS.NPDC_ID = OBS.NPDC_ID AND SUBS.ROWNUMBER = OBS.ROWNUMBER
            GROUP BY SUBS.NPDC_ID
        )
            SELECT  O.fechaRegistro,   
                    O.codigoProyectoCaso,
                    O.codigoCasoSabec,
                    O.unidadOrganica,
                    O.numeroInforme,
                    O.entidad,
                    O.tipoResponsabilidad,
                    O.tipoDelito,
                    O.tipoInfraccion,
                    
                    O.tematica,

                    O.operadorUO,
                    O.gestor,
                    O.coordinador,
                    O.gerente,
                    O.numAlerta,
                    
                    (CASE WHEN E.reprocesosGestor > 0 THEN E.reprocesosGestor ELSE NULL END) AS numReprocesosGestor,
                    O.fechaAsignacion, -- a
                    AGES.fechaAperturaGES, -- b
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(O.fechaAsignacion, AGES.fechaAperturaGES) demoraAsignacion,
                    
                    O.fechaEnvioCoord, -- c
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(AGES.fechaAperturaGES, O.fechaEnvioCoord) evaluacionGestor,
                    
                    V.fechaVerificacion, -- d
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(O.fechaEnvioCoord, V.fechaVerificacion) demoraVerificacion,
                    
                    O.fechaAprovCoord, -- e
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(V.fechaVerificacion, O.fechaAprovCoord) - NVL(SGES.dias, 0) demoraRevCoordGDEE,
               
                    AGER.fechaAperturaGER, -- f
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(O.fechaAprovCoord, AGER.fechaAperturaGER) demoraAperGDEE,
                 
                    O.fechaValGerente, -- g
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(AGER.fechaAperturaGER, O.fechaValGerente) - NVL(SGER.dias, 0) demoraAprGDEE,
                  
                    O.fechaEnvioUO, -- h
                    O.fechaPublicacion, -- i
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(O.fechaEnvioUO, O.fechaPublicacion) demoraPublicacion,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(O.fechaValGerente, O.fechaPublicacion) demoraValPublicacion
            FROM Casos O
            LEFT JOIN ReprocesoGestor E ON O.NPDC_ID = E.NPDC_ID
            LEFT JOIN AperturaGESTOR AGES ON O.NPDC_ID = AGES.NPDC_ID
            LEFT JOIN Verificacion V ON O.NPDC_ID = V.NPDC_ID
            LEFT JOIN AperturaGDEE AGER ON O.NPDC_ID = AGER.NPDC_ID
            LEFT JOIN SubsanadosGESTOR SGES ON O.NPDC_ID = SGES.NPDC_ID
            LEFT JOIN SubsanadosGDEE SGER ON O.NPDC_ID = SGER.NPDC_ID
            ORDER BY O.fechaRegistro DESC;
    END PA_SABEC_REPORTE_6;

    PROCEDURE PA_SABEC_REPORTE_7 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_7
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_COD_USU_GESTOR IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PC_EVA_GEST_SABEC INTEGER;
    V_ID_EST_PCS_OBS_COOR_GDEE INTEGER;
    V_ID_EST_PCS_OBS_GER_GDEE INTEGER;
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;
    V_ID_EST_PCS_PUB_GER_GDEE INTEGER;
    V_PLAZO INTEGER;
    BEGIN
        V_ID_EST_PC_EVA_GEST_SABEC  := SABEC_OBT_ID_PARAMETRO('ESTD','ES08');
        V_ID_EST_PCS_OBS_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES14');
        V_ID_EST_PCS_OBS_GER_GDEE   := SABEC_OBT_ID_PARAMETRO('ESTD','ES19');
        V_ID_EST_PCS_ENV_COOR_GDEE  := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');
        V_ID_EST_PCS_PUB_GER_GDEE   := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');

        OPEN P_CURSOR FOR
        WITH casos AS (
            SELECT  EXTRACT(YEAR FROM PC.DPDC_FECHA_ASIG) AS anio,
                    EXTRACT(MONTH FROM PC.DPDC_FECHA_ASIG) AS mes,
                    PC.NPDC_ID AS idProyectoCaso,
                    TO_CHAR(PC.DPDC_FECHA_ASIG,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
                    PC.CPDC_COD_GESTOR AS codigoGestor,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    PC.NPRV_ID_ESTADO AS idEstadoActual
            FROM SABEC_PROY_CASO PC
            WHERE PC.CPDC_COD_GESTOR IS NOT NULL AND
                  1 = CASE WHEN P_COD_USU_GESTOR IS NULL THEN 1
                           WHEN P_COD_USU_GESTOR = PC.CPDC_COD_GESTOR THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(PC.DPDC_FECHA_ASIG,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        ),casosGestorObservados AS(
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    PC.CPDC_NOM_GESTOR AS gestor,
                    COUNT(1) cantidadObservaciones
            FROM SABEC_PROY_CASO PC
            INNER JOIN CASOS C ON C.idProyectoCaso = PC.NPDC_ID
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND 
                                                  EST.NPRV_ID_ESTADO_POST IN(V_ID_EST_PCS_OBS_COOR_GDEE, V_ID_EST_PCS_OBS_GER_GDEE) AND
                                                  EST.DPCE_FECHA >= PC.DPDC_FECHA_ASIG
            GROUP BY PC.NPDC_ID,
                     PC.CPDC_NOM_GESTOR                
        ), casosTiempoEvaluacion AS (
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(MIN(EST_EVAL.DPCE_FECHA), MIN(EST_REV.DPCE_FECHA)) diasEvaluacionCaso
            FROM SABEC_PROY_CASO PC
            INNER JOIN CASOS C ON C.idProyectoCaso = PC.NPDC_ID
            INNER JOIN SABEC_PROY_CASO_EST EST_REV ON   EST_REV.NPDC_ID = PC.NPDC_ID AND EST_REV.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE 
            INNER JOIN SABEC_PROY_CASO_EST EST_EVAL ON   EST_EVAL.NPDC_ID = PC.NPDC_ID AND EST_EVAL.NPRV_ID_ESTADO_POST = V_ID_EST_PC_EVA_GEST_SABEC
            GROUP BY PC.NPDC_ID
        )
        SELECT C.ANIO,
               C.MES,
               C.MESDESCRIPCION,
               C.CODIGOGESTOR,
               C.GESTOR,
               COUNT(1) AS numeroCasosAsignados,
               COUNT(CASE WHEN NVL(CO.cantidadObservaciones,0) > 2 THEN 1 ELSE NULL END) AS numeroCasosReprocesados,
               ROUND(COUNT(CASE WHEN NVL(CO.cantidadObservaciones,0) > 2 THEN 1 ELSE NULL END) / COUNT(1),4) AS porcentajeReproceso,
               ROUND((SUM(NVL(CE.diasEvaluacionCaso,0)) / COUNT(1)),2) AS promedioEvaluacion,
               COUNT(CASE WHEN C.idEstadoActual = V_ID_EST_PCS_PUB_GER_GDEE THEN 1 ELSE NULL END) AS emitidosParaPublicacion           
        FROM CASOS C
        LEFT JOIN casosGestorObservados CO ON CO.idProyectoCaso = C.idProyectoCaso
        LEFT JOIN casosTiempoEvaluacion CE ON CE.idProyectoCaso = C.idProyectoCaso
        GROUP BY   C.ANIO,
                   C.MES,
                   C.MESDESCRIPCION,
                   C.CODIGOGESTOR,
                   C.GESTOR;
    END PA_SABEC_REPORTE_7;

    PROCEDURE PA_SABEC_REPORTE_8 (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_REPORTE_8
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FECHA_INICIO IN DATE,
        P_FECHA_FIN IN DATE,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PUBLICADO INTEGER;
    V_ID_EST_VAL_GDEE INTEGER;
    V_ID_EST_ENV_UO INTEGER;
    V_PLAZO INTEGER;
    BEGIN
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');

        SELECT NTIN_PLAZO_DIAS INTO V_PLAZO
        FROM SABEC_TIPO_INCONSISTENCIA WHERE NTIN_ID = 13;

        OPEN P_CURSOR FOR
        WITH CASOS AS (
            SELECT  PC.NPDC_ID AS idProyectoCaso,
                    EST_PUB.DPCE_FECHA AS fechaPublicacion,
                    EST_PUB.CPCE_NOM_USU AS usuarioPublico,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_ENV.DPCE_FECHA, EST_PUB.DPCE_FECHA) AS diasOporPubli,
                    PG_SABEC_PRINCIPAL.FU_SABEC_OBT_DIAS_HABILES(EST_VAL.DPCE_FECHA, EST_PUB.DPCE_FECHA) AS diasPubli
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST_PUB ON EST_PUB.NPDC_ID = PC.NPDC_ID AND EST_PUB.NPRV_ID_ESTADO_POST = V_ID_EST_PUBLICADO
            INNER JOIN SABEC_PROY_CASO_EST EST_VAL ON EST_VAL.NPDC_ID = PC.NPDC_ID AND EST_VAL.NPRV_ID_ESTADO_POST = V_ID_EST_VAL_GDEE
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_PUBLICADO AND
                  1 = CASE WHEN P_FECHA_INICIO IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) >= TO_NUMBER(TO_CHAR(P_FECHA_INICIO,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END AND
                  1 = CASE WHEN P_FECHA_FIN IS NULL THEN 1
                           WHEN TO_NUMBER(TO_CHAR(EST_PUB.DPCE_FECHA,'YYYYMMDD')) <= TO_NUMBER(TO_CHAR(P_FECHA_FIN,'YYYYMMDD')) THEN 1
                           ELSE 0
                      END
        )
        SELECT EXTRACT(YEAR FROM fechaPublicacion) AS anio,
               EXTRACT(MONTH FROM fechaPublicacion) AS mes,
               TO_CHAR(fechaPublicacion,'Month', 'NLS_DATE_LANGUAGE = SPANISH') AS mesDescripcion,
               usuarioPublico,
               COUNT(1) AS numeroCasosPublicados,
               ROUND(SUM(diasOporPubli)/COUNT(1),2) AS oportunidadPublicacion,
               COUNT(CASE WHEN diasPubli <= V_PLAZO THEN 1 ELSE NULL END) AS emitidosPlazo,
               ROUND(COUNT(CASE WHEN diasPubli <= V_PLAZO THEN 1 ELSE NULL END)/COUNT(1),2) AS porcentajeEnPlazo
        FROM CASOS
        GROUP BY EXTRACT(YEAR FROM fechaPublicacion),
                 EXTRACT(MONTH FROM fechaPublicacion),
                 TO_CHAR(fechaPublicacion,'Month', 'NLS_DATE_LANGUAGE = SPANISH'),
                 usuarioPublico;    
    END PA_SABEC_REPORTE_8;

    PROCEDURE PA_SABEC_SEL_BP (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_BP
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_BP IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
        OPEN P_CURSOR FOR
            SELECT   BP.NPSB_ID AS id,
                     BP.CPSB_NRO AS numero,
                     BP.CPSB_ASUNTO AS asunto,
                     BP.NPRV_ID_SUB_CATEGORIA AS idSubcategoria,
                     P.CPRV_DESCRIPCION AS subcategoria,
                     BP.CPSB_DESCRIPCION AS descripcion                    
            FROM SABEC_PROY_CASO_SABEC_BP BP
            INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = BP.NPRV_ID_SUB_CATEGORIA
            WHERE BP.NPSB_ID = P_ID_BP;
    END PA_SABEC_SEL_BP;

    PROCEDURE PA_SABEC_SEL_BP_CASO_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_BP_CASO_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
      OPEN P_CURSOR FOR
      SELECT BP.NPSB_ID AS id,
             BP.CPSB_NRO AS numero,
             BP.CPSB_ASUNTO AS asunto,
             BP.NPRV_ID_SUB_CATEGORIA AS idSubcategoria,
             P.CPRV_DESCRIPCION AS subcategoria,
             BP.CPSB_DESCRIPCION AS descripcion                    
      FROM SABEC_PROY_CASO_SABEC_BP BP
      INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = BP.NPRV_ID_SUB_CATEGORIA
      WHERE NPCS_ID = P_ID_CASO_SABEC AND BP.NPSB_PUBLICADO <> 1;
    END PA_SABEC_SEL_BP_CASO_SABEC;

    PROCEDURE PA_SABEC_SEL_CASO_CORREOS_AUT (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_CASO_CORREOS_AUT
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
      OPEN P_CURSOR FOR
        SELECT id, numeroEnvio, diasHabiles, idEstado, estado, codigoEstado, 
                fechaRegistroEstado, rolEstado, rolDestino, rolCC, unidadOrganica, plazoDias
        FROM (
            SELECT pc.npdc_id as id,
                   pc.cpdc_num_envio as numeroEnvio,
                   PG_SABEC_PRINCIPAL.fu_sabec_obt_dias_habiles (est.dpce_fecha, sysdate) as diasHabiles,

                   est.nprv_id_estado_post AS idEstado,
                   parEstado.CPRV_DESCRIPCION AS estado,
                   parEstado.CPRV_COD AS codigoEstado,

                   est.dpce_fecha as fechaRegistroEstado,
                   parRol.cprv_cod as rolEstado,
                   (CASE parEstado.cprv_cod 
                        WHEN 'ES02' then 'ROL02'
                        WHEN 'ES04' then 'ROL01'
                        WHEN 'ES06' then 'ROL02'
                        WHEN 'ES07' then 'ROL03'
                        WHEN 'ES09' then 'ROL01'
                        WHEN 'ES11' then 'ROL03'
                        WHEN 'ES12' then 'ROL02'
                        WHEN 'ES14' then 'ROL03'
                        WHEN 'ES16' then 'ROL02'
                        WHEN 'ES17' then 'ROL04'
                        WHEN 'ES19' then 'ROL03'
                        WHEN 'ES21' then 'ROL04'
                   END) as rolDestino,
                   (CASE parEstado.cprv_cod 
                        WHEN 'ES11' then 'ROL02'
                        WHEN 'ES19' then 'ROL02'
                   END) as rolCC,
                   est.CPCE_UND_ORGANICA as unidadOrganica,
                   est.NPCE_PLAZO_DIAS as plazoDias
            FROM sabec_proy_caso_est est
            INNER JOIN sabec_proy_caso pc ON
                est.npdc_id = pc.npdc_id
            INNER JOIN sabec_parametros_val parRol ON
                est.nprv_id_rol = parRol.nprv_id
            INNER JOIN sabec_parametros_val parEstado ON
                est.nprv_id_estado_post = parEstado.nprv_id
            WHERE pc.NPDC_ACTIVO = 1 AND
                  est.cpce_situacion = 'A' AND
                  parEstado.cprv_cod in ('ES02', 'ES04', 'ES06', 'ES07', 'ES09', 'ES11',
                                         'ES12', 'ES14', 'ES16', 'ES17', 'ES19', 'ES21')
        ) TABLA1
        WHERE diasHabiles = plazoDias
        ORDER BY fechaRegistroEstado ASC;
    END PA_SABEC_SEL_CASO_CORREOS_AUT;

    PROCEDURE PA_SABEC_SEL_CAS_SAB (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_CAS_SAB
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_PROY_CASO IN INTEGER,
        P_ID_CASO_SABEC IN INTEGER,
        P_CURSOR_CASO OUT SYS_REFCURSOR,
        P_CURSOR_ADJUNTOS OUT SYS_REFCURSOR,
        P_CURSOR_AUDITORES_ENCARGADOS OUT SYS_REFCURSOR,
        P_CURSOR_RESULTADOS_FINALES OUT SYS_REFCURSOR,
        P_CURSOR_BUENAS_PRACTICAS OUT SYS_REFCURSOR,
        P_CURSOR_LECCIONES_APRENDIDAS OUT SYS_REFCURSOR,
        P_CURSOR_OBSERVACIONES OUT SYS_REFCURSOR
    )IS
    BEGIN
        IF(NVL(P_ID_CASO_SABEC,0) = 0 AND NVL(P_ID_PROY_CASO,0) != 0) THEN
           OPEN P_CURSOR_CASO FOR
              SELECT    0 AS id,
                        P_ID_PROY_CASO AS idProyectoCaso,
                        CPDC_NUM_ENVIO AS numeroRegistro,
                        DPDC_FECHA_ENVIO AS fechaRegistro,
                        NULL AS fechaEnvio,
                        NULL AS fechaSubsanacion,
                        CPDC_NRO_INFOR_AUD AS numeroInformeAuditoria,
                        DPDC_FECHA_ASIG AS fechaAsignacion,
                        DPDC_INICIO_ATENCION AS inicioEvaluacion,
                        NULL AS numeroPublicacion,
                        NULL AS idTematica,
                        NULL AS tematica,
                        NULL AS codigoTematica,
                        NULL AS asunto,
                        NULL AS fechaInicioAuditoria,
                        NULL AS fechaFinAuditoria,
                        NULL AS uoEmisor,
                        NULL AS jefeOci,
                        NULL AS jefeComision,
                        NULL AS supervisor,
                        NULL AS especialista,
                        NULL AS sintesisAuditoria,
                        NULL AS idEtapaConcluyoCaso,
                        NULL AS etapaConcluyoCaso,
                        NULL AS codigoEtapaConcluyoCaso,
                        NULL AS fundamentosJuridicos,
                        NULL AS fundamentosOtros,
                        NULL AS justBuenasPracticas,
                        NULL AS justLeccionesAprendidas,
                        NULL AS idGuiaSabec,
                        0 AS buenaPractica,
                        0 AS leccionAprendida,
                        NULL AS nroAlertaSabec,

                        CPDC_OPERADOR_UO AS operadorUO,
                        CPDC_COD_OPERADOR_UO AS codigoOperadorUO,
                        RO.NPRV_ID AS idRolOperadorUO,
                        RO.CPRV_DESCRIPCION AS rolOperadorUO,
                        RO.CPRV_COD AS codigoRolOperadorUO,

                        NPRV_ID_TIP_RESP as idResponsabilidad,
                        TR.CPRV_DESCRIPCION AS responsabilidad,
                        TR.CPRV_COD AS codigoResponsabilidad,

                        CPDC_NOM_ENTIDAD AS entidad,
                        CPDC_COD_ENTIDAD AS codigoEntidad,
                        CPDC_DEP_ENTIDAD AS departamentoEntidad,

                        NPRV_ID_ESTADO AS idEstado,
                        ES.CPRV_DESCRIPCION AS estado,
                        ES.CPRV_COD AS codigoEstado,

                        CPDC_NOM_GESTOR AS gestor,
                        CPDC_COD_GESTOR AS codGestor,
                        RG.NPRV_ID AS idRolGestor,
                        RG.CPRV_DESCRIPCION AS rolGestor,
                        RG.CPRV_COD AS codigoRolGestor,

                        CPDC_NOM_USU_DESTINO AS nombreUsuarioDestino,
                        CPDC_COD_USU_DESTINO AS codigoUsuarioDestino,
                        RD.NPRV_ID AS idRolDestino,
                        RD.CPRV_DESCRIPCION AS rolDestino,
                        RD.CPRV_COD AS codigoRolDestino,

                        CPDC_NOM_USU_REMITE AS nombreUsuarioRemite,
                        CPDC_COD_USU_REMITE AS nombreUsuarioRemite,
                        RR.NPRV_ID AS idRolRemite,
                        RR.CPRV_DESCRIPCION AS rolRemite,
                        RR.CPRV_COD AS codigoRolRemite,

                        0 AS loadFecIniAudit,
                        0 AS loadFecFinAudit,
                        0 AS loadUoEmisor,
                        0 AS loadJefeOci,
                        0 AS loadJefeComision,
                        0 AS loadSupervisor,
                        0 AS loadEspecialista,
                        0 AS loadSintesisAudit
              FROM SABEC_PROY_CASO P
              INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = P.NPRV_ID_TIP_RESP
              INNER JOIN SABEC_PARAMETROS_VAL ES ON ES.NPRV_ID = P.NPRV_ID_ESTADO
              INNER JOIN SABEC_PARAMETROS_VAL RO ON RO.NPRV_ID = P.NPRV_ID_ROL_OPERADOR_UO
              LEFT JOIN  SABEC_PARAMETROS_VAL RG ON RG.NPRV_ID = P.NPRV_ID_ROL_GESTOR
              LEFT JOIN  SABEC_PARAMETROS_VAL RD ON RD.NPRV_ID = P.NPRV_ID_ROL_DESTINO
              LEFT JOIN  SABEC_PARAMETROS_VAL RR ON RR.NPRV_ID = P.NPRV_ID_ROL_REMITE
              WHERE P.NPDC_ID = P_ID_PROY_CASO AND  P.NPDC_ACTIVO = 1;

            OPEN P_CURSOR_ADJUNTOS FOR
              SELECT  NPCA_ID AS id,
                      CPCA_NOMBRE AS nombre,
                      NPCA_PESO AS peso
              FROM SABEC_PROY_CASO_ADJ
              WHERE NPDC_ID = P_ID_PROY_CASO;

            OPEN P_CURSOR_OBSERVACIONES FOR
              SELECT NPCO_ID AS id,
                     NPDC_ID AS idProyectoCaso,
                     NULL AS idCasoSabec,
                     OBS.CPCO_NOM_USU_OBSERVA AS usuarioObserva,
                     OBS.CPCO_COD_USU_OBSERVA AS codigoUsuarioObserva,
                     RU.NPRV_ID AS idRol,
                     RU.CPRV_DESCRIPCION AS rol,
                     RU.CPRV_COD AS codigoRol,
                     EST.NPRV_ID AS idEstado,
                     EST.CPRV_DESCRIPCION AS estado,
                     EST.CPRV_COD AS codigoEstado,
                     DPCO_FECHA_OBSERVACION AS fechaObservacion,
                     TI.NTIN_ID AS idTipoInconsistencia,
                     TI.CTIN_DESCRIPCION AS tipoInconsistencia,
                     TI.NTIN_PLAZO_DIAS AS plazoDias,
                     CPCO_DETALLE AS detalle
              FROM SABEC_PROY_CASO_OBS OBS
              LEFT JOIN SABEC_TIPO_INCONSISTENCIA TI ON TI.NTIN_ID = OBS.NTIN_ID_TIPO_INC
              INNER JOIN SABEC_PARAMETROS_VAL  EST ON EST.NPRV_ID = OBS.NPRV_ID_ESTADO
              INNER JOIN SABEC_PARAMETROS_VAL RU ON RU.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
              WHERE NPDC_ID = P_ID_PROY_CASO
              ORDER BY NPCO_ID DESC;

       ELSIF(NVL(P_ID_CASO_SABEC,0)!= 0) THEN
              OPEN P_CURSOR_CASO FOR                             
              SELECT    PS.NPCS_ID AS id,
                        PS.NPDC_ID AS idProyectoCaso,
                        PC.CPDC_NUM_ENVIO AS numeroRegistro,
                        PC.DPDC_FECHA_ENVIO AS fechaRegistro,
                        DPCS_FECHA_ENVIO AS fechaEnvio,
                        NULL AS fechaSubsanacion,
                        PC.CPDC_NRO_INFOR_AUD AS numeroInformeAuditoria,
                        PC.DPDC_FECHA_ASIG AS fechaAsignacion,
                        NVL(PS.DPCS_INICIO_EVALUACION,PC.DPDC_INICIO_ATENCION) AS inicioEvaluacion,
                        PS.NPRV_ID_TEMATICA AS idTematica,
                        TEM.CPRV_DESCRIPCION AS tematica,
                        TEM.CPRV_COD AS codigoTematica,
                        CPCS_ASUNTO AS asunto,
                        DPCS_INICIO_AUDIT AS fechaInicioAuditoria,
                        DPCS_FIN_AUDIT AS fechaFinAuditoria,
                        CPCS_UO_EMISOR AS uoEmisor,
                        CPCS_JEFE_OCI AS jefeOci,
                        CPCS_JEFE_COMISION AS jefeComision,
                        CPCS_SUPERVISOR AS supervisor,
                        CPCS_ESPECIALISTA AS especialista,
                        CPCS_SINTESIS_AUDIT AS sintesisAuditoria,
                        NPCS_ETAPA_CONCLUYE AS idEtapaConcluyoCaso,
                        ECON.CPRV_DESCRIPCION AS etapaConcluyoCaso,
                        ECON.CPRV_COD AS codigoEtapaConcluyoCaso,
                        CPCS_FUND_JURIDICOS AS fundamentosJuridicos,
                        CPCS_FUND_OTROS AS fundamentosOtros,
                        NPCS_BP AS buenaPractica,
                        NPCS_LA AS leccionAprendida,
                        AL.CALE_NUM_ALERTA AS nroAlertaSabec,
                        CPCS_JUST_BP AS justBuenasPracticas,
                        CPCS_JUST_LA AS justLeccionesAprendidas,
                        PC.CPDC_OPERADOR_UO AS operadorUO,
                        PC.CPDC_COD_OPERADOR_UO AS codigoOperadorUO,
                        RO.NPRV_ID AS idRolOperadorUO,
                        RO.CPRV_DESCRIPCION AS rolOperadorUO,
                        RO.CPRV_COD AS codigoRolOperadorUO,

                        PC.NPRV_ID_TIP_RESP as idResponsabilidad,
                        TR.CPRV_DESCRIPCION AS responsabilidad,
                        TR.CPRV_COD AS codigoResponsabilidad,

                        CPDC_NOM_ENTIDAD AS entidad,
                        CPDC_COD_ENTIDAD AS codigoEntidad,
                        CPDC_DEP_ENTIDAD AS departamentoEntidad,

                        ES.NPRV_ID AS idEstado,
                        ES.CPRV_DESCRIPCION AS estado,
                        ES.CPRV_COD AS codigoEstado,

                        PC.CPDC_NOM_GESTOR AS gestor,
                        PC.CPDC_COD_GESTOR AS codGestor,
                        RG.NPRV_ID AS idRolGestor,
                        RG.CPRV_DESCRIPCION AS rolGestor,
                        RG.CPRV_COD AS codigoRolGestor,
                        PS.NPRV_ID_GUIA AS idGuiaSabec,

                        CPDC_NOM_USU_DESTINO AS nombreUsuarioDestino,
                        CPDC_COD_USU_DESTINO AS codigoUsuarioDestino,
                        RD.NPRV_ID AS idRolDestino,
                        RD.CPRV_DESCRIPCION AS rolDestino,
                        RD.CPRV_COD AS codigoRolDestino,

                        CPDC_NOM_USU_REMITE AS nombreUsuarioRemite,
                        CPDC_COD_USU_REMITE AS nombreUsuarioRemite,
                        RR.NPRV_ID AS idRolRemite,
                        RR.CPRV_DESCRIPCION AS rolRemite,
                        RR.CPRV_COD AS codigoRolRemite,

                        PS.CPCS_NUM_PUB AS numeroPublicacion,
                        PS.NPCS_LOAD_FEC_INI AS loadFecIniAudit,
                        PS.NPCS_LOAD_FEC_TER AS loadFecFinAudit,
                        PS.NPCS_LOAD_UO_EMISOR AS loadUoEmisor,
                        PS.NPCS_LOAD_JEFE_OCI AS loadJefeOci,
                        PS.NPCS_LOAD_JEFE_COMISION AS loadJefeComision,
                        PS.NPCS_LOAD_SUPERVISOR AS loadSupervisor,
                        PS.NPCS_LOAD_ESPECIALISTA AS loadEspecialista,
                        PS.NPCS_LOAD_SINTESIS_AUDIT AS loadSintesisAudit
              FROM SABEC_PROY_CASO_SABEC PS
              INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
              INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
              INNER JOIN SABEC_PARAMETROS_VAL ES ON ES.NPRV_ID = PC.NPRV_ID_ESTADO
              INNER JOIN SABEC_PARAMETROS_VAL RO ON RO.NPRV_ID = PC.NPRV_ID_ROL_OPERADOR_UO
              LEFT JOIN  SABEC_PARAMETROS_VAL RD ON RD.NPRV_ID = PC.NPRV_ID_ROL_DESTINO
              LEFT JOIN  SABEC_PARAMETROS_VAL RR ON RR.NPRV_ID = PC.NPRV_ID_ROL_REMITE
              LEFT JOIN  SABEC_PARAMETROS_VAL TEM ON TEM.NPRV_ID = PS.NPRV_ID_TEMATICA
              LEFT JOIN  SABEC_PARAMETROS_VAL ECON ON ECON.NPRV_ID = PS.NPCS_ETAPA_CONCLUYE
              LEFT JOIN  SABEC_PARAMETROS_VAL RG ON RG.NPRV_ID = PC.NPRV_ID_ROL_GESTOR
              LEFT JOIN  SABEC_ALERTA_SABEC AL ON AL.NALE_ID = PS.NALE_ID
              WHERE PS.NPCS_ID = P_ID_CASO_SABEC AND PS.NPCS_ACTIVO = 1;

              OPEN P_CURSOR_ADJUNTOS FOR
              SELECT  AD.NPCA_ID AS id,
                      AD.CPCA_NOMBRE AS nombre,
                      AD.NPCA_PESO AS peso
              FROM SABEC_PROY_CASO_SABEC PS
              INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
              INNER JOIN SABEC_PROY_CASO_ADJ AD ON AD.NPDC_ID = PC.NPDC_ID
              WHERE PS.NPCS_ID = P_ID_CASO_SABEC;

              OPEN P_CURSOR_AUDITORES_ENCARGADOS FOR
              SELECT NPSA_ID AS id,
                     CPSA_NOMBRE_AUDITOR AS auditor,
                     DPSA_FECHA_ASIG AS fechaAsignacion,
                     NPSA_LOAD as load
              FROM SABEC_PROY_CASO_SABEC_AUD
              WHERE NPCS_ID = P_ID_CASO_SABEC;

              OPEN P_CURSOR_RESULTADOS_FINALES FOR
              SELECT R.NPSR_ID AS id,
                     R.CPSR_DESCRIPCION AS descripcion,
                     R.NPRV_ID_RESULTADO_FINAL AS idResultadoFinal,
                     P.CPRV_DESCRIPCION AS resultadoFinal,
                     R.NPSR_CONFIRMADA AS confirmada,
                     P.CPRV_AUX2 AS codigoImagen
              FROM SABEC_PROY_CASO_SABEC_RES R
              INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = R.NPRV_ID_RESULTADO_FINAL
              WHERE NPCS_ID = P_ID_CASO_SABEC;

              OPEN P_CURSOR_BUENAS_PRACTICAS FOR
              SELECT BP.NPSB_ID AS id,
                     BP.CPSB_NRO AS numero,
                     BP.CPSB_ASUNTO AS asunto,
                     BP.NPRV_ID_SUB_CATEGORIA AS idSubcategoria,
                     P.CPRV_DESCRIPCION AS subcategoria,
                     BP.CPSB_DESCRIPCION AS descripcion                    
              FROM SABEC_PROY_CASO_SABEC_BP BP
              INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = BP.NPRV_ID_SUB_CATEGORIA
              WHERE NPCS_ID = P_ID_CASO_SABEC;

              OPEN P_CURSOR_LECCIONES_APRENDIDAS FOR
              SELECT LA.NPSL_ID AS id,
                     LA.CPSL_NRO AS numero,
                     LA.CPSL_ASUNTO AS asunto,
                     LA.NPRV_ID_SUB_CATEGORIA AS idSubcategoria,
                     P.CPRV_DESCRIPCION AS subcategoria,
                     LA.CPSL_DESCRIPCION AS descripcion
              FROM SABEC_PROY_CASO_SABEC_LA LA
              INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = LA.NPRV_ID_SUB_CATEGORIA
              WHERE NPCS_ID = P_ID_CASO_SABEC;

              OPEN P_CURSOR_OBSERVACIONES FOR
              SELECT id,
                     idProyectoCaso,
                     idCasoSabec,
                     usuarioObserva,
                     codigoUsuarioObserva,
                     idRol,
                     rol,
                     codigoRol,
                     idEstado,
                     estado,
                     codigoEstado,
                     fechaObservacion,
                     idTipoInconsistencia,
                     tipoInconsistencia,
                     plazoDias,
                     detalle
              FROM (
                  SELECT NPCO_ID AS id,
                         NPDC_ID AS idProyectoCaso,
                         NULL AS idCasoSabec,
                         OBS.CPCO_NOM_USU_OBSERVA AS usuarioObserva,
                         OBS.CPCO_COD_USU_OBSERVA AS codigoUsuarioObserva,
                         RU.NPRV_ID AS idRol,
                         RU.CPRV_DESCRIPCION AS rol,
                         RU.CPRV_COD AS codigoRol,
                         EST.NPRV_ID AS idEstado,
                         EST.CPRV_DESCRIPCION AS estado,
                         EST.CPRV_COD AS codigoEstado,
                         DPCO_FECHA_OBSERVACION AS fechaObservacion,
                         TI.NTIN_ID AS idTipoInconsistencia,
                         TI.CTIN_DESCRIPCION AS tipoInconsistencia,
                         TI.NTIN_PLAZO_DIAS AS plazoDias,
                         CPCO_DETALLE AS detalle,
                         1 AS orden
                  FROM SABEC_PROY_CASO_SABEC PS
                  INNER JOIN SABEC_PROY_CASO PC ON PC.NPDC_ID = PS.NPDC_ID
                  INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID
                  LEFT JOIN SABEC_TIPO_INCONSISTENCIA TI ON TI.NTIN_ID = OBS.NTIN_ID_TIPO_INC
                  INNER JOIN SABEC_PARAMETROS_VAL  EST ON EST.NPRV_ID = OBS.NPRV_ID_ESTADO
                  INNER JOIN SABEC_PARAMETROS_VAL RU ON RU.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
                  WHERE NPCS_ID = P_ID_CASO_SABEC
                  UNION ALL
                  SELECT NPSO_ID AS id,
                         NULL AS idProyectoCaso,
                         NPCS_ID AS idCasoSabec,
                         OBS.CPSO_NOM_USU_OBSERVA AS usuarioObserva,
                         OBS.CPSO_COD_USU_OBSERVA AS codigoUsuarioObserva,
                         RU.NPRV_ID AS idRol,
                         RU.CPRV_DESCRIPCION AS rol,
                         RU.CPRV_COD AS codigoRol,
                         EST.NPRV_ID AS idEstado,
                         EST.CPRV_DESCRIPCION AS estado,
                         EST.CPRV_COD AS codigoEstado,
                         DPSO_FECHA_OBSERVACION AS fechaObservacion,
                         TI.NTIN_ID AS idTipoInconsistencia,
                         TI.CTIN_DESCRIPCION AS tipoInconsistencia,
                         TI.NTIN_PLAZO_DIAS AS plazoDias,
                         CPSO_DETALLE AS detalle,
                         2 AS orden
                  FROM SABEC_PROY_CASO_SABEC_OBSA OBS
                  LEFT JOIN SABEC_TIPO_INCONSISTENCIA TI ON TI.NTIN_ID = OBS.NINC_ID_TIPO_INC
                  INNER JOIN SABEC_PARAMETROS_VAL  EST ON EST.NPRV_ID = OBS.NPRV_ID_ESTADO
                  INNER JOIN SABEC_PARAMETROS_VAL RU ON RU.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
                  WHERE NPCS_ID = P_ID_CASO_SABEC
             )  T
             ORDER BY orden DESC, id DESC; 
       END IF;
    END PA_SABEC_SEL_CAS_SAB;

    PROCEDURE PA_SABEC_SEL_GES_SAB_ASIGN (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_GES_SAB_ASIGN
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_COD_TIP_RESP IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
      PC_ASIG_GESTOR_SABEC INTEGER;
      PC_EVAL_GESTOR_SABEC INTEGER;
      CS_PUBLICADO_GER_GDEE INTEGER;
    BEGIN
      PC_ASIG_GESTOR_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES07');
      PC_EVAL_GESTOR_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES08');
      CS_PUBLICADO_GER_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');

      OPEN P_CURSOR FOR 
      SELECT V.CPRV_DESCRIPCION AS gestor,
             V.NPRV_ID AS idGestor,
             V.CPRV_AUX2 AS codigoGestor,
             NVL(COUNT(CASE WHEN PC.NPRV_ID_ESTADO = PC_EVAL_GESTOR_SABEC THEN 1 ELSE NULL END),0) AS enEvaluacion,
             NVL(COUNT(CASE WHEN PC.NPRV_ID_ESTADO = PC_ASIG_GESTOR_SABEC THEN 1 ELSE NULL END),0) AS pendientes,
             NVL(COUNT(CASE WHEN PC.NPRV_ID_ESTADO = CS_PUBLICADO_GER_GDEE THEN 1 ELSE NULL END),0) AS publicados
      FROM SABEC_PARAMETROS P
      INNER JOIN SABEC_PARAMETROS_VAL V ON V.NPAR_ID = P.NPAR_ID
      LEFT JOIN (
           SABEC_PROY_CASO_ASIG PCA
           INNER JOIN SABEC_PROY_CASO PC ON PCA.NPDC_ID = PC.NPDC_ID AND
                 PCA.NPCA_ACTIVO = 1 AND
                 PC.NPRV_ID_ESTADO IN (PC_ASIG_GESTOR_SABEC,
                                       PC_EVAL_GESTOR_SABEC,
                                       CS_PUBLICADO_GER_GDEE)
      )ON PCA.NPRV_ID_GESTOR = V.NPRV_ID
      WHERE P.CPAR_COD = 'GEST' AND V.NPRV_ACTIVO = 1 AND
            1 = CASE WHEN P_COD_TIP_RESP IS NULL THEN 1 
                     WHEN P_COD_TIP_RESP = '' THEN 1 
                     WHEN V.CPRV_AUX1 = P_COD_TIP_RESP THEN 1
                     ELSE 0
                END
      GROUP BY V.CPRV_DESCRIPCION,
               V.NPRV_ID,
               V.CPRV_AUX2
      ORDER BY V.CPRV_DESCRIPCION;
    END PA_SABEC_SEL_GES_SAB_ASIGN;

    PROCEDURE PA_SABEC_SEL_GUIA_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_GUIA_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
      OPEN P_CURSOR FOR
      SELECT PV.NPRV_ID AS id,
             PV.CPRV_DESCRIPCION AS descripcion,
             TR.CPRV_DESCRIPCION AS tipoResponsabilidad,
             TD.CPRV_DESCRIPCION AS tipoDelito,
             PV.CPRV_AUX3 AS archivo
      FROM SABEC_PARAMETROS_VAL PV
      INNER JOIN SABEC_PARAMETROS P ON PV.NPAR_ID = P.NPAR_ID
      INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.CPRV_COD = PV.CPRV_AUX1
      LEFT JOIN SABEC_PARAMETROS_VAL TD ON TD.CPRV_COD = PV.CPRV_AUX2
      WHERE P.CPAR_COD = 'GUIA' AND PV.NPRV_ACTIVO = 1;
    END PA_SABEC_SEL_GUIA_SABEC;

    PROCEDURE PA_SABEC_SEL_NUM_CASOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_NUM_CASOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_FILTRO IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
        OPEN P_CURSOR FOR
          SELECT S.CPCS_NUM_PUB as numeroCaso
          FROM SABEC_PROY_CASO_SABEC S
          INNER JOIN SABEC_PROY_CASO C ON S.NPDC_ID = C.NPDC_ID
          WHERE S.CPCS_NUM_PUB IS NOT NULL AND
                1 = CASE WHEN P_FILTRO IS NULL THEN 1
                         WHEN UPPER(S.CPCS_NUM_PUB) LIKE '%'||UPPER(P_FILTRO)||'%' THEN 1
                         ELSE 0
                    END;
    END PA_SABEC_SEL_NUM_CASOS;

    PROCEDURE PA_SABEC_SEL_PARAM_BY_ID (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_BY_ID
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_CURSOR_PAR OUT SYS_REFCURSOR,
        P_CURSOR_PAR_VAL OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN P_CURSOR_PAR FOR
        SELECT  p.npar_id AS id,
                p.cpar_descripcion AS descripcion,
                p.cpar_cod AS codigo,
                p.cpar_aux1 AS descripcionAuxString1,
                p.cpar_aux2 AS descripcionAuxString2,
                p.cpar_aux3 AS descripcionAuxString3,
                p.cpar_aux4 AS descripcionAuxString4,
                p.npar_aux1 AS descripcionAuxNumero1,
                p.npar_aux2 AS descripcionAuxNumero2,
                p.npar_aux3 AS descripcionAuxNumero3,
                p.npar_aux4 AS descripcionAuxNumero4
        FROM SABEC_PARAMETROS P
        WHERE p.NPAR_ID = P_ID;
    OPEN P_CURSOR_PAR_VAL FOR
        SELECT  v.nprv_id AS id,
                v.cprv_descripcion AS descripcion,
                v.cprv_cod AS codigo,
                v.cprv_aux1 AS valorAuxString1,
                v.cprv_aux2 AS valorAuxString2,
                v.cprv_aux3 AS valorAuxString3,
                v.cprv_aux4 AS valorAuxString4,
                v.nprv_aux1 AS valorAuxNumero1,
                v.nprv_aux2 AS valorAuxNumero2,
                v.nprv_aux3 AS valorAuxNumero3,
                v.nprv_aux4 AS valorAuxNumero4,
                v.CPRV_USUARIO_INSERTO AS usuarioInserto,
                v.DPRV_FECHA_INSERTO AS fechaInserto,
                v.CPRV_USUARIO_MODIFICO AS usuarioModifico,
                v.DPRV_FECHA_MODIFICO AS fechaModifico
        FROM SABEC_PARAMETROS_VAL V
        WHERE V.NPAR_ID = P_ID AND NPRV_ACTIVO = 1;
    END PA_SABEC_SEL_PARAM_BY_ID;

    PROCEDURE PA_SABEC_SEL_PARAM_VAL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CODIGO_PARAMETRO IN VARCHAR2,
        P_CODIGO_VALOR IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN P_CURSOR FOR
        SELECT  v.nprv_id AS id,
                v.cprv_descripcion AS descripcion,
                v.cprv_cod AS codigo,
                v.cprv_aux1 AS valorAuxString1,
                v.cprv_aux2 AS valorAuxString2,
                v.cprv_aux3 AS valorAuxString3,
                v.cprv_aux4 AS valorAuxString4,
                v.nprv_aux1 AS valorAuxNumero1,
                v.nprv_aux2 AS valorAuxNumero2,
                v.nprv_aux3 AS valorAuxNumero3,
                v.nprv_aux4 AS valorAuxNumero4
        FROM SABEC_PARAMETROS_VAL V
        INNER JOIN SABEC_PARAMETROS P ON V.NPAR_ID = P.NPAR_ID
        WHERE V.NPRV_ACTIVO = 1 AND
              P.CPAR_COD = P_CODIGO_PARAMETRO AND
              V.CPRV_COD = P_CODIGO_VALOR;
    END PA_SABEC_SEL_PARAM_VAL;

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_BY_COD (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_BY_COD
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CODIGO_PARAMETRO IN VARCHAR2,
        P_SOLO_ACTIVOS IN NUMBER,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN P_CURSOR FOR
        SELECT  v.nprv_id AS id,
                v.cprv_descripcion AS descripcion,
                v.cprv_cod AS codigo,
                v.cprv_aux1 AS valorAuxString1,
                v.cprv_aux2 AS valorAuxString2,
                v.cprv_aux3 AS valorAuxString3,
                v.cprv_aux4 AS valorAuxString4,
                v.nprv_aux1 AS valorAuxNumero1,
                v.nprv_aux2 AS valorAuxNumero2,
                v.nprv_aux3 AS valorAuxNumero3,
                v.nprv_aux4 AS valorAuxNumero4
        FROM SABEC_PARAMETROS_VAL V
        INNER JOIN SABEC_PARAMETROS P ON V.NPAR_ID = P.NPAR_ID
        WHERE  1 = CASE WHEN P_SOLO_ACTIVOS = 1 AND V.NPRV_ACTIVO = 1 THEN 1
                        WHEN P_SOLO_ACTIVOS = 0 THEN  1
                        ELSE 0
                  END AND
               P.CPAR_COD = P_CODIGO_PARAMETRO
        ORDER BY v.cprv_descripcion;
    END PA_SABEC_SEL_PARAM_VAL_BY_COD;

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_BY_ID (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_BY_ID
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN P_CURSOR FOR
        SELECT  v.nprv_id AS id,
                v.cprv_descripcion AS descripcion,
                v.cprv_cod AS codigo,
                v.cprv_aux1 AS valorAuxString1,
                v.cprv_aux2 AS valorAuxString2,
                v.cprv_aux3 AS valorAuxString3,
                v.cprv_aux4 AS valorAuxString4,
                v.nprv_aux1 AS valorAuxNumero1,
                v.nprv_aux2 AS valorAuxNumero2,
                v.nprv_aux3 AS valorAuxNumero3,
                v.nprv_aux4 AS valorAuxNumero4,
                v.NPRV_ACTIVO AS activo
        FROM SABEC_PARAMETROS_VAL V
        WHERE V.NPRV_ID = P_ID;
    END PA_SABEC_SEL_PARAM_VAL_BY_ID;

    PROCEDURE PA_SABEC_SEL_PARAM_VAL_FILT (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PARAM_VAL_FILT
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CODIGO_PARAMETRO IN VARCHAR2,
        P_DESCRIPCION IN VARCHAR2,
        P_VAL_STRING_1 IN VARCHAR2,
        P_VAL_STRING_2 IN VARCHAR2,
        P_VAL_STRING_3 IN VARCHAR2,
        P_VAL_STRING_4 IN VARCHAR2,
        P_VAL_INT_1 IN NUMBER,
        P_VAL_INT_2 IN NUMBER,
        P_VAL_INT_3 IN NUMBER,
        P_VAL_INT_4 IN NUMBER,
        P_CODIGO IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN P_CURSOR FOR
        SELECT  v.nprv_id AS id,
                v.cprv_descripcion AS descripcion,
                v.cprv_cod AS codigo,
                v.cprv_aux1 AS valorAuxString1,
                v.cprv_aux2 AS valorAuxString2,
                v.cprv_aux3 AS valorAuxString3,
                v.cprv_aux4 AS valorAuxString4,
                v.nprv_aux1 AS valorAuxNumero1,
                v.nprv_aux2 AS valorAuxNumero2,
                v.nprv_aux3 AS valorAuxNumero3,
                v.nprv_aux4 AS valorAuxNumero4
        FROM SABEC_PARAMETROS_VAL V
        INNER JOIN SABEC_PARAMETROS P ON V.NPAR_ID = P.NPAR_ID
        WHERE P.CPAR_COD = P_CODIGO_PARAMETRO AND
              1 = CASE  WHEN P_DESCRIPCION IS NULL THEN 1
                        WHEN UPPER(TRIM(v.cprv_descripcion)) = UPPER(TRIM(P_DESCRIPCION)) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_STRING_1 IS NULL THEN 1
                        WHEN UPPER(TRIM(v.cprv_aux1)) = UPPER(TRIM(P_VAL_STRING_1)) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_STRING_2 IS NULL THEN 1
                        WHEN UPPER(TRIM(v.cprv_aux2)) = UPPER(TRIM(P_VAL_STRING_2)) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_STRING_3 IS NULL THEN 1
                        WHEN UPPER(TRIM(v.cprv_aux3)) = UPPER(TRIM(P_VAL_STRING_3)) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_STRING_4 IS NULL THEN 1
                        WHEN UPPER(TRIM(v.cprv_aux4)) = UPPER(TRIM(P_VAL_STRING_4)) THEN 1
                        ELSE 0
                  END  AND
              1 = CASE  WHEN P_VAL_INT_1 IS NULL THEN 1
                        WHEN UPPER(v.nprv_aux1) = UPPER(P_VAL_INT_1) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_INT_2 IS NULL THEN 1
                        WHEN UPPER(v.nprv_aux2) = UPPER(P_VAL_INT_2) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_INT_3 IS NULL THEN 1
                        WHEN UPPER(v.nprv_aux3) = UPPER(P_VAL_INT_3) THEN 1
                        ELSE 0
                  END AND
              1 = CASE  WHEN P_VAL_INT_4 IS NULL THEN 1
                        WHEN UPPER(v.nprv_aux4) = UPPER(P_VAL_INT_4) THEN 1
                        ELSE 0
                  END
        ORDER BY v.cprv_descripcion;
    END PA_SABEC_SEL_PARAM_VAL_FILT;

    PROCEDURE PA_SABEC_SEL_PC_ADJ_BY_ID (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PC_ADJ_BY_ID
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
        OPEN P_CURSOR FOR
        SELECT  NPCA_ID AS id,
                CPCA_NOMBRE AS nombre,
                NPCA_PESO AS peso,
                CPCA_RUTA_ARCHIVO AS ruta
        FROM SABEC_PROY_CASO_ADJ
        WHERE NPCA_ID = P_ID;
    END PA_SABEC_SEL_PC_ADJ_BY_ID;

    PROCEDURE PA_SABEC_SEL_PLAZO_DIAS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PLAZO_DIAS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_COD_ROL IN VARCHAR2,
        P_COD_TIP IN VARCHAR2,
        P_COD_ESTADO IN VARCHAR2,
        P_ID_PROY_CASO IN INTEGER,
        P_ID_PROY_CASO_SABEC IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    V_NTIN_ID INTEGER;
    BEGIN
      IF P_COD_TIP = 'TP01' THEN
              IF P_ID_PROY_CASO > 0 THEN
                SELECT NTIN_ID_TIPO_INC INTO V_NTIN_ID
                FROM SABEC_PROY_CASO_OBS OBS
                WHERE NPDC_ID = P_ID_PROY_CASO AND
                      CPCO_SITUACION = 'A';
              END IF;
              IF P_ID_PROY_CASO_SABEC > 0 THEN
                SELECT NINC_ID_TIPO_INC INTO V_NTIN_ID
                FROM SABEC_PROY_CASO_SABEC_OBSA OBS
                WHERE NPCS_ID = P_ID_PROY_CASO_SABEC AND
                      CPSO_SITUACION = 'A';
              END IF;
              V_NTIN_ID := NVL(V_NTIN_ID,0);
      END IF;
            OPEN P_CURSOR FOR
            SELECT TI.NTIN_ID AS id,
                   R.NPRV_ID AS idRol,
                   R.CPRV_DESCRIPCION AS rol,
                   R.CPRV_COD AS codigoRol,
                   T.NPRV_ID AS idTipo,
                   T.CPRV_DESCRIPCION AS tipo,
                   T.CPRV_COD AS codigoTipo,
                   TI.CTIN_DESCRIPCION AS descripcion,
                   TI.NTIN_PLAZO_DIAS AS plazoDias,
                   TI.CTIN_USUARIO_MODIFICO AS usuarioModifico,
                   TI.DTIN_FECHA_MODIFICO AS fechaModifico,
                   0 AS idEstado,
                   ' ' AS estado,
                   ' ' AS codigoEstado,
                   TI.NTIN_PLAZO_DIAS AS plazoDiasMsg
            FROM SABEC_TIPO_INCONSISTENCIA TI
            INNER JOIN SABEC_PARAMETROS_VAL  R ON R.NPRV_ID = TI.NPRV_ID_ROL
            INNER JOIN SABEC_PARAMETROS_VAL  T ON T.NPRV_ID = TI.NPRV_ID_TIPO
            INNER JOIN SABEC_TIPO_INCONSISTENCIA_EST TIE ON TI.NTIN_ID = TIE.NTIN_ID
            INNER JOIN SABEC_PARAMETROS_VAL  E ON E.NPRV_ID = TIE.NPRV_ID_ESTADO
            WHERE R.CPRV_COD = P_COD_ROL AND 
                  T.CPRV_COD = P_COD_TIP AND 
                  1 = (CASE WHEN P_COD_TIP = 'TP01' THEN (CASE WHEN TI.NTIN_ID = V_NTIN_ID THEN 1 ELSE 0 END) 
                        ELSE 1
                      END) AND
                  E.CPRV_COD = P_COD_ESTADO;
    END PA_SABEC_SEL_PLAZO_DIAS;

    PROCEDURE PA_SABEC_SEL_PROY_CASO_BY_ID (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_PROY_CASO_BY_ID
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_CURSOR_PROYECTO OUT SYS_REFCURSOR,
        P_CURSOR_ADJUNTOS OUT SYS_REFCURSOR,
        P_CURSOR_TIPOS_DELITO OUT SYS_REFCURSOR,
        P_CURSOR_OBSERVACIONES OUT SYS_REFCURSOR,
        P_CURSOR_INFRACCION OUT SYS_REFCURSOR
    )IS
    BEGIN
        OPEN P_CURSOR_PROYECTO FOR
        SELECT  NPDC_ID AS id,
                CPDC_NUM_REG AS numeroRegistro,
                DPDC_FECHA_REGISTRO AS fechaRegistro,

                CPDC_OPERADOR_UO AS operadorUO,
                CPDC_COD_OPERADOR_UO AS codigoOperadorUO,
                RO.NPRV_ID AS idRolOperadorUO,
                RO.CPRV_DESCRIPCION AS rolOperadorUO,
                RO.CPRV_COD AS codigoRolOperadorUO,

                CPDC_NOM_USU_DESTINO AS nombreUsuarioDestino,
                CPDC_COD_USU_DESTINO AS codigoUsuarioDestino,
                RD.NPRV_ID AS idRolDestino,
                RD.CPRV_DESCRIPCION AS rolDestino,
                RD.CPRV_COD AS codigoRolDestino,

                CPDC_NOM_USU_REMITE AS nombreUsuarioRemite,
                CPDC_COD_USU_REMITE AS nombreUsuarioRemite,
                RR.NPRV_ID AS idRolRemite,
                RR.CPRV_DESCRIPCION AS rolRemite,
                RR.CPRV_COD AS codigoRolRemite,

                CPDC_NUM_ENVIO AS numeroEnvio,
                DPDC_FECHA_ENVIO AS fechaEnvio,
                NULL AS fechaSubsanacion,

                NPRV_ID_TIP_RESP as idResponsabilidad,
                TR.CPRV_DESCRIPCION AS responsabilidad,
                TR.CPRV_COD AS codigoResponsabilidad,

                CPDC_NOM_ENTIDAD AS entidad,
                CPDC_COD_ENTIDAD AS codigoEntidad,
                CPDC_DEP_ENTIDAD AS departamentoEntidad,

                NPRV_ID_ESTADO AS idEstado,
                ES.CPRV_DESCRIPCION AS estado,
                ES.CPRV_COD AS codigoEstado,

                CPDC_RESOL_SENT AS resolucionSentencia,
                CPDC_NRO_INFOR_AUD AS numeroInformeAuditoria,
                CPDC_DECI_RESOL AS decisionResolucion,
                CPDC_CONSIDERACIONES AS consideracionesAdicionales,

                DPDC_INICIO_ATENCION AS inicioAtencion,

                CPDC_NOM_GESTOR AS gestor,
                CPDC_COD_GESTOR AS codGestor,
                RG.NPRV_ID AS idRolGestor,
                RG.CPRV_DESCRIPCION AS rolGestor,
                RG.CPRV_COD AS codigoRolGestor,

                DPDC_FECHA_ASIG AS fechaAsignacion,
                CPDC_UNIDAD_ORGANICA AS unidadOrganica,
                CPDC_COD_UNIDAD_ORGANICA codigoUnidadOrganica
        FROM SABEC_PROY_CASO P
        INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = P.NPRV_ID_TIP_RESP
        INNER JOIN SABEC_PARAMETROS_VAL ES ON ES.NPRV_ID = P.NPRV_ID_ESTADO
        INNER JOIN SABEC_PARAMETROS_VAL RO ON RO.NPRV_ID = P.NPRV_ID_ROL_OPERADOR_UO
        LEFT JOIN  SABEC_PARAMETROS_VAL RD ON RD.NPRV_ID = P.NPRV_ID_ROL_DESTINO
        LEFT JOIN  SABEC_PARAMETROS_VAL RR ON RR.NPRV_ID = P.NPRV_ID_ROL_REMITE
        LEFT JOIN  SABEC_PARAMETROS_VAL RG ON RG.NPRV_ID = P.NPRV_ID_ROL_GESTOR
        WHERE P.NPDC_ID = P_ID AND  P.NPDC_ACTIVO = 1;

        OPEN P_CURSOR_ADJUNTOS FOR
        SELECT  NPCA_ID AS id,
                CPCA_NOMBRE AS nombre,
                NPCA_PESO AS peso
        FROM SABEC_PROY_CASO_ADJ
        WHERE NPDC_ID = P_ID;

        OPEN P_CURSOR_TIPOS_DELITO FOR
        SELECT  NPRV_ID_TIP_DEL AS id,
                P.CPRV_DESCRIPCION AS tipoDelito,
                P.CPRV_COD AS codigo
        FROM SABEC_PROY_CASO_TIP_DEL TD
        INNER JOIN SABEC_PARAMETROS_VAL P ON P.NPRV_ID = TD.NPRV_ID_TIP_DEL
        WHERE TD.NPDC_ID = P_ID;

        OPEN P_CURSOR_INFRACCION FOR
        SELECT  NPCI_ID AS id,
                NPCI_ID_INFRACCION AS idInfraccion,
                NPCI_CANT_ADMIN AS cantidadAdministrados,
                CPCI_INFRACCION AS infraccion,
                CPCI_CALIFICACION AS calificacion,
                CPCI_SANCION AS sancion
        FROM SABEC_PROY_CASO_INF INF
        WHERE INF.NPDC_ID = P_ID;

        OPEN P_CURSOR_OBSERVACIONES FOR
        SELECT NPCO_ID AS id,
               OBS.CPCO_NOM_USU_OBSERVA AS usuarioObserva,
               OBS.CPCO_COD_USU_OBSERVA AS codigoUsuarioObserva,
               RU.NPRV_ID AS idRol,
               RU.CPRV_DESCRIPCION AS rol,
               RU.CPRV_COD AS codigoRol,
               EST.NPRV_ID AS idEstado,
               EST.CPRV_DESCRIPCION AS estado,
               EST.CPRV_COD AS codigoEstado,
               DPCO_FECHA_OBSERVACION AS fechaObservacion,
               TI.NTIN_ID AS idTipoInconsistencia,
               TI.CTIN_DESCRIPCION AS tipoInconsistencia,
               TI.NTIN_PLAZO_DIAS AS plazoDias,
               CPCO_DETALLE AS detalle
        FROM SABEC_PROY_CASO_OBS OBS
        LEFT JOIN SABEC_TIPO_INCONSISTENCIA TI ON TI.NTIN_ID = OBS.NTIN_ID_TIPO_INC
        INNER JOIN SABEC_PARAMETROS_VAL  EST ON EST.NPRV_ID = OBS.NPRV_ID_ESTADO
        INNER JOIN SABEC_PARAMETROS_VAL RU ON RU.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
        WHERE OBS.NPDC_ID = P_ID
        ORDER BY NPCO_ID DESC;
    END PA_SABEC_SEL_PROY_CASO_BY_ID;

    PROCEDURE PA_SABEC_SEL_REP_USU_ROL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP_USU_ROL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ROL   IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    BEGIN
        OPEN P_CURSOR FOR
        SELECT usuario, usuarioNombre FROM 
        ( SELECT  DISTINCT 
                    (CASE P_ROL 
                        WHEN 'OPERADOR' THEN PC.CPDC_COD_OPERADOR_UO
                        WHEN 'GESTOR' THEN PC.CPDC_COD_GESTOR 
                        WHEN 'COORDINADOR' THEN PC.CPDC_COD_COORD
                        WHEN 'GERENTE' THEN PC.CPDC_COD_GERENTE
                        ELSE ' '
                    END) AS usuario,
                    (CASE P_ROL 
                        WHEN 'OPERADOR' THEN PC.CPDC_OPERADOR_UO
                        WHEN 'GESTOR' THEN PC.CPDC_NOM_GESTOR 
                        WHEN 'COORDINADOR' THEN PC.CPDC_NOM_COORD
                        WHEN 'GERENTE' THEN PC.CPDC_NOM_GERENTE
                        ELSE ' '
                    END) AS usuarioNombre
            FROM SABEC_PROY_CASO PC
            WHERE PC.NPDC_ACTIVO = 1
        ) TABLA
        WHERE usuario IS NOT NULL
        ORDER BY usuarioNombre;
    END PA_SABEC_SEL_REP_USU_ROL;

    PROCEDURE PA_SABEC_SEL_REP3_ANIOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_ANIOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_CON_UO INTEGER;
    BEGIN
        V_ID_EST_CON_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES23');
        OPEN P_CURSOR FOR 
        WITH Observaciones AS (
            SELECT  PC.NPDC_ID,
                    OBS.DPCO_FECHA_OBSERVACION AS fechaObservacion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_TIPO_INCONSISTENCIA TIN ON TIN.NTIN_ID = OBS.NTIN_ID_TIPO_INC
            INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
            WHERE PC.NPDC_ACTIVO = 1 
        ), Conclusion AS (
             SELECT PC.NPDC_ID,
                    EST.DPCE_FECHA AS fechaConclusion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = PC.NPRV_ID_ESTADO
            INNER JOIN SABEC_PARAMETROS_VAL RCON ON RCON.NPRV_ID = EST.NPRV_ID_ROL
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_CON_UO AND 
                  PC.NPDC_ACTIVO = 1 
        )
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(fechaObservacion, 'YYYY')) anio
            FROM (
                SELECT  O.fechaObservacion
                FROM Observaciones O
                UNION
                SELECT C.fechaConclusion
                FROM Conclusion C
                WHERE NOT EXISTS(SELECT 1 FROM Observaciones O WHERE O.NPDC_ID = C.NPDC_ID)
            ) TABLA
            ORDER BY anio DESC;
    END PA_SABEC_SEL_REP3_ANIOS;

    PROCEDURE PA_SABEC_SEL_REP3_MESES (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_MESES
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_CON_UO INTEGER;
    BEGIN
        V_ID_EST_CON_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES23');
        OPEN P_CURSOR FOR 
        WITH Observaciones AS (
            SELECT  PC.NPDC_ID,
                    OBS.DPCO_FECHA_OBSERVACION AS fechaObservacion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_TIPO_INCONSISTENCIA TIN ON TIN.NTIN_ID = OBS.NTIN_ID_TIPO_INC
            INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
            WHERE PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM OBS.DPCO_FECHA_OBSERVACION) = P_ANIO THEN 1
                            ELSE 0
                      END
        ), Conclusion AS (
             SELECT PC.NPDC_ID,
                    EST.DPCE_FECHA AS fechaConclusion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = PC.NPRV_ID_ESTADO
            INNER JOIN SABEC_PARAMETROS_VAL RCON ON RCON.NPRV_ID = EST.NPRV_ID_ROL
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_CON_UO AND 
                  PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM EST.DPCE_FECHA) = P_ANIO THEN 1
                            ELSE 0
                      END
        )
            SELECT mes,
            (CASE mes 
                WHEN 1 THEN 'ENERO'
                WHEN 2 THEN 'FEBRERO'
                WHEN 3 THEN 'MARZO'
                WHEN 4 THEN 'ABRIL'
                WHEN 5 THEN 'MAYO'
                WHEN 6 THEN 'JUNIO'
                WHEN 7 THEN 'JULIO'
                WHEN 8 THEN 'AGOSTO'
                WHEN 9 THEN 'SEPTIEMBRE'
                WHEN 10 THEN 'OCTUBRE'
                WHEN 11 THEN 'NOVIEMBRE'
                WHEN 12 THEN 'DICIEMBRE'
            END)  mesNombre FROM (
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(fechaObservacion, 'MM')) mes
            FROM (
                SELECT  O.fechaObservacion
                FROM Observaciones O
                UNION
                SELECT  fechaConclusion
                FROM Conclusion C
                WHERE NOT EXISTS(SELECT 1 FROM Observaciones O WHERE O.NPDC_ID = C.NPDC_ID)
            ) TABLA) TABLA
            ORDER BY mes DESC;
    END PA_SABEC_SEL_REP3_MESES;

    PROCEDURE PA_SABEC_SEL_REP3_OBS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_OBS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_CON_UO INTEGER;
    BEGIN
        OPEN P_CURSOR FOR 
            SELECT tipo, descripcion FROM 
            (  SELECT  DISTINCT 
                        OBS.NTIN_ID_TIPO_INC AS tipo,
                        TIN.CTIN_DESCRIPCION AS descripcion
                FROM SABEC_PROY_CASO PC
                INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID
                INNER JOIN SABEC_TIPO_INCONSISTENCIA TIN ON TIN.NTIN_ID = OBS.NTIN_ID_TIPO_INC
                INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
                WHERE PC.NPDC_ACTIVO = 1  AND
                      TIN.CTIN_DESCRIPCION IS NOT NULL AND
                      1 = CASE  WHEN P_ANIO IS NULL THEN 1
                                WHEN EXTRACT(YEAR FROM OBS.DPCO_FECHA_OBSERVACION) = P_ANIO THEN 1
                                ELSE 0
                          END AND
                      1 = CASE  WHEN P_MES IS NULL THEN 1
                                WHEN EXTRACT(MONTH FROM OBS.DPCO_FECHA_OBSERVACION) = P_MES THEN 1
                                ELSE 0
                          END
            ) TABLA
            ORDER BY descripcion;
    END PA_SABEC_SEL_REP3_OBS;

    PROCEDURE PA_SABEC_SEL_REP3_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP3_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_CON_UO INTEGER;
    BEGIN
        OPEN P_CURSOR FOR 
        WITH Observaciones AS (
            SELECT  PC.NPDC_ID,
                    PC.CPDC_COD_UNIDAD_ORGANICA AS codigo,
                    PC.CPDC_UNIDAD_ORGANICA AS descripcion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_OBS OBS ON OBS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_TIPO_INCONSISTENCIA TIN ON TIN.NTIN_ID = OBS.NTIN_ID_TIPO_INC
            INNER JOIN SABEC_PARAMETROS_VAL RUOB ON RUOB.NPRV_ID = OBS.NPRV_ID_ROL_OBSERVA
            WHERE PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM OBS.DPCO_FECHA_OBSERVACION) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM OBS.DPCO_FECHA_OBSERVACION) = P_MES THEN 1
                            ELSE 0
                      END
        ), Conclusion AS (
             SELECT PC.NPDC_ID,
                    PC.CPDC_COD_UNIDAD_ORGANICA AS codigo,
                    PC.CPDC_UNIDAD_ORGANICA AS descripcion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_EST EST ON EST.NPDC_ID = PC.NPDC_ID AND EST.NPRV_ID_ESTADO_POST = PC.NPRV_ID_ESTADO
            INNER JOIN SABEC_PARAMETROS_VAL RCON ON RCON.NPRV_ID = EST.NPRV_ID_ROL
            WHERE PC.NPRV_ID_ESTADO = V_ID_EST_CON_UO AND 
                  PC.NPDC_ACTIVO = 1 AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM EST.DPCE_FECHA) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM EST.DPCE_FECHA) = P_MES THEN 1
                            ELSE 0
                      END
        )
            SELECT DISTINCT codigo, descripcion FROM (
                SELECT  O.codigo,
                        O.descripcion
                FROM Observaciones O
                UNION
                SELECT  C.codigo,
                        C.descripcion
                FROM Conclusion C
                WHERE NOT EXISTS(SELECT 1 FROM Observaciones O WHERE O.NPDC_ID = C.NPDC_ID)
            ) TABLA
            WHERE descripcion IS NOT NULL
            ORDER BY descripcion;
    END PA_SABEC_SEL_REP3_UO;

    PROCEDURE PA_SABEC_SEL_REP5_ANIOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_ANIOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;
    V_ID_EST_PCS_APR_COOR_GDEE INTEGER;
    V_ID_EST_VAL_GDEE INTEGER;
    V_ID_EST_PUBLICADO INTEGER;    
    BEGIN
        V_ID_EST_PCS_ENV_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');
        V_ID_EST_PCS_APR_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES17');
        V_ID_EST_VAL_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');
        V_ID_EST_PUBLICADO := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.DPDC_FECHA_ENVIO AS fechaRegistro
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE 

            WHERE PC.NPDC_ACTIVO = 1 
        )    
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(O.fechaRegistro, 'YYYY')) anio
            FROM Casos O;
    END PA_SABEC_SEL_REP5_ANIOS;

    PROCEDURE PA_SABEC_SEL_REP5_MESES (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_MESES
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;

    BEGIN
        V_ID_EST_PCS_ENV_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.DPDC_FECHA_ENVIO AS fechaRegistro
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE 

            WHERE PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_ENVIO) = P_ANIO THEN 1
                            ELSE 0
                      END
        )    
        SELECT mes,
            (CASE mes 
                WHEN 1 THEN 'ENERO'
                WHEN 2 THEN 'FEBRERO'
                WHEN 3 THEN 'MARZO'
                WHEN 4 THEN 'ABRIL'
                WHEN 5 THEN 'MAYO'
                WHEN 6 THEN 'JUNIO'
                WHEN 7 THEN 'JULIO'
                WHEN 8 THEN 'AGOSTO'
                WHEN 9 THEN 'SEPTIEMBRE'
                WHEN 10 THEN 'OCTUBRE'
                WHEN 11 THEN 'NOVIEMBRE'
                WHEN 12 THEN 'DICIEMBRE'
            END)  mesNombre 
        FROM (
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(O.fechaRegistro, 'MM')) mes
            FROM Casos O
            ) TABLA
        ORDER BY mes DESC;
    END PA_SABEC_SEL_REP5_MESES;

    PROCEDURE PA_SABEC_SEL_REP5_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP5_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_PCS_ENV_COOR_GDEE INTEGER;

    BEGIN
        V_ID_EST_PCS_ENV_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES12');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.CPDC_COD_UNIDAD_ORGANICA AS codigo,
                    PC.CPDC_UNIDAD_ORGANICA AS descripcion
            FROM SABEC_PROY_CASO PC
            INNER JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_PCS_ENV_COOR_GDEE 

            WHERE PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_REGISTRO) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM PC.DPDC_FECHA_REGISTRO) = P_MES THEN 1
                            ELSE 0
                      END
        )    
            SELECT DISTINCT codigo, descripcion
            FROM Casos O
            WHERE descripcion IS NOT NULL
            ORDER BY descripcion;
    END PA_SABEC_SEL_REP5_UO;

    PROCEDURE PA_SABEC_SEL_REP6_ANIOS (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_ANIOS
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_CURSOR OUT SYS_REFCURSOR
    ) IS

    V_ID_EST_ENV_UO INTEGER;

    BEGIN
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.DPDC_FECHA_ENVIO AS fechaRegistro
            FROM SABEC_PROY_CASO PC
            LEFT JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            WHERE PC.NPDC_ACTIVO = 1 
        )    
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(O.fechaRegistro, 'YYYY')) anio
            FROM Casos O;
    END PA_SABEC_SEL_REP6_ANIOS;

    PROCEDURE PA_SABEC_SEL_REP6_MESES (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_MESES
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ENV_UO INTEGER;

    BEGIN
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.DPDC_FECHA_ENVIO AS fechaRegistro
            FROM SABEC_PROY_CASO PC
            LEFT JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO
            WHERE PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_ENVIO) = P_ANIO THEN 1
                            ELSE 0
                      END
        )    
        SELECT mes,
            (CASE mes 
                WHEN 1 THEN 'ENERO'
                WHEN 2 THEN 'FEBRERO'
                WHEN 3 THEN 'MARZO'
                WHEN 4 THEN 'ABRIL'
                WHEN 5 THEN 'MAYO'
                WHEN 6 THEN 'JUNIO'
                WHEN 7 THEN 'JULIO'
                WHEN 8 THEN 'AGOSTO'
                WHEN 9 THEN 'SEPTIEMBRE'
                WHEN 10 THEN 'OCTUBRE'
                WHEN 11 THEN 'NOVIEMBRE'
                WHEN 12 THEN 'DICIEMBRE'
            END)  mesNombre 
        FROM (
            SELECT  DISTINCT TO_NUMBER(TO_CHAR(O.fechaRegistro, 'MM')) mes
            FROM Casos O
            ) TABLA
        ORDER BY mes DESC;
    END PA_SABEC_SEL_REP6_MESES;

    PROCEDURE PA_SABEC_SEL_REP6_UO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_REP6_UO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ANIO IN INTEGER,
        P_MES IN INTEGER,
        P_CURSOR OUT SYS_REFCURSOR
    ) IS
    V_ID_EST_ENV_UO INTEGER;    
    BEGIN
        V_ID_EST_ENV_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES02');

        OPEN P_CURSOR FOR 
           WITH Casos AS (
            SELECT  PC.CPDC_COD_UNIDAD_ORGANICA AS codigo,
                    PC.CPDC_UNIDAD_ORGANICA AS descripcion
            FROM SABEC_PROY_CASO PC
            LEFT JOIN SABEC_PROY_CASO_SABEC PCS ON PCS.NPDC_ID = PC.NPDC_ID
            INNER JOIN SABEC_PARAMETROS_VAL TR ON TR.NPRV_ID = PC.NPRV_ID_TIP_RESP
            INNER JOIN SABEC_PARAMETROS_VAL TTEM ON TTEM.NPRV_ID = PCS.NPRV_ID_TEMATICA
            INNER JOIN SABEC_PROY_CASO_EST EST_ENV ON EST_ENV.NPDC_ID = PC.NPDC_ID AND EST_ENV.NPRV_ID_ESTADO_POST = V_ID_EST_ENV_UO

            WHERE PC.NPDC_ACTIVO = 1  AND
                  1 = CASE  WHEN P_ANIO IS NULL THEN 1
                            WHEN EXTRACT(YEAR FROM PC.DPDC_FECHA_REGISTRO) = P_ANIO THEN 1
                            ELSE 0
                      END AND
                  1 = CASE  WHEN P_MES IS NULL THEN 1
                            WHEN EXTRACT(MONTH FROM PC.DPDC_FECHA_REGISTRO) = P_MES THEN 1
                            ELSE 0
                      END
        )    
            SELECT DISTINCT codigo, descripcion
            FROM Casos O
            WHERE descripcion IS NOT NULL
            ORDER BY descripcion;
    END PA_SABEC_SEL_REP6_UO;

    PROCEDURE PA_SABEC_SEL_TIP_INC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_SEL_TIP_INC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_COD_ROL IN VARCHAR2,
        P_COD_TIP IN VARCHAR2,
        P_CURSOR OUT SYS_REFCURSOR
    )IS
    BEGIN
      OPEN P_CURSOR FOR
        SELECT TI.NTIN_ID AS id,
               R.NPRV_ID AS idRol,
               R.CPRV_DESCRIPCION AS rol,
               R.CPRV_COD AS codigoRol,
               T.NPRV_ID AS idTipo,
               T.CPRV_DESCRIPCION AS tipo,
               T.CPRV_COD AS codigoTipo,
               TI.CTIN_DESCRIPCION AS descripcion,
               TI.NTIN_PLAZO_DIAS AS plazoDias,
               TI.CTIN_USUARIO_MODIFICO AS usuarioModifico,
               TI.DTIN_FECHA_MODIFICO AS fechaModifico
        FROM SABEC_TIPO_INCONSISTENCIA TI
        INNER JOIN SABEC_PARAMETROS_VAL  R ON R.NPRV_ID = TI.NPRV_ID_ROL
        INNER JOIN SABEC_PARAMETROS_VAL  T ON T.NPRV_ID = TI.NPRV_ID_TIPO
        WHERE R.CPRV_COD = P_COD_ROL AND T.CPRV_COD = P_COD_TIP;
    END PA_SABEC_SEL_TIP_INC;

    PROCEDURE PA_SABEC_UPD_CASO_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_CASO_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID IN INTEGER,
    /*2*/   P_ID_PROYECTO_CASO IN INTEGER,
    /*3*/   P_ID_ESTADO IN INTEGER,
    /*4*/   P_FECHA_INICIO_EVALUACION  IN DATE,
    /*5*/   P_FECHA_ENVIO DATE,
    /*6*/   P_NOM_USU_DEST IN VARCHAR2,
    /*7*/   P_COD_USU_DEST IN VARCHAR2,
    /*8*/   P_ID_ROL_DEST IN INTEGER,
    /*9*/   P_NOM_USU_REM IN VARCHAR2,
    /*10*/  P_COD_USU_REM IN VARCHAR2,
    /*11*/  P_ID_ROL_REM IN INTEGER,
    /*12*/  P_ID_TEMATICA IN INTEGER,
    /*13*/  P_ASUNTO IN VARCHAR2,
    /*14*/  P_FECHA_INI_AUDIT IN DATE,
    /*15*/  P_FECHA_FIN_AUDIT IN DATE,
    /*16*/  P_UO_EMISOR IN VARCHAR2,
    /*17*/  P_JEFE_OCI IN VARCHAR2,
    /*18*/  P_JEFE_COMISION IN VARCHAR2,
    /*19*/  P_SUPERVISOR IN VARCHAR2,
    /*20*/  P_ESPECIALISTA IN VARCHAR2,
    /*21*/  P_SINTESIS_AUDITORIA IN VARCHAR2,
    /*22*/  P_ID_ETAPA_CONCLUYE IN VARCHAR2,
    /*23*/  P_FUNDAMENTOS_JURIDICOS IN VARCHAR2,
    /*24*/  P_OTROS_FUNDAMENTOS_JUR IN VARCHAR2,
    /*25*/  P_IS_BUEN_PRACT IN NUMBER,
    /*26*/  P_JUSTI_BUEN_PRACT IN VARCHAR2,
    /*27*/  P_IS_LECC_APREN IN NUMBER,
    /*28*/  P_JUSTI_LECC_APREN IN VARCHAR2,
    /*29*/  P_AUDITORES_ENCARGADOS IN TYP_TBL_AUDIT_ENC,
    /*30*/  P_RESULTADO_FINAL IN TYP_TBL_RESULT_FINAL,
    /*31*/  P_BUENAS_PRACTICAS IN TYP_TBL_BUENAS_PRAC,
    /*32*/  P_LECCIONES_APRENDIDAS IN TYP_TBL_LECCIONES_APREN,
    /*33*/  P_USUARIO IN VARCHAR2,
    /*34*/  P_ID_GUIA_SABEC IN NUMBER,
    /*35*/  P_LOAD_FEC_INICIO IN NUMBER,
    /*36*/  P_LOAD_FEC_TERMINO IN NUMBER,
    /*37*/  P_LOAD_UOEMISORA_INFORME IN NUMBER,
    /*38*/  P_LOAD_JEFE_OCI IN NUMBER,
    /*39*/  P_LOAD_JEFE_COMISION IN NUMBER,
    /*40*/  P_LOAD_SUPERVISOR IN NUMBER,
    /*41*/  P_LOAD_ESPECIALISTA IN NUMBER,
    /*42*/  P_LOAD_SINTESIS_AUDITORIA IN NUMBER
    )IS
    N_ID_ESTADO_ANT INTEGER;
    BEGIN
        SELECT NPRV_ID_ESTADO
          INTO N_ID_ESTADO_ANT
        FROM SABEC_PROY_CASO
        WHERE NPDC_ID = P_ID_PROYECTO_CASO;

        UPDATE SABEC_PROY_CASO_SABEC
        SET    DPCS_INICIO_EVALUACION = P_FECHA_INICIO_EVALUACION,
               NPRV_ID_TEMATICA = P_ID_TEMATICA,
               CPCS_ASUNTO = P_ASUNTO,
               DPCS_INICIO_AUDIT = P_FECHA_INI_AUDIT,
               DPCS_FIN_AUDIT = P_FECHA_FIN_AUDIT,
               CPCS_UO_EMISOR = P_UO_EMISOR,
               CPCS_JEFE_OCI = P_JEFE_OCI,
               CPCS_JEFE_COMISION = P_JEFE_COMISION,
               CPCS_SUPERVISOR = P_SUPERVISOR,
               CPCS_ESPECIALISTA = P_ESPECIALISTA,
               CPCS_SINTESIS_AUDIT = P_SINTESIS_AUDITORIA,
               NPCS_ETAPA_CONCLUYE = P_ID_ETAPA_CONCLUYE,
               CPCS_FUND_JURIDICOS = P_FUNDAMENTOS_JURIDICOS,
               CPCS_FUND_OTROS = P_OTROS_FUNDAMENTOS_JUR,
               NPCS_BP = P_IS_BUEN_PRACT,
               CPCS_JUST_BP = P_JUSTI_BUEN_PRACT,
               NPCS_LA = P_IS_LECC_APREN,
               CPCS_JUST_LA = P_JUSTI_LECC_APREN,
               CPCS_USUARIO_MODIFICO = P_USUARIO,
               DPCS_FECHA_MODIFICO = SYSDATE,
               DPCS_FECHA_ENVIO = P_FECHA_ENVIO,
               NPRV_ID_GUIA = P_ID_GUIA_SABEC,
               NPCS_LOAD_FEC_INI = P_LOAD_FEC_INICIO,
               NPCS_LOAD_FEC_TER = P_LOAD_FEC_TERMINO,
               NPCS_LOAD_UO_EMISOR = P_LOAD_UOEMISORA_INFORME,
               NPCS_LOAD_JEFE_OCI = P_LOAD_JEFE_OCI,
               NPCS_LOAD_JEFE_COMISION = P_LOAD_JEFE_COMISION,
               NPCS_LOAD_SUPERVISOR = P_LOAD_SUPERVISOR,
               NPCS_LOAD_ESPECIALISTA = P_LOAD_ESPECIALISTA,
               NPCS_LOAD_SINTESIS_AUDIT = P_LOAD_SINTESIS_AUDITORIA
        WHERE NPCS_ID = P_ID;

        DELETE SABEC_PROY_CASO_SABEC_AUD
        WHERE NPCS_ID = P_ID AND
              NPSA_ID NOT IN (SELECT AU.NAUD_ID FROM TABLE(P_AUDITORES_ENCARGADOS) AU);

        MERGE INTO SABEC_PROY_CASO_SABEC_AUD TARGET
        USING TABLE(P_AUDITORES_ENCARGADOS) SOURCE ON (TARGET.NPSA_ID = SOURCE.NAUD_ID)
        WHEN NOT MATCHED THEN
          INSERT (
                  NPSA_ID,
                  NPCS_ID,
                  CPSA_NOMBRE_AUDITOR,
                  NPSA_LOAD,
                  DPSA_FECHA_ASIG,
                  CPSA_USUARIO_INSERTO,
                  DPSA_FECHA_INSERTO)
        VALUES (
               SEQ_SABEC_PROY_CASO_SABEC_AUD.NEXTVAL,
               P_ID,
               SOURCE.CAUD_NOMBRE_AUDITOR,
               SOURCE.NAUD_LOAD,
               SYSDATE,
               P_USUARIO,
               SYSDATE
              )
        WHEN MATCHED THEN
          UPDATE SET
            TARGET.CPSA_NOMBRE_AUDITOR = SOURCE.CAUD_NOMBRE_AUDITOR,
            TARGET.CPSA_USUARIO_MODIFICO = P_USUARIO,
            TARGET.DPSA_FECHA_MODIFICO = SYSDATE;

        DELETE SABEC_PROY_CASO_SABEC_RES
        WHERE NPCS_ID = P_ID AND
              NPSR_ID NOT IN (SELECT RF.NRES_ID FROM TABLE(P_RESULTADO_FINAL) RF);

        MERGE INTO SABEC_PROY_CASO_SABEC_RES TARGET
        USING TABLE(P_RESULTADO_FINAL) SOURCE ON (TARGET.NPSR_ID = SOURCE.NRES_ID)
        WHEN NOT MATCHED THEN
          INSERT (
                   NPSR_ID,
                   NPCS_ID,
                   CPSR_DESCRIPCION,
                   NPSR_CONFIRMADA,
                   CPSR_USUARIO_INSERTO,
                   DPSR_FECHA_INSERTO,
                   NPRV_ID_RESULTADO_FINAL)
        VALUES (
               SEQ_SABEC_PROY_CASO_SABEC_RES.NEXTVAL,
               P_ID,
               SOURCE.CRES_DESCRIPCION,
               SOURCE.NRES_CONFIRMADA,
               P_USUARIO,
               SYSDATE,
               SOURCE.NRES_ID_RESULTADO_FINAL
              )
        WHEN MATCHED THEN
          UPDATE SET
            TARGET.CPSR_DESCRIPCION = SOURCE.CRES_DESCRIPCION,
            TARGET.NPSR_CONFIRMADA = SOURCE.NRES_CONFIRMADA,
            TARGET.NPRV_ID_RESULTADO_FINAL = SOURCE.NRES_ID_RESULTADO_FINAL,
            TARGET.CPSR_USUARIO_MODIFICO = P_USUARIO,
            TARGET.DPSR_FECHA_MODIFICO = SYSDATE;

        DELETE SABEC_PROY_CASO_SABEC_BP
        WHERE NPCS_ID = P_ID AND
              NPSB_ID NOT IN (SELECT BP.NBP_ID FROM TABLE(P_BUENAS_PRACTICAS) BP);

        MERGE INTO SABEC_PROY_CASO_SABEC_BP TARGET
        USING TABLE(P_BUENAS_PRACTICAS) SOURCE ON (TARGET.NPSB_ID = SOURCE.NBP_ID)
        WHEN NOT MATCHED THEN
          INSERT (
                   NPSB_ID,
                   NPCS_ID,
                   CPSB_NRO,
                   CPSB_ASUNTO,
                   CPSB_USUARIO_INSERTO,
                   DPSB_FECHA_INSERTO,
                   NPRV_ID_SUB_CATEGORIA,
                   CPSB_DESCRIPCION)
        VALUES (
                   SEQ_SABEC_PROY_CASO_SABEC_BP.NEXTVAL,
                   P_ID,
                   SOURCE.NBP_NUMERO,
                   SOURCE.CBP_ASUNTO,
                   P_USUARIO,
                   SYSDATE,
                   SOURCE.NBP_ID_SUB_CATEGORIA,
                   SOURCE.CBP_DESCRIPCION
              )
        WHEN MATCHED THEN
          UPDATE SET
            TARGET.CPSB_NRO = SOURCE.NBP_NUMERO,
            TARGET.CPSB_ASUNTO = SOURCE.CBP_ASUNTO,
            TARGET.NPRV_ID_SUB_CATEGORIA = SOURCE.NBP_ID_SUB_CATEGORIA,
            TARGET.CPSB_DESCRIPCION = SOURCE.CBP_DESCRIPCION,
            TARGET.CPSB_USUARIO_MODIFICO = P_USUARIO,
            TARGET.DPSB_FECHA_MODIFICO = SYSDATE;

        DELETE SABEC_PROY_CASO_SABEC_LA
        WHERE NPCS_ID = P_ID AND
              NPSL_ID NOT IN (SELECT LA.NLAP_ID FROM TABLE(P_LECCIONES_APRENDIDAS) LA);

        MERGE INTO SABEC_PROY_CASO_SABEC_LA TARGET
        USING TABLE(P_LECCIONES_APRENDIDAS) SOURCE ON (TARGET.NPSL_ID = SOURCE.NLAP_ID)
        WHEN NOT MATCHED THEN
          INSERT (
                    NPSL_ID,
                   NPCS_ID,
                   CPSL_NRO,
                   CPSL_ASUNTO,
                   CPSL_USUARIO_INSERTO,
                   DPSL_FECHA_INSERTO,
                   CPSL_DESCRIPCION,
                   NPRV_ID_SUB_CATEGORIA)
        VALUES (
                   SEQ_SABEC_PROY_CASO_SABEC_LA.NEXTVAL,
                   P_ID,
                   NLAP_NUMERO,
                   CLAP_ASUNTO,
                   P_USUARIO,
                   SYSDATE,
                   CLAP_DESCRIPCION,
                   NLAP_ID_SUB_CATEGORIA
              )
        WHEN MATCHED THEN
          UPDATE SET
            TARGET.CPSL_NRO = SOURCE.NLAP_NUMERO,
            TARGET.CPSL_ASUNTO = SOURCE.CLAP_ASUNTO,
            TARGET.CPSL_DESCRIPCION = SOURCE.CLAP_DESCRIPCION,
            TARGET.NPRV_ID_SUB_CATEGORIA = SOURCE.NLAP_ID_SUB_CATEGORIA,
            TARGET.CPSL_USUARIO_MODIFICO = P_USUARIO,
            TARGET.DPSL_FECHA_MODIFICO = SYSDATE;

        UPDATE SABEC_PROY_CASO
        SET    CPDC_NOM_USU_DESTINO = P_NOM_USU_DEST,
               CPDC_COD_USU_DESTINO = P_COD_USU_DEST,
               NPRV_ID_ROL_DESTINO = P_ID_ROL_DEST,
               CPDC_COD_USU_REMITE = P_COD_USU_REM,
               CPDC_NOM_USU_REMITE = P_NOM_USU_REM,
               NPRV_ID_ROL_REMITE = P_ID_ROL_REM,
               DPDC_FECHA_ENVIO = P_FECHA_ENVIO,
               DPDC_FECHA_REMITE = P_FECHA_ENVIO,
               CPDC_USUARIO_MODIFICO = P_USUARIO,
               DPDC_FECHA_MODIFICO = SYSDATE
        WHERE NPDC_ID = P_ID_PROYECTO_CASO;

        IF(N_ID_ESTADO_ANT <> P_ID_ESTADO) THEN
          UPDATE SABEC_PROY_CASO
          SET    NPRV_ID_ESTADO = P_ID_ESTADO
          WHERE NPDC_ID = P_ID_PROYECTO_CASO;

          UPDATE SABEC_PROY_CASO_EST SET 
             CPCE_SITUACION = 'I',
             CPCE_USUARIO_MODIFICO = P_USUARIO,
             DPCE_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID_PROYECTO_CASO AND CPCE_SITUACION = 'A';

          INSERT INTO SABEC_PROY_CASO_EST(
                 NPCE_ID,
                 NPDC_ID,
                 NPRV_ID_ESTADO_ANT,
                 NPRV_ID_ESTADO_POST,
                 CPCE_NOM_USU,
                 CPCE_COD_USU,
                 NPRV_ID_ROL,
                 DPCE_FECHA,
                 CPCE_SITUACION,
                 CPCE_USUARIO_INSERTO,
                 DPCE_FECHA_INSERTO
          )
          VALUES(
                 SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
                 P_ID_PROYECTO_CASO,
                 N_ID_ESTADO_ANT,
                 P_ID_ESTADO,
                 P_NOM_USU_REM,
                 P_COD_USU_REM,
                 P_ID_ROL_REM,
                 SYSDATE,
                 'A',
                 P_USUARIO,
                 SYSDATE);
        END IF;
    END PA_SABEC_UPD_CASO_SABEC;

    PROCEDURE PA_SABEC_UPD_CS_OBS_SUB (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_CS_OBS_SUB
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_CASO_SABEC IN INTEGER,
        P_NOM_USUARIO IN VARCHAR2,
        P_COD_USUARIO IN VARCHAR2,
        P_ID_ROL_USUARIO IN INTEGER,
        P_DETALLE IN VARCHAR2,
        P_ID_ESTADO IN INTEGER,
        P_USUARIO IN VARCHAR2
    )IS
    BEGIN
        UPDATE SABEC_PROY_CASO_SABEC_OBSA
        SET CPSO_SITUACION = 'I'
        WHERE NPCS_ID = P_ID_CASO_SABEC AND CPSO_SITUACION = 'A';

        INSERT INTO SABEC_PROY_CASO_SABEC_OBSA(
               NPSO_ID, 
               NPCS_ID, 
               NPRV_ID_ESTADO, 
               DPSO_FECHA_OBSERVACION, 
               NINC_ID_TIPO_INC, 
               CPSO_DETALLE, 
               CPSO_USUARIO_INSERTO, 
               DPSO_FECHA_INSERTO, 
               CPSO_COD_USU_OBSERVA, 
               CPSO_NOM_USU_OBSERVA, 
               NPRV_ID_ROL_OBSERVA,
               CPSO_SITUACION)
        VALUES (
               SEQ_SABEC_PROY_CASO_SABEC_OBSA.NEXTVAL,
               P_ID_CASO_SABEC,
               P_ID_ESTADO,
               SYSDATE,
               NULL,
               P_DETALLE,
               P_USUARIO,
               SYSDATE,
               P_COD_USUARIO,
               P_NOM_USUARIO,
               P_ID_ROL_USUARIO,
               'A'
        );
    END PA_SABEC_UPD_CS_OBS_SUB;

    PROCEDURE PA_SABEC_UPD_PARAM (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PARAM
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID IN INTEGER,
    /*2*/   P_COD IN VARCHAR2,
    /*3*/   P_DESCRIPCION IN VARCHAR2,
    /*4*/   P_AUX1 IN VARCHAR2,
    /*5*/   P_AUX2 IN VARCHAR2,
    /*6*/   P_AUX3 IN VARCHAR2,
    /*7*/   P_AUX4 IN VARCHAR2,
    /*8*/   P_AUXNUM1 IN INTEGER,
    /*9*/   P_AUXNUM2 IN INTEGER,
    /*10*/  P_AUXNUM3 IN INTEGER,
    /*11*/  P_AUXNUM4 IN INTEGER,
    /*12*/  P_USUARIO IN VARCHAR2
    )IS
    BEGIN
        UPDATE SABEC_PARAMETROS SET
               CPAR_COD = P_COD,
               CPAR_DESCRIPCION = P_DESCRIPCION,
               CPAR_AUX1= P_AUX1,
               CPAR_AUX2= P_AUX2,
               CPAR_AUX3= P_AUX3,
               CPAR_AUX4= P_AUX4,
               NPAR_AUX1= P_AUXNUM1,
               NPAR_AUX2= P_AUXNUM2,
               NPAR_AUX3= P_AUXNUM3,
               NPAR_AUX4= P_AUXNUM4,
               CPAR_USUARIO_MODIFICO = P_USUARIO,
               DPAR_FECHA_MODIFICO = SYSDATE
        WHERE NPAR_ID = P_ID;

    END PA_SABEC_UPD_PARAM;

    PROCEDURE PA_SABEC_UPD_PARAM_VAL (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PARAM_VAL
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID IN INTEGER,
    /*2*/   P_IDPARM IN INTEGER,
    /*3*/   P_COD IN VARCHAR2,
    /*4*/   P_DESCRIPCION IN VARCHAR2,
    /*5*/   P_CAUX1 IN VARCHAR2,
    /*6*/   P_CAUX2 IN VARCHAR2,
    /*7*/   P_CAUX3 IN VARCHAR2,
    /*8*/   P_CAUX4 IN VARCHAR2,
    /*9*/   P_NAUX1 IN INTEGER,
    /*10*/   P_NAUX2 IN INTEGER,
    /*11*/  P_NAUX3 IN INTEGER,
    /*12*/  P_NAUX4 IN INTEGER,
    /*13*/  P_USUARIO IN VARCHAR2,
    /*13*/  P_ACTIVO IN VARCHAR2
    )IS
    BEGIN
        IF (P_ID > 0) THEN
            UPDATE SABEC_PARAMETROS_VAL SET
                   CPRV_DESCRIPCION = P_DESCRIPCION,
                   CPRV_AUX1 = P_CAUX1,
                   CPRV_AUX2 = P_CAUX2,
                   CPRV_AUX3 = P_CAUX3,
                   CPRV_AUX4 = P_CAUX4,
                   NPRV_AUX1 = P_NAUX1,
                   NPRV_AUX2 = P_NAUX2,
                   NPRV_AUX3 = P_NAUX3,
                   NPRV_AUX4 = P_NAUX4,
                   CPRV_USUARIO_MODIFICO = P_USUARIO,
                   DPRV_FECHA_MODIFICO = SYSDATE,
                   NPRV_ACTIVO = P_ACTIVO
            WHERE NPRV_ID = P_ID; 
        ELSE 
            INSERT INTO SABEC_PARAMETROS_VAL (
                          NPRV_ID
                        , NPAR_ID
                        , CPRV_DESCRIPCION
                        , CPRV_AUX1
                        , CPRV_AUX2
                        , CPRV_AUX3
                        , CPRV_AUX4
                        , NPRV_AUX1
                        , NPRV_AUX2
                        , NPRV_AUX3
                        , NPRV_AUX4
                        , CPRV_USUARIO_INSERTO
                        , DPRV_FECHA_INSERTO
                        , CPRV_USUARIO_MODIFICO
                        , DPRV_FECHA_MODIFICO
                        , CPRV_COD
                        , NPRV_ACTIVO)
            VALUES (SEQ_SABEC_PARAMETROS_VAL.NEXTVAL
                    , P_IDPARM
                    , P_DESCRIPCION
                    , P_CAUX1
                    , P_CAUX2
                    , P_CAUX3
                    , P_CAUX4
                    , P_NAUX1
                    , P_NAUX2
                    , P_NAUX3
                    , P_NAUX4
                    , P_USUARIO
                    , SYSDATE
                    , NULL
                    , NULL
                    , NVL(P_COD,' ')
                    , P_ACTIVO);
        END IF;
    END PA_SABEC_UPD_PARAM_VAL;

    PROCEDURE PA_SABEC_UPD_PC_OBS_SUB (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PC_OBS_SUB
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_PROY_CASO IN INTEGER,
        P_NOM_USUARIO IN VARCHAR2,
        P_COD_USUARIO IN VARCHAR2,
        P_ID_ROL_USUARIO IN INTEGER,
        P_DETALLE IN VARCHAR2,
        P_ID_ESTADO IN INTEGER,
        P_USUARIO IN VARCHAR2
    )IS
    BEGIN
        UPDATE SABEC_PROY_CASO_OBS
        SET CPCO_SITUACION = 'I'
        WHERE NPDC_ID = P_ID_PROY_CASO AND CPCO_SITUACION = 'A';

        INSERT INTO SABEC_PROY_CASO_OBS(
               NPCO_ID, 
               NPDC_ID, 
               NPRV_ID_ESTADO, 
               DPCO_FECHA_OBSERVACION, 
               NTIN_ID_TIPO_INC, 
               CPCO_DETALLE, 
               CPCO_USUARIO_INSERTO, 
               DPCO_FECHA_INSERTO, 
               CPCO_COD_USU_OBSERVA, 
               CPCO_NOM_USU_OBSERVA, 
               NPRV_ID_ROL_OBSERVA,
               CPCO_SITUACION)
        VALUES (
               SEQ_SABEC_PROY_CASO_OBS.NEXTVAL,
               P_ID_PROY_CASO,
               P_ID_ESTADO,
               SYSDATE,
               NULL,
               P_DETALLE,
               P_USUARIO,
               SYSDATE,
               P_COD_USUARIO,
               P_NOM_USUARIO,
               P_ID_ROL_USUARIO,
               'A'
        );
    END PA_SABEC_UPD_PC_OBS_SUB;

    PROCEDURE PA_SABEC_UPD_PLAZOATDET_SABEC (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PLAZOATDET_SABEC
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        /*1*/P_IDPLAZO IN INTEGER,
        /*2*/P_PLAZO_DIAS IN INTEGER,
        /*3*/P_NOM_USU_MODIF IN VARCHAR2
    )
     IS
    BEGIN
      UPDATE SABEC_TIPO_INCONSISTENCIA
         SET NTIN_PLAZO_DIAS       = P_PLAZO_DIAS,
             CTIN_USUARIO_MODIFICO = P_NOM_USU_MODIF,
             DTIN_FECHA_MODIFICO   = sysdate
       WHERE NTIN_ID = P_IDPLAZO;
    END PA_SABEC_UPD_PLAZOATDET_SABEC;

    PROCEDURE PA_SABEC_UPD_PLAZO_EST (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PLAZO_EST
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_PROY_CASO IN INTEGER,
        P_PLAZO_DIAS IN INTEGER,
        P_UND_ORGANICA IN VARCHAR2
    )IS
    BEGIN
      UPDATE SABEC_PROY_CASO_EST
         SET NPCE_PLAZO_DIAS = P_PLAZO_DIAS,
             CPCE_UND_ORGANICA = P_UND_ORGANICA
       WHERE NPDC_ID = P_ID_PROY_CASO AND CPCE_SITUACION = 'A';
    END PA_SABEC_UPD_PLAZO_EST;

    PROCEDURE PA_SABEC_UPD_PROY_CAS_ASIG (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CAS_ASIG
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID_PROY_CASO IN INTEGER,
        P_ID_EST_CASO IN INTEGER,
        P_NOM_USU_ASIGNA IN VARCHAR2,
        P_COD_USU_ASIGNA IN VARCHAR2,
        P_ID_ROL_USU_ASIGNA IN INTEGER,
        P_ID_GESTOR  IN INTEGER,
        P_NOMBRE_GESTOR IN VARCHAR2,
        P_USUARIO IN VARCHAR2
    ) IS
      P_COD_GESTOR VARCHAR2(200);
      P_ID_ROL_GESTOR INTEGER;
    BEGIN 

      P_ID_ROL_GESTOR := SABEC_OBT_ID_PARAMETRO('ROL','ROL03');

      UPDATE SABEC_PROY_CASO_ASIG
      SET NPCA_ACTIVO = 0
      WHERE NPDC_ID = P_ID_PROY_CASO;

      INSERT INTO SABEC_PROY_CASO_ASIG (
             NPCA_ID,
             NPDC_ID,
             DPCA_FECHA_ASIG,
             NPRV_ID_GESTOR,
             NPCA_NOM_USU_ASIGNO,
             NPCA_COD_USU_ASIGNO,
             NPCA_ID_ROL_ASIGNO,
             CPCA_USUARIO_INSERTO,
             DPCA_FECHA_INSERTO,
             NPCA_ACTIVO
             )
      VALUES(
             SEQ_SABEC_PROY_CASO_ASIG.NEXTVAL,
             P_ID_PROY_CASO,
             SYSDATE,
             P_ID_GESTOR,
             P_NOM_USU_ASIGNA,
             P_COD_USU_ASIGNA,
             P_ID_ROL_USU_ASIGNA,
             P_USUARIO,
             SYSDATE,
             1
      );

      SELECT V.CPRV_AUX2 INTO P_COD_GESTOR
      FROM SABEC_PARAMETROS_VAL V
      WHERE NPRV_ID = P_ID_GESTOR;

      UPDATE SABEC_PROY_CASO
            SET DPDC_FECHA_REMITE = SYSDATE,
                DPDC_FECHA_ENVIO = SYSDATE,
                CPDC_NOM_USU_REMITE = P_NOM_USU_ASIGNA,
                CPDC_COD_USU_REMITE = P_COD_USU_ASIGNA,
                NPRV_ID_ROL_REMITE = P_ID_ROL_USU_ASIGNA,
                CPDC_NOM_USU_DESTINO = P_NOMBRE_GESTOR ,
                CPDC_COD_USU_DESTINO = P_COD_GESTOR,
                NPRV_ID_ROL_DESTINO = P_ID_ROL_GESTOR,
                CPDC_USUARIO_MODIFICO = P_USUARIO,
                DPDC_FECHA_MODIFICO = SYSDATE,
                DPDC_FECHA_ASIG = SYSDATE,
                CPDC_NOM_GESTOR = P_NOMBRE_GESTOR,
                CPDC_COD_GESTOR = P_COD_GESTOR,
                NPRV_ID_ROL_GESTOR = P_ID_ROL_GESTOR
            WHERE NPDC_ID = P_ID_PROY_CASO; 

      PA_SABEC_UPD_PROY_CASO_CAM_EST(
        P_ID_PROY_CASO,
        P_ID_EST_CASO,
        P_NOM_USU_ASIGNA,
        P_COD_USU_ASIGNA,
        P_ID_ROL_USU_ASIGNA,
        P_USUARIO,
        NULL);

    END PA_SABEC_UPD_PROY_CAS_ASIG;

    PROCEDURE PA_SABEC_UPD_PROY_CASO (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CASO
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
    /*1*/   P_ID IN INTEGER,
    /*2*/   P_NUMERO_ENVIO IN VARCHAR2,
    /*3*/   P_ID_ESTADO IN INTEGER,
    /*4*/   P_NOM_USU_REM IN VARCHAR2,
    /*5*/   P_COD_USU_REM IN VARCHAR2,
    /*6*/   P_ID_ROL_REM IN VARCHAR2,
    /*7*/   P_FECHA_ENVIO IN DATE,
    /*8*/   P_NOM_USU_DEST IN VARCHAR2,
    /*9*/   P_COD_USU_DEST IN VARCHAR2,
    /*10*/   P_ID_ROL_DEST IN VARCHAR2,
    /*11*/   P_ID_TIPO_RESPONSABILIDAD IN INTEGER,
    /*12*/   P_TIPO_DELITO IN TYP_TBL_INTEGER,
    /*13*/  P_COD_ENTIDAD IN VARCHAR2,
    /*14*/  P_NOM_ENTIDAD IN VARCHAR2,
    /*15*/  P_DEP_ENTIDAD IN VARCHAR2,
    /*16*/  P_RESOLUCION_SENTENCIA IN VARCHAR2,
    /*17*/  P_NUMERO_INFORME IN VARCHAR2,
    /*18*/  P_DECISION_RESOLUCION IN VARCHAR2,
    /*19*/  P_INFRACCION IN TYP_TBL_INFRACCION,
    /*20*/  P_ADJUNTOS  IN TYP_TBL_ADJUNTO,
    /*21*/  P_CONSIDERACIONES IN VARCHAR2,
    /*22*/  P_USUARIO IN VARCHAR2,
    /*23*/  P_COD_UNIDAD_ORGANICA IN VARCHAR2,
    /*24*/  P_NOM_UNIDAD_ORGANICA IN VARCHAR2
    )IS
    N_ID_ESTADO_ANT    INTEGER;
    BEGIN
        SELECT NPRV_ID_ESTADO INTO N_ID_ESTADO_ANT
        FROM SABEC_PROY_CASO
        WHERE NPDC_ID = P_ID;

        UPDATE SABEC_PROY_CASO SET
               CPDC_NUM_ENVIO = P_NUMERO_ENVIO,
               NPRV_ID_TIP_RESP = P_ID_TIPO_RESPONSABILIDAD,
               CPDC_COD_ENTIDAD = P_COD_ENTIDAD,
               CPDC_NOM_ENTIDAD = P_NOM_ENTIDAD,
               CPDC_DEP_ENTIDAD = P_DEP_ENTIDAD,
               DPDC_FECHA_ENVIO = P_FECHA_ENVIO,
               DPDC_FECHA_REMITE = P_FECHA_ENVIO,
               CPDC_RESOL_SENT = P_RESOLUCION_SENTENCIA,
               CPDC_NRO_INFOR_AUD = P_NUMERO_INFORME,
               CPDC_DECI_RESOL = P_DECISION_RESOLUCION,
               CPDC_CONSIDERACIONES = P_CONSIDERACIONES,     
               CPDC_COD_USU_REMITE = P_COD_USU_REM,
               CPDC_NOM_USU_REMITE = P_NOM_USU_REM,
               NPRV_ID_ROL_REMITE = P_ID_ROL_REM,                                            
               CPDC_NOM_USU_DESTINO = P_NOM_USU_DEST,
               CPDC_COD_USU_DESTINO = P_COD_USU_DEST,
               NPRV_ID_ROL_DESTINO = P_ID_ROL_DEST ,
               NPRV_ID_ESTADO = P_ID_ESTADO,
               CPDC_USUARIO_MODIFICO = P_USUARIO,
               DPDC_FECHA_MODIFICO = SYSDATE,
               CPDC_UNIDAD_ORGANICA = P_NOM_UNIDAD_ORGANICA,
               CPDC_COD_UNIDAD_ORGANICA = P_COD_UNIDAD_ORGANICA
        WHERE NPDC_ID = P_ID;

        DELETE FROM SABEC_PROY_CASO_TIP_DEL
        WHERE NPDC_ID = P_ID AND
              NPRV_ID_TIP_DEL NOT IN (SELECT NVL(T.NINT_VAL,0) 
                                      FROM TABLE(P_TIPO_DELITO) T);

        INSERT INTO SABEC_PROY_CASO_TIP_DEL (
               NPDC_ID,
               NPRV_ID_TIP_DEL,
               CPAR_USUARIO_INSERTO,
               DPAR_FECHA_INSERTO
        )
        SELECT P_ID,
               I.NINT_VAL,
               P_USUARIO,
               SYSDATE
        FROM TABLE(P_TIPO_DELITO) I
        WHERE NVL(I.NINT_VAL,0) NOT IN (  SELECT T.NPRV_ID_TIP_DEL
                                          FROM SABEC_PROY_CASO_TIP_DEL T
                                          WHERE T.NPDC_ID = P_ID);

        DELETE FROM SABEC_PROY_CASO_INF
        WHERE NPDC_ID = P_ID AND
              NPCI_ID NOT IN (SELECT NVL(T.NINF_ID,0) FROM TABLE(P_INFRACCION) T);


        MERGE INTO SABEC_PROY_CASO_INF INF
        USING TABLE(P_INFRACCION) P_INF ON (INF.NPCI_ID = P_INF.NINF_ID)
        WHEN NOT MATCHED THEN
          INSERT (
            NPCI_ID,
            NPDC_ID,
            NPCI_ID_INFRACCION,
            NPCI_CANT_ADMIN,
            CPCI_INFRACCION,
            CPCI_CALIFICACION,
            CPCI_SANCION,
            CPCI_USUARIO_INSERTO,
            DPCI_FECHA_INSERTO)
        VALUES (
               SEQ_SABEC_PROY_CASO_INF.NEXTVAL,
               P_ID,
               P_INF.NINF_ID_PARAMETRO,
               P_INF.NINF_CANT_ADMIN,
               P_INF.CINF_INFRACCION,
               P_INF.CINF_CALIFICACION,
               P_INF.CINF_SANCION,
               P_USUARIO,
               SYSDATE
              )
        WHEN MATCHED THEN
          UPDATE SET
            INF.NPCI_CANT_ADMIN = P_INF.NINF_CANT_ADMIN,
            INF.CPCI_INFRACCION = P_INF.CINF_INFRACCION,
            INF.CPCI_CALIFICACION = P_INF.CINF_CALIFICACION,
            INF.CPCI_SANCION = P_INF.CINF_SANCION,
            INF.CPCI_USUARIO_MODIFICO = P_USUARIO,
            INF.DPCI_FECHA_MODIFICO = SYSDATE;


        DELETE FROM SABEC_PROY_CASO_ADJ
        WHERE NPDC_ID = P_ID AND
              NPCA_ID NOT IN (SELECT NVL(T.NADJ_ID,0) FROM TABLE(P_ADJUNTOS) T);

        INSERT INTO SABEC_PROY_CASO_ADJ (
            NPCA_ID,
            NPDC_ID,
            CPCA_RUTA_ARCHIVO,
            CPCA_NOMBRE,
            NPCA_PESO,
            CPCA_USUARIO_INSERTO,
            DPCA_FECHA_INSERTO
        )
        SELECT  SEQ_SABEC_PROY_CASO_INF.NEXTVAL,
                P_ID,
                CADJ_RUTA_ARCHIVO,
                CADJ_NOMBRE,
                NADJ_PESO,
                P_USUARIO,
                SYSDATE
        FROM TABLE(P_ADJUNTOS)
        WHERE NVL(NADJ_ID,0) NOT IN (SELECT T.NPCA_ID
                                     FROM SABEC_PROY_CASO_ADJ T
                                     WHERE T.NPDC_ID = P_ID);


        IF(N_ID_ESTADO_ANT <> P_ID_ESTADO) THEN
          UPDATE SABEC_PROY_CASO_EST SET CPCE_SITUACION = 'I'
          WHERE NPDC_ID = P_ID;

          INSERT INTO SABEC_PROY_CASO_EST(
                 NPCE_ID,
                 NPDC_ID,
                 NPRV_ID_ESTADO_ANT,
                 NPRV_ID_ESTADO_POST,
                 CPCE_NOM_USU,
                 CPCE_COD_USU,
                 NPRV_ID_ROL,
                 DPCE_FECHA,
                 CPCE_SITUACION,
                 CPCE_USUARIO_INSERTO,
                 DPCE_FECHA_INSERTO
          )
          VALUES(
                 SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
                 P_ID,
                 N_ID_ESTADO_ANT, 
                 P_ID_ESTADO,     
                 P_NOM_USU_REM,    
                 P_COD_USU_REM,
                 P_ID_ROL_REM,
                 SYSDATE,
                 'A',
                 P_USUARIO,
                 SYSDATE);
        END IF;
    END PA_SABEC_UPD_PROY_CASO;

    PROCEDURE PA_SABEC_UPD_PROY_CASO_CAM_EST (
        /**************************************************************************************
        NOMBRE DEL OBJETO   : PA_SABEC_UPD_PROY_CASO_CAM_EST
        AUTOR               : NESTOR
        FECHA DE CREACIÓN   : 02/05/2020
        LLAMADO POR         : 
        DESCRIPCIÓN         : 
        REVISIONES:
        VERSIÓN     FECHA MODIF.    USUARIO                                DESCRIPCIÓN
        --------    ------------    ----------------------------------     -----------
        ***************************************************************************************/
        P_ID IN INTEGER,
        P_ID_ESTADO IN INTEGER,
        P_NOM_USUARIO IN VARCHAR2,
        P_COD_USUARIO IN VARCHAR2,
        P_ID_ROL_USUARIO IN INTEGER,
        P_USUARIO IN VARCHAR2,
        P_DETALLE IN VARCHAR2
    )IS
        PC_REV_COOR_GDEE INTEGER;
        PC_OBS_COOR_GDEE_SUB_UO INTEGER;
        PC_OBS_GES_SABEC_SUB_UO INTEGER;
        PC_EN_SUBSA_UO_COOR_GDEE INTEGER;
        PC_EN_SUBSA_UO_GESTOR_SABEC INTEGER;
        PC_SUB_UO_OBS_COOR_GDEE INTEGER;
        PC_SUB_UO_OBS_GESTOR_SABEC INTEGER;
        PC_EVA_GES_SABEC INTEGER;
        PCS_VER_COOR_GDEE INTEGER;
        PCS_APRO_GER_GDEE INTEGER;
        PCS_OBS_COOR_GDEE_SUB_GES_SAB INTEGER;
        PCS_OBS_GER_GDEE_SUB_GES_SAB INTEGER;
        PCS_SUB_GES_SAB_GER_GDEE INTEGER;
        PCS_SUB_GES_SAB_COOR_GDEE INTEGER;
        PCS_VAL_GER_GDEE INTEGER;

        PC_CONCLUIDO_OPE_UO INTEGER;
        PCS_CONCLUIDO_GEST_SABEC INTEGER;
        PCS_VAL_GDEE_APRO_GER_SABEC INTEGER;
        ID_ROL_GERENTE_GDEE INTEGER;

        PC_OBS_ASIG_GES_SABEC INTEGER;
        PCS_PUBLICADO_GERENTE_GDEE INTEGER;
    BEGIN
      PC_REV_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES03');
      PC_OBS_COOR_GDEE_SUB_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES04');
      PC_OBS_ASIG_GES_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES07');
      PC_OBS_GES_SABEC_SUB_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES09');
      PC_EN_SUBSA_UO_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES05');
      PC_SUB_UO_OBS_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES06');
      PC_EN_SUBSA_UO_GESTOR_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES10');
      PC_SUB_UO_OBS_GESTOR_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES11');

      PC_EVA_GES_SABEC:= SABEC_OBT_ID_PARAMETRO('ESTD','ES08');
      PCS_VER_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES13');
      PCS_APRO_GER_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES18');
      PCS_OBS_COOR_GDEE_SUB_GES_SAB := SABEC_OBT_ID_PARAMETRO('ESTD','ES14');
      PCS_OBS_GER_GDEE_SUB_GES_SAB := SABEC_OBT_ID_PARAMETRO('ESTD','ES19');
      PCS_SUB_GES_SAB_GER_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES21');
      PCS_SUB_GES_SAB_COOR_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES16');
      PCS_VAL_GER_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES22');
      PC_CONCLUIDO_OPE_UO := SABEC_OBT_ID_PARAMETRO('ESTD','ES23');
      PCS_CONCLUIDO_GEST_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES24');
      PCS_VAL_GDEE_APRO_GER_SABEC := SABEC_OBT_ID_PARAMETRO('ESTD','ES17');
      ID_ROL_GERENTE_GDEE := SABEC_OBT_ID_PARAMETRO('ROL','ROL04');
      PCS_PUBLICADO_GERENTE_GDEE := SABEC_OBT_ID_PARAMETRO('ESTD','ES25');

      UPDATE SABEC_PROY_CASO_EST
         SET CPCE_SITUACION = 'I',
             CPCE_USUARIO_MODIFICO = P_USUARIO,
             DPCE_FECHA_MODIFICO = SYSDATE
       WHERE NPDC_ID = P_ID AND CPCE_SITUACION = 'A';

      INSERT INTO SABEC_PROY_CASO_EST(
             NPCE_ID,
             NPDC_ID,
             NPRV_ID_ESTADO_ANT,
             NPRV_ID_ESTADO_POST,
             CPCE_COD_USU,
             CPCE_NOM_USU,
             NPRV_ID_ROL,
             DPCE_FECHA,
             CPCE_SITUACION,
             CPCE_USUARIO_INSERTO,
             DPCE_FECHA_INSERTO
      )
      SELECT SEQ_SABEC_PROY_CASO_EST.NEXTVAL,
             P_ID,
             NPRV_ID_ESTADO,
             P_ID_ESTADO,
             P_COD_USUARIO,
             P_NOM_USUARIO,
             P_ID_ROL_USUARIO,
             SYSDATE,
             'A',
             P_USUARIO,
             SYSDATE
      FROM SABEC_PROY_CASO
      WHERE NPDC_ID = P_ID;

      UPDATE SABEC_PROY_CASO SET NPRV_ID_ESTADO = P_ID_ESTADO,
                                 CPDC_USUARIO_MODIFICO = P_USUARIO,
                                 DPDC_FECHA_MODIFICO = SYSDATE
      WHERE NPDC_ID = P_ID;

      IF(P_ID_ESTADO = PC_REV_COOR_GDEE OR
         P_ID_ESTADO = PC_EVA_GES_SABEC OR
         P_ID_ESTADO = PC_EN_SUBSA_UO_COOR_GDEE OR
         P_ID_ESTADO = PC_EN_SUBSA_UO_GESTOR_SABEC OR
         P_ID_ESTADO = PC_SUB_UO_OBS_COOR_GDEE OR
         P_ID_ESTADO = PC_SUB_UO_OBS_GESTOR_SABEC OR
         P_ID_ESTADO = PCS_VER_COOR_GDEE OR
         P_ID_ESTADO = PCS_APRO_GER_GDEE OR
         P_ID_ESTADO = PCS_SUB_GES_SAB_GER_GDEE OR
         P_ID_ESTADO = PCS_SUB_GES_SAB_COOR_GDEE
         ) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_INICIO_ATENCION = SYSDATE,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE,
              DPDC_FECHA_SUBSANACION = CASE WHEN P_ID_ESTADO = PC_SUB_UO_OBS_COOR_GDEE THEN SYSDATE 
                                            WHEN P_ID_ESTADO = PC_SUB_UO_OBS_GESTOR_SABEC THEN SYSDATE
                                            WHEN P_ID_ESTADO = PCS_SUB_GES_SAB_GER_GDEE THEN SYSDATE
                                            WHEN P_ID_ESTADO = PCS_SUB_GES_SAB_COOR_GDEE THEN SYSDATE
                                            ELSE DPDC_FECHA_SUBSANACION
                                       END
          WHERE NPDC_ID = P_ID;

          UPDATE SABEC_PROY_CASO_SABEC
          SET DPCS_INICIO_EVALUACION = SYSDATE,
              CPCS_USUARIO_MODIFICO = P_USUARIO,
              DPCS_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;

      ELSIF (P_ID_ESTADO = PC_OBS_COOR_GDEE_SUB_UO OR
             P_ID_ESTADO = PC_OBS_GES_SABEC_SUB_UO) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_FECHA_REMITE = SYSDATE,
              DPDC_FECHA_ENVIO = SYSDATE,
              CPDC_NOM_USU_REMITE = P_NOM_USUARIO,
              CPDC_COD_USU_REMITE = P_COD_USUARIO,
              NPRV_ID_ROL_REMITE = P_ID_ROL_USUARIO,
              CPDC_NOM_USU_DESTINO = CPDC_OPERADOR_UO,
              CPDC_COD_USU_DESTINO = CPDC_COD_OPERADOR_UO,
              NPRV_ID_ROL_DESTINO = NPRV_ID_ROL_OPERADOR_UO,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;
      ELSIF (P_ID_ESTADO = PCS_OBS_COOR_GDEE_SUB_GES_SAB OR
             P_ID_ESTADO = PCS_OBS_GER_GDEE_SUB_GES_SAB) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_FECHA_REMITE = SYSDATE,
              DPDC_FECHA_ENVIO = SYSDATE,
              CPDC_NOM_USU_REMITE = P_NOM_USUARIO,
              CPDC_COD_USU_REMITE = P_COD_USUARIO,
              NPRV_ID_ROL_REMITE = P_ID_ROL_USUARIO,
              CPDC_NOM_USU_DESTINO = CPDC_NOM_GESTOR,
              CPDC_COD_USU_DESTINO = CPDC_COD_GESTOR,
              NPRV_ID_ROL_DESTINO = NPRV_ID_ROL_GESTOR,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;
       ELSIF (P_ID_ESTADO = PCS_VAL_GDEE_APRO_GER_SABEC) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_FECHA_REMITE = SYSDATE,
              DPDC_FECHA_ENVIO = SYSDATE,
              CPDC_NOM_USU_REMITE = P_NOM_USUARIO,
              CPDC_COD_USU_REMITE = P_COD_USUARIO,
              NPRV_ID_ROL_REMITE = P_ID_ROL_USUARIO,
              CPDC_NOM_USU_DESTINO = NULL,
              CPDC_COD_USU_DESTINO = NULL,
              NPRV_ID_ROL_DESTINO = ID_ROL_GERENTE_GDEE,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;
       ELSIF (P_ID_ESTADO = PCS_VAL_GER_GDEE) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_FECHA_REMITE = SYSDATE,
              DPDC_FECHA_ENVIO = SYSDATE,
              CPDC_NOM_USU_REMITE = P_NOM_USUARIO,
              CPDC_COD_USU_REMITE = P_COD_USUARIO,
              NPRV_ID_ROL_REMITE = P_ID_ROL_USUARIO,
              CPDC_NOM_USU_DESTINO = NULL,
              CPDC_COD_USU_DESTINO = NULL,
              NPRV_ID_ROL_DESTINO = NULL,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;
       ELSIF (P_ID_ESTADO = PC_CONCLUIDO_OPE_UO OR
              P_ID_ESTADO = PCS_CONCLUIDO_GEST_SABEC) THEN
          UPDATE SABEC_PROY_CASO
          SET DPDC_FECHA_REMITE = SYSDATE,
              DPDC_FECHA_ENVIO = SYSDATE,
              CPDC_MOT_CONCLUIDO = P_DETALLE,
              CPDC_USUARIO_MODIFICO = P_USUARIO,
              DPDC_FECHA_MODIFICO = SYSDATE
          WHERE NPDC_ID = P_ID;
      END IF;

      IF(P_ID_ESTADO = PC_REV_COOR_GDEE OR
           P_ID_ESTADO = PC_OBS_COOR_GDEE_SUB_UO OR
           P_ID_ESTADO = PC_OBS_ASIG_GES_SABEC OR
           P_ID_ESTADO = PCS_VER_COOR_GDEE OR
           P_ID_ESTADO = PCS_OBS_COOR_GDEE_SUB_GES_SAB OR
           P_ID_ESTADO = PCS_VAL_GDEE_APRO_GER_SABEC
         ) THEN
          UPDATE SABEC_PROY_CASO
          SET 
            CPDC_NOM_COORD = P_NOM_USUARIO,
            CPDC_COD_COORD = P_COD_USUARIO,
            NPRV_ID_ROL_COORD = P_ID_ROL_USUARIO
          WHERE NPDC_ID = P_ID;
      END IF;

      IF(P_ID_ESTADO = PCS_APRO_GER_GDEE OR
           P_ID_ESTADO = PCS_OBS_GER_GDEE_SUB_GES_SAB OR
           P_ID_ESTADO = PCS_VAL_GER_GDEE OR
           P_ID_ESTADO = PCS_PUBLICADO_GERENTE_GDEE
         ) THEN
          UPDATE SABEC_PROY_CASO
          SET 
            CPDC_NOM_GERENTE = P_NOM_USUARIO,
            CPDC_COD_GERENTE = P_COD_USUARIO,
            NPRV_ID_ROL_GERENTE = P_ID_ROL_USUARIO
          WHERE NPDC_ID = P_ID;
      END IF;

    END PA_SABEC_UPD_PROY_CASO_CAM_EST;

END PG_SABEC_PRINCIPAL;
/


