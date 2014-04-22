require 'test_helper'

class StudentProjectsControllerTest < ActionController::TestCase
  setup do
    @student_project = student_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_project" do
    assert_difference('StudentProject.count') do
      post :create, student_project: { description: @student_project.description, student: @student_project.student, time: @student_project.time, topic: @student_project.topic }
    end

    assert_redirected_to student_project_path(assigns(:student_project))
  end

  test "should show student_project" do
    get :show, id: @student_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_project
    assert_response :success
  end

  test "should update student_project" do
    patch :update, id: @student_project, student_project: { description: @student_project.description, student: @student_project.student, time: @student_project.time, topic: @student_project.topic }
    assert_redirected_to student_project_path(assigns(:student_project))
  end

  test "should destroy student_project" do
    assert_difference('StudentProject.count', -1) do
      delete :destroy, id: @student_project
    end

    assert_redirected_to student_projects_path
  end
end
