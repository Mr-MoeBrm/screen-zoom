// index.ts

import { registerPlugin } from '@capacitor/core';

import type { ScreenZoomPlugin } from './definitions';

const ScreenZoom = registerPlugin<ScreenZoomPlugin>('ScreenZoom', {
  web: () => import('./web').then(m => new m.ScreenZoomWeb()),
});

export * from './definitions';
export { ScreenZoom };
