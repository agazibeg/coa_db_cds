@AbapCatalog.sqlViewName: 'ZBEMPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Employee Basic CDS view'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define view zcoa_b_employee as select from zcoa_employee
{
    key employee_id,
    first_name,
    last_name,
    job_id
}
