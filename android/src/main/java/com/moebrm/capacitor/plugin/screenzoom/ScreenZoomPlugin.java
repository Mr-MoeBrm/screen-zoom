package com.moebrm.capacitor.plugin.screenzoom;

import android.app.Activity;
import android.view.View;
import android.view.WindowManager;

import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

@CapacitorPlugin(name = "ScreenZoomPlugin")
public class ScreenZoomPlugin extends Plugin {

    @PluginMethod
    public void setScreenZoom(PluginCall call) {
        Activity activity = getActivity();
        if (activity != null) {
            WindowManager.LayoutParams params = activity.getWindow().getAttributes();
            params.x = 0;
            params.y = 0;
            params.width = WindowManager.LayoutParams.MATCH_PARENT;
            params.height = WindowManager.LayoutParams.MATCH_PARENT;
            activity.getWindow().setAttributes(params);
        }

        call.resolve();
    }
}
