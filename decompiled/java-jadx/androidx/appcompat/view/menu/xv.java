package androidx.appcompat.view.menu;

import android.view.ViewGroup;
import androidx.lifecycle.f;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class xv {
    public final ev a;
    public final ClassLoader b;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public String k;
    public int l;
    public CharSequence m;
    public int n;
    public CharSequence o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList s;
    public ArrayList c = new ArrayList();
    public boolean j = true;
    public boolean r = false;

    public static final class a {
        public int a;
        public av b;
        public boolean c;
        public int d;
        public int e;
        public int f;
        public int g;
        public f.b h;
        public f.b i;

        public a() {
        }

        public a(int i, av avVar) {
            this.a = i;
            this.b = avVar;
            this.c = false;
            f.b bVar = f.b.RESUMED;
            this.h = bVar;
            this.i = bVar;
        }

        public a(int i, av avVar, boolean z) {
            this.a = i;
            this.b = avVar;
            this.c = z;
            f.b bVar = f.b.RESUMED;
            this.h = bVar;
            this.i = bVar;
        }
    }

    public xv(ev evVar, ClassLoader classLoader) {
        this.a = evVar;
        this.b = classLoader;
    }

    public xv b(int i, av avVar, String str) {
        j(i, avVar, str, 1);
        return this;
    }

    public xv c(ViewGroup viewGroup, av avVar, String str) {
        avVar.G = viewGroup;
        return b(viewGroup.getId(), avVar, str);
    }

    public void d(a aVar) {
        this.c.add(aVar);
        aVar.d = this.d;
        aVar.e = this.e;
        aVar.f = this.f;
        aVar.g = this.g;
    }

    public abstract int e();

    public abstract int f();

    public abstract void g();

    public abstract void h();

    public xv i() {
        if (this.i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.j = false;
        return this;
    }

    public void j(int i, av avVar, String str, int i2) {
        String str2 = avVar.P;
        if (str2 != null) {
            wv.f(avVar, str2);
        }
        Class<?> cls = avVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = avVar.y;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + avVar + ": was " + avVar.y + " now " + str);
            }
            avVar.y = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + avVar + " with tag " + str + " to container view with no id");
            }
            int i3 = avVar.w;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + avVar + ": was " + avVar.w + " now " + i);
            }
            avVar.w = i;
            avVar.x = i;
        }
        d(new a(i2, avVar));
    }

    public xv k(av avVar) {
        d(new a(3, avVar));
        return this;
    }

    public xv l(int i, av avVar) {
        return m(i, avVar, null);
    }

    public xv m(int i, av avVar, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        j(i, avVar, str, 2);
        return this;
    }

    public xv n(boolean z) {
        this.r = z;
        return this;
    }
}
