import React from 'react';

const ChatMessage = ({ handle, message, icon }) => {
  return(
    <p>
      <strong> {handle}: </strong>
      {message}
    </p>
  );
};

export default ChatMessage;
