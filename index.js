import React from 'react';
import ReactDOM from 'react-dom';
import registerServiceWorker from './js/registerServiceWorker';
import { createStore, applyMiddleware } from 'redux';
import ReduxPromise from 'redux-promise';
import { Provider } from 'react-redux';

import './index.css'
import reducers from './js/reducers';
import Root from './js/components/root';

const createStoreWithMiddleware = applyMiddleware(ReduxPromise)(createStore);

ReactDOM.render(
  <Provider store={createStoreWithMiddleware(reducers)}>
  <Root />
  </Provider>,
  document.getElementById('root')
);
registerServiceWorker();
