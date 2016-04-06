defmodule PiliponiTest do
  use ExUnit.Case
  doctest Piliponi

  test "telco for" do
    assert { :ok, :smart } == Piliponi.telco_for("09183723303")
    assert { :ok, :sun } == Piliponi.telco_for("09223723303")
    assert { :ok, :globe } == Piliponi.telco_for("09173723303")
    assert { :error, :unknown_telco } == Piliponi.telco_for("19183723303")
  end
end
