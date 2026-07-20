@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View Quality Parameters'
@Metadata.ignorePropagatedAnnotations: true
define view entity zqm_i_sfrg_qp as select from zqm_t_sfrg_qp
  association to parent zqm_i_sfrg_hd as _HDR
    on $projection.Cuuid = _HDR.Cuuid
{
    key cuuid          as Cuuid,
    key itemno         as Itemno,
    parameters         as Parameters,
    specifications     as Specifications,
    mmr                as Mmr,
    station            as Station,
    observation        as Observation,
    result1             as Result1,
    _HDR
}
