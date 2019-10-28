json.attributes do
  json.extract! @user, :id, :name, :account_ids
end