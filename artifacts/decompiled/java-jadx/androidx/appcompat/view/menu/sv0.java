package androidx.appcompat.view.menu;

import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class sv0 {
    public static final AtomicBoolean b = new AtomicBoolean(false);
    public final List a = new ArrayList();

    public static final class a {
        public static final sv0 a = new sv0();
    }

    public static sv0 a() {
        return a.a;
    }

    public void b() {
        if (b.getAndSet(true)) {
            return;
        }
        lv0.x();
        this.a.add(x6.w2());
        this.a.add(f7.k());
        this.a.add(ev0.h());
        this.a.add(o6.k());
        this.a.add(b7.h());
        this.a.add(w6.h());
        this.a.add(a7.e());
        this.a.add(bv0.I2());
        this.a.add(t6.w2());
        this.a.add(pv0.k());
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((i30) it.next()).j();
        }
        for (String str : y3.a()) {
            try {
                if (!x6.w2().F1(str, -1)) {
                    x6.w2().U0(yu0.r().getPackageInfo(str, 0).applicationInfo.sourceDir, j50.a(), -1);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
    }
}
