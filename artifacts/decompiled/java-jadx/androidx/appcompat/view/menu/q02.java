package androidx.appcompat.view.menu;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class q02 extends ax1 {
    private static Map<Object, q02> zzc = new ConcurrentHashMap();
    private int zzd = -1;
    protected d72 zzb = d72.k();

    public static class a extends hx1 {
        public final q02 b;

        public a(q02 q02Var) {
            this.b = q02Var;
        }
    }

    public static abstract class b extends dx1 {
        public final q02 m;
        public q02 n;

        public b(q02 q02Var) {
            this.m = q02Var;
            if (q02Var.F()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.n = q02Var.y();
        }

        public static void h(Object obj, Object obj2) {
            v42.a().c(obj).d(obj, obj2);
        }

        @Override // androidx.appcompat.view.menu.dx1
        public /* synthetic */ Object clone() {
            b bVar = (b) this.m.q(c.e, null, null);
            bVar.n = (q02) k();
            return bVar;
        }

        @Override // androidx.appcompat.view.menu.dx1
        public final /* synthetic */ dx1 e(byte[] bArr, int i, int i2) {
            return p(bArr, 0, i2, qz1.c);
        }

        @Override // androidx.appcompat.view.menu.dx1
        public final /* synthetic */ dx1 f(byte[] bArr, int i, int i2, qz1 qz1Var) {
            return p(bArr, 0, i2, qz1Var);
        }

        public final b g(q02 q02Var) {
            if (this.m.equals(q02Var)) {
                return this;
            }
            if (!this.n.F()) {
                o();
            }
            h(this.n, q02Var);
            return this;
        }

        @Override // androidx.appcompat.view.menu.c42
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public q02 k() {
            if (!this.n.F()) {
                return this.n;
            }
            this.n.C();
            return this.n;
        }

        public final void n() {
            if (this.n.F()) {
                return;
            }
            o();
        }

        public void o() {
            q02 y = this.m.y();
            h(y, this.n);
            this.n = y;
        }

        public final b p(byte[] bArr, int i, int i2, qz1 qz1Var) {
            if (!this.n.F()) {
                o();
            }
            try {
                v42.a().c(this.n).i(this.n, bArr, 0, i2, new ox1(qz1Var));
                return this;
            } catch (s12 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw s12.f();
            }
        }

        /* renamed from: q, reason: merged with bridge method [inline-methods] */
        public final q02 j() {
            q02 q02Var = (q02) k();
            if (q02Var.E()) {
                return q02Var;
            }
            throw new z62(q02Var);
        }
    }

    public enum c {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        public static final int f = 6;
        public static final int g = 7;
        public static final /* synthetic */ int[] h = {1, 2, 3, 4, 5, 6, 7};

        public static int[] a() {
            return (int[]) h.clone();
        }
    }

    public static class d extends tz1 {
    }

    public static p12 A() {
        return u22.g();
    }

    public static n12 B() {
        return h52.h();
    }

    private final int j() {
        return v42.a().c(this).f(this);
    }

    public static q02 n(Class cls) {
        q02 q02Var = zzc.get(cls);
        if (q02Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                q02Var = zzc.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (q02Var == null) {
            q02Var = (q02) ((q02) w72.b(cls)).q(c.f, null, null);
            if (q02Var == null) {
                throw new IllegalStateException();
            }
            zzc.put(cls, q02Var);
        }
        return q02Var;
    }

    public static n12 o(n12 n12Var) {
        int size = n12Var.size();
        return n12Var.e(size == 0 ? 10 : size << 1);
    }

    public static p12 p(p12 p12Var) {
        int size = p12Var.size();
        return p12Var.e(size == 0 ? 10 : size << 1);
    }

    public static Object r(w32 w32Var, String str, Object[] objArr) {
        return new z42(w32Var, str, objArr);
    }

    public static Object s(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static void t(Class cls, q02 q02Var) {
        q02Var.D();
        zzc.put(cls, q02Var);
    }

    public static final boolean u(q02 q02Var, boolean z) {
        byte byteValue = ((Byte) q02Var.q(c.a, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean c2 = v42.a().c(q02Var).c(q02Var);
        if (z) {
            q02Var.q(c.b, c2 ? q02Var : null, null);
        }
        return c2;
    }

    public static j12 z() {
        return d12.g();
    }

    public final void C() {
        v42.a().c(this).e(this);
        D();
    }

    public final void D() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean E() {
        return u(this, true);
    }

    public final boolean F() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // androidx.appcompat.view.menu.w32
    public final int a() {
        return e(null);
    }

    @Override // androidx.appcompat.view.menu.a42
    public final /* synthetic */ w32 b() {
        return (q02) q(c.f, null, null);
    }

    @Override // androidx.appcompat.view.menu.w32
    public final void c(jz1 jz1Var) {
        v42.a().c(this).g(this, pz1.P(jz1Var));
    }

    @Override // androidx.appcompat.view.menu.w32
    public final /* synthetic */ c42 d() {
        return (b) q(c.e, null, null);
    }

    @Override // androidx.appcompat.view.menu.ax1
    public final int e(j52 j52Var) {
        if (!F()) {
            if (g() != Integer.MAX_VALUE) {
                return g();
            }
            int v = v(j52Var);
            i(v);
            return v;
        }
        int v2 = v(j52Var);
        if (v2 >= 0) {
            return v2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + v2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return v42.a().c(this).h(this, (q02) obj);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.ax1
    public final int g() {
        return this.zzd & Integer.MAX_VALUE;
    }

    public int hashCode() {
        if (F()) {
            return j();
        }
        if (this.zza == 0) {
            this.zza = j();
        }
        return this.zza;
    }

    @Override // androidx.appcompat.view.menu.ax1
    public final void i(int i) {
        if (i >= 0) {
            this.zzd = (i & Integer.MAX_VALUE) | (this.zzd & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
    }

    public abstract Object q(int i, Object obj, Object obj2);

    public String toString() {
        return g42.a(this, super.toString());
    }

    public final int v(j52 j52Var) {
        return j52Var == null ? v42.a().c(this).b(this) : j52Var.b(this);
    }

    public final b w() {
        return (b) q(c.e, null, null);
    }

    public final b x() {
        return ((b) q(c.e, null, null)).g(this);
    }

    public final q02 y() {
        return (q02) q(c.d, null, null);
    }
}
