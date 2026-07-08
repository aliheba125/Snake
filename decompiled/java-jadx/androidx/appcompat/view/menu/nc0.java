package androidx.appcompat.view.menu;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class nc0 {
    public final Runnable a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public final Map c = new HashMap();

    public nc0(Runnable runnable) {
        this.a = runnable;
    }

    public void a(Menu menu, MenuInflater menuInflater) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((vc0) it.next()).b(menu, menuInflater);
        }
    }

    public boolean b(MenuItem menuItem) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (((vc0) it.next()).a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void c(Menu menu) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((vc0) it.next()).c(menu);
        }
    }
}
