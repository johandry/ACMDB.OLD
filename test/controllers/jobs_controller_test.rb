require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { actions: @job.actions, alarm_if_fail: @job.alarm_if_fail, avg_runtime_min: @job.avg_runtime_min, avg_runtime_sec: @job.avg_runtime_sec, box_name: @job.box_name, command: @job.command, condition: @job.condition, contacts: @job.contacts, created_on: @job.created_on, critical: @job.critical, date_condition: @job.date_condition, days_of_week: @job.days_of_week, description: @job.description, job_type: @job.job_type, last_modified_on: @job.last_modified_on, machine: @job.machine, max_runtime_min: @job.max_runtime_min, modified_by: @job.modified_by, name: @job.name, notes: @job.notes, owner: @job.owner, permission: @job.permission, priority: @job.priority, short_description: @job.short_description, start_times: @job.start_times, status: @job.status, str_err_file: @job.str_err_file, str_out_file: @job.str_out_file, submited_by: @job.submited_by, system: @job.system, system_type: @job.system_type, update_log: @job.update_log }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { actions: @job.actions, alarm_if_fail: @job.alarm_if_fail, avg_runtime_min: @job.avg_runtime_min, avg_runtime_sec: @job.avg_runtime_sec, box_name: @job.box_name, command: @job.command, condition: @job.condition, contacts: @job.contacts, created_on: @job.created_on, critical: @job.critical, date_condition: @job.date_condition, days_of_week: @job.days_of_week, description: @job.description, job_type: @job.job_type, last_modified_on: @job.last_modified_on, machine: @job.machine, max_runtime_min: @job.max_runtime_min, modified_by: @job.modified_by, name: @job.name, notes: @job.notes, owner: @job.owner, permission: @job.permission, priority: @job.priority, short_description: @job.short_description, start_times: @job.start_times, status: @job.status, str_err_file: @job.str_err_file, str_out_file: @job.str_out_file, submited_by: @job.submited_by, system: @job.system, system_type: @job.system_type, update_log: @job.update_log }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
