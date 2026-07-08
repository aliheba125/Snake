package androidx.appcompat.view.menu;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract class w72 {
    public static final Unsafe a;
    public static final Class b;
    public static final boolean c;
    public static final boolean d;
    public static final c e;
    public static final boolean f;
    public static final boolean g;
    public static final long h;
    public static final long i;
    public static final long j;
    public static final long k;
    public static final long l;
    public static final long m;
    public static final long n;
    public static final long o;
    public static final long p;
    public static final long q;
    public static final long r;
    public static final long s;
    public static final long t;
    public static final long u;
    public static final int v;
    public static final boolean w;

    public static final class a extends c {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final double a(Object obj, long j) {
            return Double.longBitsToDouble(m(obj, j));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void b(Object obj, long j, byte b) {
            if (w72.w) {
                w72.u(obj, j, b);
            } else {
                w72.y(obj, j, b);
            }
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void g(Object obj, long j, boolean z) {
            if (w72.w) {
                w72.k(obj, j, z);
            } else {
                w72.r(obj, j, z);
            }
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final float i(Object obj, long j) {
            return Float.intBitsToFloat(l(obj, j));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final boolean k(Object obj, long j) {
            return w72.w ? w72.D(obj, j) : w72.E(obj, j);
        }
    }

    public static final class b extends c {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final double a(Object obj, long j) {
            return Double.longBitsToDouble(m(obj, j));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void b(Object obj, long j, byte b) {
            if (w72.w) {
                w72.u(obj, j, b);
            } else {
                w72.y(obj, j, b);
            }
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void c(Object obj, long j, double d) {
            f(obj, j, Double.doubleToLongBits(d));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void d(Object obj, long j, float f) {
            e(obj, j, Float.floatToIntBits(f));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final void g(Object obj, long j, boolean z) {
            if (w72.w) {
                w72.k(obj, j, z);
            } else {
                w72.r(obj, j, z);
            }
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final float i(Object obj, long j) {
            return Float.intBitsToFloat(l(obj, j));
        }

        @Override // androidx.appcompat.view.menu.w72.c
        public final boolean k(Object obj, long j) {
            return w72.w ? w72.D(obj, j) : w72.E(obj, j);
        }
    }

    public static abstract class c {
        public Unsafe a;

        public c(Unsafe unsafe) {
            this.a = unsafe;
        }

        public abstract double a(Object obj, long j);

        public abstract void b(Object obj, long j, byte b);

        public abstract void c(Object obj, long j, double d);

        public abstract void d(Object obj, long j, float f);

        public final void e(Object obj, long j, int i) {
            this.a.putInt(obj, j, i);
        }

        public final void f(Object obj, long j, long j2) {
            this.a.putLong(obj, j, j2);
        }

        public abstract void g(Object obj, long j, boolean z);

        public final boolean h() {
            Unsafe unsafe = this.a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                w72.l(th);
                return false;
            }
        }

        public abstract float i(Object obj, long j);

        public final boolean j() {
            Unsafe unsafe = this.a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return w72.C() != null;
            } catch (Throwable th) {
                w72.l(th);
                return false;
            }
        }

        public abstract boolean k(Object obj, long j);

        public final int l(Object obj, long j) {
            return this.a.getInt(obj, j);
        }

        public final long m(Object obj, long j) {
            return this.a.getLong(obj, j);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0034  */
    static {
        c cVar;
        Unsafe p2 = p();
        a = p2;
        b = lx1.a();
        boolean A = A(Long.TYPE);
        c = A;
        boolean A2 = A(Integer.TYPE);
        d = A2;
        if (p2 != null) {
            if (A) {
                cVar = new a(p2);
            } else if (A2) {
                cVar = new b(p2);
            }
            e = cVar;
            f = cVar != null ? false : cVar.j();
            g = cVar != null ? false : cVar.h();
            long o2 = o(byte[].class);
            h = o2;
            i = o(boolean[].class);
            j = s(boolean[].class);
            k = o(int[].class);
            l = s(int[].class);
            m = o(long[].class);
            n = s(long[].class);
            o = o(float[].class);
            p = s(float[].class);
            q = o(double[].class);
            r = s(double[].class);
            s = o(Object[].class);
            t = s(Object[].class);
            Field C = C();
            u = (C != null || cVar == null) ? -1L : cVar.a.objectFieldOffset(C);
            v = (int) (o2 & 7);
            w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
        }
        cVar = null;
        e = cVar;
        f = cVar != null ? false : cVar.j();
        g = cVar != null ? false : cVar.h();
        long o22 = o(byte[].class);
        h = o22;
        i = o(boolean[].class);
        j = s(boolean[].class);
        k = o(int[].class);
        l = s(int[].class);
        m = o(long[].class);
        n = s(long[].class);
        o = o(float[].class);
        p = s(float[].class);
        q = o(double[].class);
        r = s(double[].class);
        s = o(Object[].class);
        t = s(Object[].class);
        Field C2 = C();
        u = (C2 != null || cVar == null) ? -1L : cVar.a.objectFieldOffset(C2);
        v = (int) (o22 & 7);
        w = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean A(Class cls) {
        try {
            Class cls2 = b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object B(Object obj, long j2) {
        return e.a.getObject(obj, j2);
    }

    public static Field C() {
        Field d2 = d(Buffer.class, "effectiveDirectAddress");
        if (d2 != null) {
            return d2;
        }
        Field d3 = d(Buffer.class, "address");
        if (d3 == null || d3.getType() != Long.TYPE) {
            return null;
        }
        return d3;
    }

    public static /* synthetic */ boolean D(Object obj, long j2) {
        return ((byte) (t(obj, (-4) & j2) >>> ((int) (((~j2) & 3) << 3)))) != 0;
    }

    public static /* synthetic */ boolean E(Object obj, long j2) {
        return ((byte) (t(obj, (-4) & j2) >>> ((int) ((j2 & 3) << 3)))) != 0;
    }

    public static boolean F(Object obj, long j2) {
        return e.k(obj, j2);
    }

    public static double a(Object obj, long j2) {
        return e.a(obj, j2);
    }

    public static Object b(Class cls) {
        try {
            return a.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static Field d(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void f(Object obj, long j2, double d2) {
        e.c(obj, j2, d2);
    }

    public static void g(Object obj, long j2, float f2) {
        e.d(obj, j2, f2);
    }

    public static void h(Object obj, long j2, int i2) {
        e.e(obj, j2, i2);
    }

    public static void i(Object obj, long j2, long j3) {
        e.f(obj, j2, j3);
    }

    public static void j(Object obj, long j2, Object obj2) {
        e.a.putObject(obj, j2, obj2);
    }

    public static /* synthetic */ void k(Object obj, long j2, boolean z) {
        u(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    public static /* synthetic */ void l(Throwable th) {
        Logger.getLogger(w72.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: " + String.valueOf(th));
    }

    public static void m(byte[] bArr, long j2, byte b2) {
        e.b(bArr, h + j2, b2);
    }

    public static float n(Object obj, long j2) {
        return e.i(obj, j2);
    }

    public static int o(Class cls) {
        if (g) {
            return e.a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static Unsafe p() {
        try {
            return (Unsafe) AccessController.doPrivileged(new v72());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ void r(Object obj, long j2, boolean z) {
        y(obj, j2, z ? (byte) 1 : (byte) 0);
    }

    public static int s(Class cls) {
        if (g) {
            return e.a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static int t(Object obj, long j2) {
        return e.l(obj, j2);
    }

    public static void u(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int t2 = t(obj, j3);
        int i2 = ((~((int) j2)) & 3) << 3;
        h(obj, j3, ((255 & b2) << i2) | (t2 & (~(255 << i2))));
    }

    public static void v(Object obj, long j2, boolean z) {
        e.g(obj, j2, z);
    }

    public static boolean w() {
        return g;
    }

    public static long x(Object obj, long j2) {
        return e.m(obj, j2);
    }

    public static void y(Object obj, long j2, byte b2) {
        long j3 = (-4) & j2;
        int i2 = (((int) j2) & 3) << 3;
        h(obj, j3, ((255 & b2) << i2) | (t(obj, j3) & (~(255 << i2))));
    }

    public static boolean z() {
        return f;
    }
}
