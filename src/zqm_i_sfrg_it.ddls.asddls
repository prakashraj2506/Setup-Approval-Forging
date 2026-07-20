@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Setup Approval Forging IT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zqm_i_sfrg_it as select from zqm_t_sfrg_it
  association to parent zqm_i_sfrg_hd as _HDR
    on $projection.Cuuid = _HDR.Cuuid
{
    key cuuid as Cuuid,
    key itemno as Itemno,
    parameters as Parameters,
    specifications as Specifications,
    mmr as Mmr,
    obs1 as Obs1,
    obs2 as Obs2,
    obs3 as Obs3,
    obs4 as Obs4,
    obs5 as Obs5,
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
    station as Station,
    _HDR
}
