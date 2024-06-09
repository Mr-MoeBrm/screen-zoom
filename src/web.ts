import { WebPlugin } from '@capacitor/core';

import type { screenZoomPlugin } from './definitions';

export class screenZoomWeb extends WebPlugin implements screenZoomPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
