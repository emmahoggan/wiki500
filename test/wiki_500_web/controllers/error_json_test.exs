defmodule Wiki500Web.ErrorJSONTest do
  use Wiki500Web.ConnCase, async: true

  test "renders 404" do
    assert Wiki500Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Wiki500Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
