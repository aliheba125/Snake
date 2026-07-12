package androidx.appcompat.view.menu;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class pa0 {
    public final LinkedHashMap a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    public pa0(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.a = new LinkedHashMap(0, 0.75f, true);
    }

    public Object a(Object obj) {
        return null;
    }

    public void b(boolean z, Object obj, Object obj2, Object obj3) {
    }

    public final Object c(Object obj) {
        Object put;
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                Object obj2 = this.a.get(obj);
                if (obj2 != null) {
                    this.g++;
                    return obj2;
                }
                this.h++;
                Object a = a(obj);
                if (a == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.e++;
                        put = this.a.put(obj, a);
                        if (put != null) {
                            this.a.put(obj, put);
                        } else {
                            this.b += f(obj, a);
                        }
                    } finally {
                    }
                }
                if (put != null) {
                    b(false, obj, a, put);
                    return put;
                }
                i(this.c);
                return a;
            } finally {
            }
        }
    }

    public final Object d(Object obj, Object obj2) {
        Object put;
        if (obj == null || obj2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.d++;
                this.b += f(obj, obj2);
                put = this.a.put(obj, obj2);
                if (put != null) {
                    this.b -= f(obj, put);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (put != null) {
            b(false, obj, put, obj2);
        }
        i(this.c);
        return put;
    }

    public final Object e(Object obj) {
        Object remove;
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                remove = this.a.remove(obj);
                if (remove != null) {
                    this.b -= f(obj, remove);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (remove != null) {
            b(false, obj, remove, null);
        }
        return remove;
    }

    public final int f(Object obj, Object obj2) {
        int g = g(obj, obj2);
        if (g >= 0) {
            return g;
        }
        throw new IllegalStateException("Negative size: " + obj + "=" + obj2);
    }

    public int g(Object obj, Object obj2) {
        return 1;
    }

    public final synchronized Map h() {
        return new LinkedHashMap(this.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0073, code lost:
    
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void i(int i) {
        Object key;
        Object value;
        while (true) {
            synchronized (this) {
                try {
                    if (this.b < 0 || (this.a.isEmpty() && this.b != 0)) {
                        break;
                    }
                    if (this.b <= i || this.a.isEmpty()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) this.a.entrySet().iterator().next();
                    key = entry.getKey();
                    value = entry.getValue();
                    this.a.remove(key);
                    this.b -= f(key, value);
                    this.f++;
                } finally {
                }
            }
            b(true, key, value, null);
        }
    }

    public final synchronized String toString() {
        int i;
        int i2;
        try {
            i = this.g;
            i2 = this.h + i;
        } catch (Throwable th) {
            throw th;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
