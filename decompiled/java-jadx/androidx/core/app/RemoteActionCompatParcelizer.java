package androidx.core.app;

import android.app.PendingIntent;
import androidx.appcompat.view.menu.h51;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(h51 h51Var) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = (IconCompat) h51Var.v(remoteActionCompat.a, 1);
        remoteActionCompat.b = h51Var.l(remoteActionCompat.b, 2);
        remoteActionCompat.c = h51Var.l(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) h51Var.r(remoteActionCompat.d, 4);
        remoteActionCompat.e = h51Var.h(remoteActionCompat.e, 5);
        remoteActionCompat.f = h51Var.h(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, h51 h51Var) {
        h51Var.x(false, false);
        h51Var.M(remoteActionCompat.a, 1);
        h51Var.D(remoteActionCompat.b, 2);
        h51Var.D(remoteActionCompat.c, 3);
        h51Var.H(remoteActionCompat.d, 4);
        h51Var.z(remoteActionCompat.e, 5);
        h51Var.z(remoteActionCompat.f, 6);
    }
}
