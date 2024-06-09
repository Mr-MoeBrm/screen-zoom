package com.moebrm.capacitor.plugin.screenzoom;

import android.app.Activity;
import android.util.Log;
import android.view.WindowManager;

public class ScreenZoom {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }

    public void setScreenZoom(Activity activity) {
        if (activity != null) {
            WindowManager.LayoutParams params = activity.getWindow().getAttributes();
            params.width = WindowManager.LayoutParams.MATCH_PARENT;
            params.height = WindowManager.LayoutParams.MATCH_PARENT;
            activity.getWindow().setAttributes(params);
        }
    }
}
