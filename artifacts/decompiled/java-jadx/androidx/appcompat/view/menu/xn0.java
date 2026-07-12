package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.pr0;
import androidx.lifecycle.f;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class xn0 implements androidx.lifecycle.h {
    public static final a b = new a(null);
    public final rr0 a;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }
    }

    public xn0(rr0 rr0Var) {
        z50.e(rr0Var, "owner");
        this.a = rr0Var;
    }

    @Override // androidx.lifecycle.h
    public void c(a90 a90Var, f.a aVar) {
        z50.e(a90Var, "source");
        z50.e(aVar, "event");
        if (aVar != f.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        a90Var.h().c(this);
        Bundle b2 = this.a.l().b("androidx.savedstate.Restarter");
        if (b2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = b2.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            h(it.next());
        }
    }

    public final void h(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, xn0.class.getClassLoader()).asSubclass(pr0.a.class);
            z50.d(asSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    Object newInstance = declaredConstructor.newInstance(new Object[0]);
                    z50.d(newInstance, "{\n                constr…wInstance()\n            }");
                    jy0.a(newInstance);
                    throw null;
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }
}
