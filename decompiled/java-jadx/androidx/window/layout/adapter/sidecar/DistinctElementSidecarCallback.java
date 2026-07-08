package androidx.window.layout.adapter.sidecar;

import android.os.IBinder;
import androidx.appcompat.view.menu.iu0;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class DistinctElementSidecarCallback implements SidecarInterface.SidecarCallback {
    public SidecarDeviceState b;
    public final iu0 d;
    public final SidecarInterface.SidecarCallback e;
    public final Object a = new Object();
    public final Map c = new WeakHashMap();

    public DistinctElementSidecarCallback(iu0 iu0Var, SidecarInterface.SidecarCallback sidecarCallback) {
        this.d = iu0Var;
        this.e = sidecarCallback;
    }

    public void onDeviceStateChanged(SidecarDeviceState sidecarDeviceState) {
        if (sidecarDeviceState == null) {
            return;
        }
        synchronized (this.a) {
            try {
                if (this.d.a(this.b, sidecarDeviceState)) {
                    return;
                }
                this.b = sidecarDeviceState;
                this.e.onDeviceStateChanged(sidecarDeviceState);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onWindowLayoutChanged(IBinder iBinder, SidecarWindowLayoutInfo sidecarWindowLayoutInfo) {
        synchronized (this.a) {
            try {
                if (this.d.d((SidecarWindowLayoutInfo) this.c.get(iBinder), sidecarWindowLayoutInfo)) {
                    return;
                }
                this.c.put(iBinder, sidecarWindowLayoutInfo);
                this.e.onWindowLayoutChanged(iBinder, sidecarWindowLayoutInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
