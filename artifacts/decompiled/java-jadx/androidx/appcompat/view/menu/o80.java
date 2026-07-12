package androidx.appcompat.view.menu;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class o80 implements el0 {
    public volatile Set b = null;
    public volatile Set a = Collections.newSetFromMap(new ConcurrentHashMap());

    public o80(Collection collection) {
        this.a.addAll(collection);
    }

    public static o80 b(Collection collection) {
        return new o80((Set) collection);
    }

    public synchronized void a(el0 el0Var) {
        try {
            if (this.b == null) {
                this.a.add(el0Var);
            } else {
                this.b.add(el0Var.get());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.appcompat.view.menu.el0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set get() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                        d();
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableSet(this.b);
    }

    public final synchronized void d() {
        try {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                this.b.add(((el0) it.next()).get());
            }
            this.a = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
