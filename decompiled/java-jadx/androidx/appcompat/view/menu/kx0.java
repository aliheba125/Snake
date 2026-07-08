package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;

/* loaded from: classes.dex */
public class kx0 {
    public final Resources a;
    public final String b;

    public kx0(Context context) {
        mj0.i(context);
        Resources resources = context.getResources();
        this.a = resources;
        this.b = resources.getResourcePackageName(zm0.a);
    }

    public String a(String str) {
        int identifier = this.a.getIdentifier(str, "string", this.b);
        if (identifier == 0) {
            return null;
        }
        return this.a.getString(identifier);
    }
}
