package androidx.appcompat.view.menu;

import android.net.Uri;
import android.os.RemoteException;
import android.os.storage.StorageVolume;

/* loaded from: classes.dex */
public class rv0 extends kv0 {
    public static final rv0 d = new rv0(n00.class);

    public rv0(Class cls) {
        super(cls);
    }

    public static rv0 f() {
        return d;
    }

    @Override // androidx.appcompat.view.menu.kv0
    public String d() {
        return "storage_manager";
    }

    public Uri g(String str) {
        try {
            return ((n00) c()).x0(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public StorageVolume[] h(int i, String str, int i2, int i3) {
        try {
            return ((n00) c()).D0(i, str, i2, i3);
        } catch (RemoteException e) {
            e.printStackTrace();
            return new StorageVolume[0];
        }
    }
}
