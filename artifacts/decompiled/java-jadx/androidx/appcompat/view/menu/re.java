package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.re;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class re implements xd, ee {
    public static final el0 i = new el0() { // from class: androidx.appcompat.view.menu.oe
        @Override // androidx.appcompat.view.menu.el0
        public final Object get() {
            return Collections.emptySet();
        }
    };
    public final Map a;
    public final Map b;
    public final Map c;
    public final List d;
    public Set e;
    public final yo f;
    public final AtomicReference g;
    public final ie h;

    public static final class b {
        public final Executor a;
        public final List b = new ArrayList();
        public final List c = new ArrayList();
        public ie d = ie.a;

        public b(Executor executor) {
            this.a = executor;
        }

        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(ud udVar) {
            this.c.add(udVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.b.add(new el0() { // from class: androidx.appcompat.view.menu.se
                @Override // androidx.appcompat.view.menu.el0
                public final Object get() {
                    ComponentRegistrar f;
                    f = re.b.f(ComponentRegistrar.this);
                    return f;
                }
            });
            return this;
        }

        public b d(Collection collection) {
            this.b.addAll(collection);
            return this;
        }

        public re e() {
            return new re(this.a, this.b, this.c, this.d);
        }

        public b g(ie ieVar) {
            this.d = ieVar;
            return this;
        }
    }

    public static b k(Executor executor) {
        return new b(executor);
    }

    public static List o(Iterable iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @Override // androidx.appcompat.view.menu.xd
    public synchronized el0 b(ul0 ul0Var) {
        oj0.c(ul0Var, "Null interface requested.");
        return (el0) this.b.get(ul0Var);
    }

    @Override // androidx.appcompat.view.menu.xd
    public synchronized el0 g(ul0 ul0Var) {
        o80 o80Var = (o80) this.c.get(ul0Var);
        if (o80Var != null) {
            return o80Var;
        }
        return i;
    }

    public final void l(List list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((el0) it.next()).get();
                    if (componentRegistrar != null) {
                        list.addAll(this.h.a(componentRegistrar));
                        it.remove();
                    }
                } catch (f60 unused) {
                    it.remove();
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Object[] array = ((ud) it2.next()).j().toArray();
                int length = array.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        Object obj = array[i2];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.e.contains(obj.toString())) {
                                it2.remove();
                                break;
                            }
                            this.e.add(obj.toString());
                        }
                        i2++;
                    }
                }
            }
            if (this.a.isEmpty()) {
                ni.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.a.keySet());
                arrayList2.addAll(list);
                ni.a(arrayList2);
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                final ud udVar = (ud) it3.next();
                this.a.put(udVar, new j80(new el0() { // from class: androidx.appcompat.view.menu.ne
                    @Override // androidx.appcompat.view.menu.el0
                    public final Object get() {
                        Object p;
                        p = re.this.p(udVar);
                        return p;
                    }
                }));
            }
            arrayList.addAll(u(list));
            arrayList.addAll(v());
            t();
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            ((Runnable) it4.next()).run();
        }
        s();
    }

    public final void m(Map map, boolean z) {
        for (Map.Entry entry : map.entrySet()) {
            ud udVar = (ud) entry.getKey();
            el0 el0Var = (el0) entry.getValue();
            if (udVar.n() || (udVar.o() && z)) {
                el0Var.get();
            }
        }
        this.f.e();
    }

    public void n(boolean z) {
        HashMap hashMap;
        if (wd1.a(this.g, null, Boolean.valueOf(z))) {
            synchronized (this) {
                hashMap = new HashMap(this.a);
            }
            m(hashMap, z);
        }
    }

    public final /* synthetic */ Object p(ud udVar) {
        return udVar.h().a(new kp0(udVar, this));
    }

    public final void s() {
        Boolean bool = (Boolean) this.g.get();
        if (bool != null) {
            m(this.a, bool.booleanValue());
        }
    }

    public final void t() {
        for (ud udVar : this.a.keySet()) {
            for (il ilVar : udVar.g()) {
                if (ilVar.f() && !this.c.containsKey(ilVar.b())) {
                    this.c.put(ilVar.b(), o80.b(Collections.emptySet()));
                } else if (this.b.containsKey(ilVar.b())) {
                    continue;
                } else {
                    if (ilVar.e()) {
                        throw new qd0(String.format("Unsatisfied dependency for component %s: %s", udVar, ilVar.b()));
                    }
                    if (!ilVar.f()) {
                        this.b.put(ilVar.b(), ug0.c());
                    }
                }
            }
        }
    }

    public final List u(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ud udVar = (ud) it.next();
            if (udVar.p()) {
                final el0 el0Var = (el0) this.a.get(udVar);
                for (ul0 ul0Var : udVar.j()) {
                    if (this.b.containsKey(ul0Var)) {
                        final ug0 ug0Var = (ug0) ((el0) this.b.get(ul0Var));
                        arrayList.add(new Runnable() { // from class: androidx.appcompat.view.menu.pe
                            @Override // java.lang.Runnable
                            public final void run() {
                                ug0.this.f(el0Var);
                            }
                        });
                    } else {
                        this.b.put(ul0Var, el0Var);
                    }
                }
            }
        }
        return arrayList;
    }

    public final List v() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : this.a.entrySet()) {
            ud udVar = (ud) entry.getKey();
            if (!udVar.p()) {
                el0 el0Var = (el0) entry.getValue();
                for (ul0 ul0Var : udVar.j()) {
                    if (!hashMap.containsKey(ul0Var)) {
                        hashMap.put(ul0Var, new HashSet());
                    }
                    ((Set) hashMap.get(ul0Var)).add(el0Var);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (this.c.containsKey(entry2.getKey())) {
                final o80 o80Var = (o80) this.c.get(entry2.getKey());
                for (final el0 el0Var2 : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: androidx.appcompat.view.menu.qe
                        @Override // java.lang.Runnable
                        public final void run() {
                            o80.this.a(el0Var2);
                        }
                    });
                }
            } else {
                this.c.put((ul0) entry2.getKey(), o80.b((Collection) entry2.getValue()));
            }
        }
        return arrayList;
    }

    public re(Executor executor, Iterable iterable, Collection collection, ie ieVar) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.e = new HashSet();
        this.g = new AtomicReference();
        yo yoVar = new yo(executor);
        this.f = yoVar;
        this.h = ieVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(ud.s(yoVar, yo.class, by0.class, sl0.class));
        arrayList.add(ud.s(this, ee.class, new Class[0]));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            ud udVar = (ud) it.next();
            if (udVar != null) {
                arrayList.add(udVar);
            }
        }
        this.d = o(iterable);
        l(arrayList);
    }
}
