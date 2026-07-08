package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class ad1 implements DialogInterface.OnClickListener {
    public static ad1 b(Activity activity, Intent intent, int i) {
        return new pc1(intent, activity, i);
    }

    public static ad1 c(y80 y80Var, Intent intent, int i) {
        return new zc1(intent, y80Var, 2);
    }

    public abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
        } catch (ActivityNotFoundException unused) {
            Build.FINGERPRINT.contains("generic");
        } finally {
            dialogInterface.dismiss();
        }
    }
}
