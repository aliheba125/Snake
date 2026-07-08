package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.xk0;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class zk0 implements uf0 {
    public static final Charset f = Charset.forName("UTF-8");
    public static final ir g = ir.a("key").b(b5.b().c(1).a()).a();
    public static final ir h = ir.a("value").b(b5.b().c(2).a()).a();
    public static final tf0 i = new tf0() { // from class: androidx.appcompat.view.menu.yk0
        @Override // androidx.appcompat.view.menu.tf0
        public final void a(Object obj, Object obj2) {
            zk0.t((Map.Entry) obj, (uf0) obj2);
        }
    };
    public OutputStream a;
    public final Map b;
    public final Map c;
    public final tf0 d;
    public final cl0 e = new cl0(this);

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xk0.a.values().length];
            a = iArr;
            try {
                iArr[xk0.a.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[xk0.a.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[xk0.a.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public zk0(OutputStream outputStream, Map map, Map map2, tf0 tf0Var) {
        this.a = outputStream;
        this.b = map;
        this.c = map2;
        this.d = tf0Var;
    }

    public static ByteBuffer m(int i2) {
        return ByteBuffer.allocate(i2).order(ByteOrder.LITTLE_ENDIAN);
    }

    public static xk0 r(ir irVar) {
        xk0 xk0Var = (xk0) irVar.c(xk0.class);
        if (xk0Var != null) {
            return xk0Var;
        }
        throw new no("Field has no @Protobuf config");
    }

    public static int s(ir irVar) {
        xk0 xk0Var = (xk0) irVar.c(xk0.class);
        if (xk0Var != null) {
            return xk0Var.tag();
        }
        throw new no("Field has no @Protobuf config");
    }

    public static /* synthetic */ void t(Map.Entry entry, uf0 uf0Var) {
        uf0Var.e(g, entry.getKey());
        uf0Var.e(h, entry.getValue());
    }

    public uf0 d(ir irVar, double d, boolean z) {
        if (z && d == 0.0d) {
            return this;
        }
        u((s(irVar) << 3) | 1);
        this.a.write(m(8).putDouble(d).array());
        return this;
    }

    @Override // androidx.appcompat.view.menu.uf0
    public uf0 e(ir irVar, Object obj) {
        return g(irVar, obj, true);
    }

    public uf0 f(ir irVar, float f2, boolean z) {
        if (z && f2 == 0.0f) {
            return this;
        }
        u((s(irVar) << 3) | 5);
        this.a.write(m(4).putFloat(f2).array());
        return this;
    }

    public uf0 g(ir irVar, Object obj, boolean z) {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            u((s(irVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            u(bytes.length);
            this.a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                g(irVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                o(i, irVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return d(irVar, ((Double) obj).doubleValue(), z);
        }
        if (obj instanceof Float) {
            return f(irVar, ((Float) obj).floatValue(), z);
        }
        if (obj instanceof Number) {
            return k(irVar, ((Number) obj).longValue(), z);
        }
        if (obj instanceof Boolean) {
            return l(irVar, ((Boolean) obj).booleanValue(), z);
        }
        if (!(obj instanceof byte[])) {
            tf0 tf0Var = (tf0) this.b.get(obj.getClass());
            if (tf0Var != null) {
                return o(tf0Var, irVar, obj, z);
            }
            w41 w41Var = (w41) this.c.get(obj.getClass());
            return w41Var != null ? p(w41Var, irVar, obj, z) : obj instanceof wk0 ? a(irVar, ((wk0) obj).c()) : obj instanceof Enum ? a(irVar, ((Enum) obj).ordinal()) : o(this.d, irVar, obj, z);
        }
        byte[] bArr = (byte[]) obj;
        if (z && bArr.length == 0) {
            return this;
        }
        u((s(irVar) << 3) | 2);
        u(bArr.length);
        this.a.write(bArr);
        return this;
    }

    @Override // androidx.appcompat.view.menu.uf0
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public zk0 a(ir irVar, int i2) {
        return i(irVar, i2, true);
    }

    public zk0 i(ir irVar, int i2, boolean z) {
        if (z && i2 == 0) {
            return this;
        }
        xk0 r = r(irVar);
        int i3 = a.a[r.intEncoding().ordinal()];
        if (i3 == 1) {
            u(r.tag() << 3);
            u(i2);
        } else if (i3 == 2) {
            u(r.tag() << 3);
            u((i2 << 1) ^ (i2 >> 31));
        } else if (i3 == 3) {
            u((r.tag() << 3) | 5);
            this.a.write(m(4).putInt(i2).array());
        }
        return this;
    }

    @Override // androidx.appcompat.view.menu.uf0
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public zk0 b(ir irVar, long j) {
        return k(irVar, j, true);
    }

    public zk0 k(ir irVar, long j, boolean z) {
        if (z && j == 0) {
            return this;
        }
        xk0 r = r(irVar);
        int i2 = a.a[r.intEncoding().ordinal()];
        if (i2 == 1) {
            u(r.tag() << 3);
            v(j);
        } else if (i2 == 2) {
            u(r.tag() << 3);
            v((j >> 63) ^ (j << 1));
        } else if (i2 == 3) {
            u((r.tag() << 3) | 1);
            this.a.write(m(8).putLong(j).array());
        }
        return this;
    }

    public zk0 l(ir irVar, boolean z, boolean z2) {
        return i(irVar, z ? 1 : 0, z2);
    }

    public final long n(tf0 tf0Var, Object obj) {
        r80 r80Var = new r80();
        try {
            OutputStream outputStream = this.a;
            this.a = r80Var;
            try {
                tf0Var.a(obj, this);
                this.a = outputStream;
                long a2 = r80Var.a();
                r80Var.close();
                return a2;
            } catch (Throwable th) {
                this.a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                r80Var.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final zk0 o(tf0 tf0Var, ir irVar, Object obj, boolean z) {
        long n = n(tf0Var, obj);
        if (z && n == 0) {
            return this;
        }
        u((s(irVar) << 3) | 2);
        v(n);
        tf0Var.a(obj, this);
        return this;
    }

    public final zk0 p(w41 w41Var, ir irVar, Object obj, boolean z) {
        this.e.b(irVar, z);
        w41Var.a(obj, this.e);
        return this;
    }

    public zk0 q(Object obj) {
        if (obj == null) {
            return this;
        }
        tf0 tf0Var = (tf0) this.b.get(obj.getClass());
        if (tf0Var != null) {
            tf0Var.a(obj, this);
            return this;
        }
        throw new no("No encoder for " + obj.getClass());
    }

    public final void u(int i2) {
        while ((i2 & (-128)) != 0) {
            this.a.write((i2 & 127) | PackageParser.PARSE_IS_PRIVILEGED);
            i2 >>>= 7;
        }
        this.a.write(i2 & 127);
    }

    public final void v(long j) {
        while (((-128) & j) != 0) {
            this.a.write((((int) j) & 127) | PackageParser.PARSE_IS_PRIVILEGED);
            j >>>= 7;
        }
        this.a.write(((int) j) & 127);
    }
}
