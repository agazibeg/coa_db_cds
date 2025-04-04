CLASS zcoa_employee_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcoa_employee_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    select max( employee_id ) from zcoa_employee into @data(lv_max_id).
*    "add 1 to lv_max_id.
*    lv_max_id = lv_max_id + 1.
*
*    data ls_employee type zcoa_employee.
*
*    ls_employee-employee_id = lv_max_id.
*    ls_employee-first_name = |Angelina|.
*    ls_employee-last_name = |Jolie|.
*
*    insert zcoa_employee from @ls_employee.
*
*    if sy-subrc eq 0.
*        out->write( |Employee created successfully!| ).
*    else.
*        out->write( |Failed to create employee! { SY-subrc }| ).
*    endif.

*    data ls_job type zcoa_job.
*    ls_job-job_id = 1.
*    ls_job-language = 'E'.
*    ls_job-job_name = |Teacher|.

*    data lt_jobs type table of zcoa_job.
*
*    data(ls_job) = value zcoa_job( job_id = 2 language = 'E' job_name = 'Software Developer' ).
*    append ls_job to lt_jobs.
*
*    ls_job = value zcoa_job( job_id = 2 language = 'D' job_name = 'Softwareentwickler' ).
*    append ls_job to lt_jobs.
*
*    insert zcoa_job from table @lt_jobs.
*    if sy-subrc eq 0.
*        out->write( |Job created successfully! Number of rows: { sy-dbcnt }| ).
*    else.
*        out->write( |Failed to create job! { SY-subrc }| ).
*    endif.

*     update zcoa_employee set job_id = 2
*     where employee_id <> 1.
*
*    if sy-subrc eq 0.
*        out->write( |Job updated successfully! { SY-dbcnt }| ).
*    else.
*        out->write( |Failed to update job! { SY-subrc }| ).
*    endif.

*    select * from ZCOA_EMPLOYEE_JOB into table @data(lt_employees).
*    out->write( lt_employees ).

    DATA(ls_employee) = VALUE zcoa_employee( employee_id = 5
                                             first_name = 'Test employee 5'
                                             last_name = 'Test test'
                                             job_id = 91 ).
    INSERT zcoa_employee FROM @ls_employee.
    IF sy-subrc EQ 0.
      out->write( |Employee inserted successfully!| ).
    ELSE.
      out->write( |Failed to insert employee! { sy-subrc }| ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
