@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Setup Approval Forging IT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZQM_C_SFRG_IT as projection on zqm_i_sfrg_it
{
    key Cuuid,
    key Itemno,
    Parameters,
    Specifications,
    Mmr,
    Obs1,
    Obs2,
    Obs3,
    Obs4,
    Obs5,
    obs1_t,
    obs2_t,
    obs3_t,
    obs4_t,
    obs5_t,
    obs1criticality,
    obs2criticality,
    obs3criticality,
    obs4criticality,
    obs5criticality,
    Station,
    _HDR : redirected to parent ZQM_C_SFRG_HD
}
