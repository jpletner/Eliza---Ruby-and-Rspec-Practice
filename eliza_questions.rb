require_relative 'response'

Response.add_response 'dog', 'Do you like animals?', 'What about other animals?'
Response.add_response 'mom', 'Tell me more about your mother.', 'Tell me more about your family.'
Response.add_response 'hurt', 'How has your health been?'

Response.add_dummies 'Tell me more.', "That's interesting.", 'Go on.'
