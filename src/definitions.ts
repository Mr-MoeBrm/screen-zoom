// definitions.ts

export interface ScreenZoomPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  setScreenZoom(): Promise<void>;
}
