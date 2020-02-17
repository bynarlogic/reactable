require 'test_helper'

class ActionViewRenderExtension < ActionView::TestCase
  test "calls react_component for reactable models" do
    rm = ReactableModel.new
    exception = assert_raises(NoMethodError) do
      render(rm)
    end
    assert_match(/react_component/, exception.message)
  end

  test "attempts to render partial for non-reactable models" do
    nm = NonReactableModel.new
    exception = assert_raises(ActionView::MissingTemplate) do
      render(nm)
    end
    assert_match(/Missing partial non_reactable_models/, exception.message)
  end

  test "attempts to render partial for reactable model when default: true karg is provided" do
    rm = ReactableModel.new
    exception = assert_raises(ActionView::MissingTemplate) do
      render(rm, default: true)
    end
    assert_match(/Missing partial reactable_models/, exception.message)
  end
end