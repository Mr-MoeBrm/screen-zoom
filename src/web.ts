import { WebPlugin } from '@capacitor/core';

import type { ScreenZoomPlugin } from './definitions';

export class ScreenZoomWeb extends WebPlugin implements ScreenZoomPlugin {
    async echo(options: { value: string }): Promise<{ value: string }> {
        console.log('ECHO', options);
        return options;
    }

    async setScreenZoom(): Promise<void> {
        // Placeholder implementation for web
        console.log('Setting screen zoom is not supported on web platforms');
    }
}
