import { registerPlugin } from '@capacitor/core';

import type { screenZoomPlugin } from './definitions';

const screenZoom = registerPlugin<screenZoomPlugin>('screenZoom', {
  web: () => import('./web').then(m => new m.screenZoomWeb()),
});

export * from './definitions';
export { screenZoom };
