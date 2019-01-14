import { combineReducers } from 'redux'

import auth from './auth'
import developer from './developer'
import app from './app'

const reducer = combineReducers({
  auth, developer, app,
})

export default reducer
