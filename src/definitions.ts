export interface screenZoomPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
