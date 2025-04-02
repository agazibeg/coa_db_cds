@AbapCatalog.sqlViewName: 'ZCOA_EMP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CoA: Employees with jobs CDS view'
@Metadata.ignorePropagatedAnnotations: true
define view ZCOA_EMPLOYEE_JOB as select from zcoa_employee as _emp
association [1..1] to zcoa_job as _job on _emp.job_id = _job.job_id
                                      and _job.language = $session.system_language
{
    key employee_id,
    first_name,
    last_name,
    //job_id
    _job.job_name
    
} where first_name = 'John'
