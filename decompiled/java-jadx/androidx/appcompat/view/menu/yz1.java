package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class yz1 {
    public final Context a;
    public String b;
    public String c;
    public String d;
    public Boolean e;
    public long f;
    public jn1 g;
    public boolean h;
    public Long i;
    public String j;

    public yz1(Context context, jn1 jn1Var, Long l) {
        this.h = true;
        mj0.i(context);
        Context applicationContext = context.getApplicationContext();
        mj0.i(applicationContext);
        this.a = applicationContext;
        this.i = l;
        if (jn1Var != null) {
            this.g = jn1Var;
            this.b = jn1Var.r;
            this.c = jn1Var.q;
            this.d = jn1Var.p;
            this.h = jn1Var.o;
            this.f = jn1Var.n;
            this.j = jn1Var.t;
            Bundle bundle = jn1Var.s;
            if (bundle != null) {
                this.e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
