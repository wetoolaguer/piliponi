defmodule Piliponi do
  @telcos %{
    "0974" => :exetel,
    "0973" => :exetel,

    "0932" => :sun,
    "0942" => :sun,
    "0922" => :sun,
    "0933" => :sun,
    "0934" => :sun,
    "0943" => :sun,
    "0924" => :sun,
    "0923" => :sun,

    "0994" => :globe,
    "0905" => :globe,
    "0916" => :globe,
    "0997" => :globe,
    "0925" => :globe,
    "0927" => :globe,
    "0937" => :globe,
    "0926" => :globe,
    "0936" => :globe,
    "0817" => :globe,
    "0935" => :globe,
    "0917" => :globe,
    "0906" => :globe,
    "0996" => :globe,
    "0979" => :globe,
    "0915" => :globe,
    "0977" => :globe,

    "0948" => :smart,
    "0911" => :smart,
    "0998" => :smart,
    "0912" => :smart,
    "0914" => :smart,
    "0907" => :smart,
    "0999" => :smart,
    "0910" => :smart,
    "0813" => :smart,
    "0909" => :smart,
    "0947" => :smart,
    "0918" => :smart,
    "0929" => :smart,
    "0908" => :smart,
    "0989" => :smart,
    "0949" => :smart,
    "0920" => :smart,
    "0921" => :smart,
    "0930" => :smart,
    "0946" => :smart,
    "0928" => :smart,
    "0919" => :smart,
    "0939" => :smart,
    "0913" => :smart,
    "0938" => :smart
  }

  def telco_for(num) do
    num |> get_prefix |> get_matching_telco
  end

  defp get_prefix(num), do: String.slice(num, 0..3)

  defp get_matching_telco(prefix) do
    case Map.fetch(@telcos, prefix) do
      {:ok, result} ->
        {:ok, result}
      :error ->
        {:error, :unknown_telco}
    end
  end
end
