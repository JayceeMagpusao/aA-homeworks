import {
  RECEIVE_ALL_POSTS,
  RECEIVE_POST,
  REMOVE_POST,
} from '../actions/post_actions';
import merge from 'lodash/merge';

/*
Export a `PostsReducer` that takes in the old state and appropriately handles
all post actions.
*/

const PostsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let nextState = Object.assign({}, oldState);

  switch (action.type) {
    case RECEIVE_ALL_POSTS:
      return action.posts;
      // return Object.assign(nextState, action.posts) try this syntax
    case RECEIVE_POST:
      nextState[action.posts.id] = action.post
      return nextState;
      // return Object.assign(nextState, ([action.posts.id]: action.post)) try this syntax
    case REMOVE_POST:
      delete nextState[action.postId]
      return nextState; 
    default:
      return oldState;
  }
}
export default PostsReducer;