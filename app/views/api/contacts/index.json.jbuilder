json.array! @contacts.each do |contact|
  json.id contact.id
  json.name contact.name
  json.number contact.number
  json.email contact.email
end