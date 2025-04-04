@AbapCatalog.sqlViewName: 'ZCOA_EMP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Employees with jobs CDS view'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #COMPOSITE
define view ZCOA_EMPLOYEE_JOB as select from zcoa_b_employee as _emp
association [1..1] to zcoa_b_job as _job on _emp.job_id = _job.job_id
                                      and _job.language = $session.system_language
{
    key employee_id,
    //first_name,
    //last_name,
    _job.job_name,
    
    concat_with_space(concat_with_space(first_name, last_name, 1), 
    _job.job_name, 3) as full_name_with_job,
    
    cast(0 as abap.dec( 5, 2 )) as salary
    
}
