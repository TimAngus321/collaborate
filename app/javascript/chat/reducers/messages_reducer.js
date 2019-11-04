// import { FETCH_MESSAGES, MESSAGE_POSTED, CHANNEL_SELECTED } from '../actions';

// export default function(state = null, action) {
//   switch (action.type) {
//     case FETCH_MESSAGES: {
//       return action.payload.messages;
//     }
//     case MESSAGE_POSTED: {
//       const copiedState = state.slice(0);
//       copiedState.push(action.payload);
//       return copiedState;
//     }
//     case CHANNEL_SELECTED: {
//       return []; // Channel has changed. Clearing view.
//     }
//     default:
//       return state;
//   }
// }

export default function messagesReducer(state = null, action) {
  switch (action.type) {
    case 'FETCH_MESSAGES':
      return action.payload;
    case 'MESSAGE_POSTED':
      if (state.map(message => message.id).includes(action.payload.id)) {
        return state;
      } else {
        const copiedState = state.slice(0);
        copiedState.push(action.payload);
        return copiedState;
      }
    case 'CHANNEL_SELECTED':
      return []; // Channel has changed. Clearing view.
    default:
      return state;
  }
}
