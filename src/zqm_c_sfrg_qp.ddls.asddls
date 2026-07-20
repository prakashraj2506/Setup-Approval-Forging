@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Quality Parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZQM_C_SFRG_QP as projection on zqm_i_sfrg_qp
{
    key Cuuid,
    key Itemno,
    Parameters,
    Specifications,
    Mmr,
    Station,
    Observation,
    Result1,
    _HDR : redirected to parent ZQM_C_SFRG_HD
}
