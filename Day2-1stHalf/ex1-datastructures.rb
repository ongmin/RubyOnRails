# Don't over think the answer... No regex matching here

#Answer:
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]






# Scribbles: Alternative Solution (not done)
# contacts.select { |contact| contact["Joe Smith"] }
# contact_data[0]
#
# ^.*(?=(\@))
