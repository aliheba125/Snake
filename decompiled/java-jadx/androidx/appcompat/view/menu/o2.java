package androidx.appcompat.view.menu;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class o2 extends Exception {
    public final Status m;

    public o2(Status status) {
        super(status.f() + ": " + (status.i() != null ? status.i() : ""));
        this.m = status;
    }

    public Status a() {
        return this.m;
    }
}
