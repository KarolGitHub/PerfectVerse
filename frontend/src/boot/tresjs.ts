import { boot } from 'quasar/wrappers';
import TresJSVuePlugin from '@tresjs/core';

export default boot(({ app }) => {
  app.use(TresJSVuePlugin);
});
