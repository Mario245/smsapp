json.array!(@smsmsgs) do |smsmsg|
  json.extract! smsmsg, :id, :phone_no_to, :phone_no_from, :body
  json.url smsmsg_url(smsmsg, format: :json)
end
