defmodule Piliponi do
  @telcos %{
    smart: [ "0813", "0907", "0908", "0909", "0910", "0911", "0912", "0913",
             "0914", "0918", "0919", "0920", "0921", "0928", "0929", "0930",
             "0938", "0939", "0946", "0947", "0948", "0949", "0989", "0998",
             "0999" ],
    sun:   [ "0922", "0923", "0924", "0932", "0933", "0934", "0942", "0943" ],
    globe: [ "0817", "0905", "0906", "0915", "0916", "0917", "0925", "0926",
             "0927", "0935", "0936", "0937", "0994", "0996", "0997", "0977",
             "0979" ],
    exetel: [ "0973", "0974" ]
  }

  def telco_for(num) do
    num
    |> get_prefix
    |> get_matching_telco
    |> get_telco_key
  end

  defp get_prefix(num), do: String.slice(num, 0..3)

  defp get_matching_telco(prefix) do
    Enum.find(@telcos, fn {key, val} ->
      Enum.any?(val, fn (number) -> number == prefix end)
    end)
  end

  defp get_telco_key(nil), do: { :error, :unknown_telco }
  defp get_telco_key({key, prefixes}), do: { :ok, key }
end
