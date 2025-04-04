@AbapCatalog.sqlViewName: 'ZBJOB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Jobs Basic CDS view'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view zcoa_b_job as select from zcoa_job
{
    key job_id,
    key language,
    job_name
}
