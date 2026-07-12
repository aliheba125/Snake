package androidx.lifecycle;

import android.content.Context;
import androidx.appcompat.view.menu.a90;
import androidx.appcompat.view.menu.q3;
import androidx.appcompat.view.menu.sc;
import androidx.appcompat.view.menu.w40;
import androidx.appcompat.view.menu.z50;
import androidx.lifecycle.l;
import java.util.List;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements w40 {
    @Override // androidx.appcompat.view.menu.w40
    public List a() {
        return sc.e();
    }

    @Override // androidx.appcompat.view.menu.w40
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a90 b(Context context) {
        z50.e(context, "context");
        q3 e = q3.e(context);
        z50.d(e, "getInstance(context)");
        if (!e.g(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml".toString());
        }
        g.a(context);
        l.b bVar = l.i;
        bVar.b(context);
        return bVar.a();
    }
}
