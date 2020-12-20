defmodule ExPesa.Jenga.SendMoneyQueries.AccountInquiryPesalinkBanks do
  @moduledoc """
  This enables your application to send money to a PesaLink participating bank.
  It is restricted to Kenya.
  """

  import ExPesa.Jenga.JengaBase
  alias ExPesa.Jenga.Signature

  @doc """
  Send Money to other banks via Pesalink.
    - Resitricted to Kenya.
    - Recieving bank has to be a participant of Pesalink.

      Read more about Pesalink participating banks here: https://ipsl.co.ke/participating-banks/

  ## Parameters

  attrs: - a map containing:
    - `source` - a map containing; `countryCode`, `name` and `accountNumber`
    - `destination` - a map containing; `type`, `countryCode`, `name`, `mobileNumber`, `bankCode` and `accountNumber`
    - `transfer` - a map containing; `type`, `amount`, `currencyCode`, `reference`, `date` and `description`

  Read More about the parameters' descriptions here: https://developer.jengaapi.io/reference#pesalink2bank
  ## Example
      iex> ExPesa.Jenga.SendMoneyQueries.AccountInquiryPesalinkBanks.request(%{ mobileNumber: "0722000000"})
      {:ok,
        %{
          "transactionId" => "1452854",
          "status" => "SUCCESS",
          "description" => "Confirmed. Ksh 1000 Sent to 01100762802910 -Tom Doe from your account 1460163242696 on 20-05-2019 at 141313 Ref. 707700078800 Thank you"
        }}
  """
  @spec request(map()) :: {:error, any()} | {:ok, any()}
  def request(
        %{
          mobileNumber: _t,
        } = requestBody
      ) do


    make_request("/transaction/v2/pesalink/inquire", requestBody)
  end

  def request(_) do
    {:error, "Required Parameters missing, check your request body"}
  end
end
