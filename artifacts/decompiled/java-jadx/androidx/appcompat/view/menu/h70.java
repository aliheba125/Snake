package androidx.appcompat.view.menu;

import android.util.Base64;
import android.util.JsonWriter;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class h70 implements uf0, x41 {
    public h70 a = null;
    public boolean b = true;
    public final JsonWriter c;
    public final Map d;
    public final Map e;
    public final tf0 f;
    public final boolean g;

    public h70(Writer writer, Map map, Map map2, tf0 tf0Var, boolean z) {
        this.c = new JsonWriter(writer);
        this.d = map;
        this.e = map2;
        this.f = tf0Var;
        this.g = z;
    }

    @Override // androidx.appcompat.view.menu.uf0
    public uf0 a(ir irVar, int i) {
        return j(irVar.b(), i);
    }

    @Override // androidx.appcompat.view.menu.uf0
    public uf0 b(ir irVar, long j) {
        return k(irVar.b(), j);
    }

    @Override // androidx.appcompat.view.menu.uf0
    public uf0 e(ir irVar, Object obj) {
        return l(irVar.b(), obj);
    }

    public h70 f(int i) {
        t();
        this.c.value(i);
        return this;
    }

    public h70 g(long j) {
        t();
        this.c.value(j);
        return this;
    }

    public h70 h(Object obj, boolean z) {
        int i = 0;
        if (z && o(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new no(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    h(it.next(), false);
                }
                this.c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        l((String) key, entry.getValue());
                    } catch (ClassCastException e) {
                        throw new no(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                this.c.endObject();
                return this;
            }
            tf0 tf0Var = (tf0) this.d.get(obj.getClass());
            if (tf0Var != null) {
                return q(tf0Var, obj, z);
            }
            w41 w41Var = (w41) this.e.get(obj.getClass());
            if (w41Var != null) {
                w41Var.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return q(this.f, obj, z);
            }
            c(((Enum) obj).name());
            return this;
        }
        if (obj instanceof byte[]) {
            return n((byte[]) obj);
        }
        this.c.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i < length) {
                this.c.value(r6[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                g(jArr[i]);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                this.c.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                this.c.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                h(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                h(obj2, false);
            }
        }
        this.c.endArray();
        return this;
    }

    @Override // androidx.appcompat.view.menu.x41
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public h70 c(String str) {
        t();
        this.c.value(str);
        return this;
    }

    public h70 j(String str, int i) {
        t();
        this.c.name(str);
        return f(i);
    }

    public h70 k(String str, long j) {
        t();
        this.c.name(str);
        return g(j);
    }

    public h70 l(String str, Object obj) {
        return this.g ? s(str, obj) : r(str, obj);
    }

    @Override // androidx.appcompat.view.menu.x41
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public h70 d(boolean z) {
        t();
        this.c.value(z);
        return this;
    }

    public h70 n(byte[] bArr) {
        t();
        if (bArr == null) {
            this.c.nullValue();
        } else {
            this.c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    public final boolean o(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    public void p() {
        t();
        this.c.flush();
    }

    public h70 q(tf0 tf0Var, Object obj, boolean z) {
        if (!z) {
            this.c.beginObject();
        }
        tf0Var.a(obj, this);
        if (!z) {
            this.c.endObject();
        }
        return this;
    }

    public final h70 r(String str, Object obj) {
        t();
        this.c.name(str);
        if (obj != null) {
            return h(obj, false);
        }
        this.c.nullValue();
        return this;
    }

    public final h70 s(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        t();
        this.c.name(str);
        return h(obj, false);
    }

    public final void t() {
        if (!this.b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        h70 h70Var = this.a;
        if (h70Var != null) {
            h70Var.t();
            this.a.b = false;
            this.a = null;
            this.c.endObject();
        }
    }
}
