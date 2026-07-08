package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class jx1 {
    public static double a(byte[] bArr, int i) {
        return Double.longBitsToDouble(q(bArr, i));
    }

    public static int b(int i, byte[] bArr, int i2, int i3, n12 n12Var, ox1 ox1Var) {
        d12 d12Var = (d12) n12Var;
        int o = o(bArr, i2, ox1Var);
        d12Var.h(ox1Var.a);
        while (o < i3) {
            int o2 = o(bArr, o, ox1Var);
            if (i != ox1Var.a) {
                break;
            }
            o = o(bArr, o2, ox1Var);
            d12Var.h(ox1Var.a);
        }
        return o;
    }

    public static int c(int i, byte[] bArr, int i2, int i3, d72 d72Var, ox1 ox1Var) {
        if ((i >>> 3) == 0) {
            throw s12.b();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int p = p(bArr, i2, ox1Var);
            d72Var.e(i, Long.valueOf(ox1Var.b));
            return p;
        }
        if (i4 == 1) {
            d72Var.e(i, Long.valueOf(q(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int o = o(bArr, i2, ox1Var);
            int i5 = ox1Var.a;
            if (i5 < 0) {
                throw s12.d();
            }
            if (i5 > bArr.length - o) {
                throw s12.f();
            }
            if (i5 == 0) {
                d72Var.e(i, qx1.n);
            } else {
                d72Var.e(i, qx1.n(bArr, o, i5));
            }
            return o + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw s12.b();
            }
            d72Var.e(i, Integer.valueOf(n(bArr, i2)));
            return i2 + 4;
        }
        d72 l = d72.l();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int o2 = o(bArr, i2, ox1Var);
            int i8 = ox1Var.a;
            i7 = i8;
            if (i8 == i6) {
                i2 = o2;
                break;
            }
            int c = c(i7, bArr, o2, i3, l, ox1Var);
            i7 = i8;
            i2 = c;
        }
        if (i2 > i3 || i7 != i6) {
            throw s12.e();
        }
        d72Var.e(i, l);
        return i2;
    }

    public static int d(int i, byte[] bArr, int i2, ox1 ox1Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            ox1Var.a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            ox1Var.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            ox1Var.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            ox1Var.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                ox1Var.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int e(j52 j52Var, int i, byte[] bArr, int i2, int i3, n12 n12Var, ox1 ox1Var) {
        int g = g(j52Var, bArr, i2, i3, ox1Var);
        n12Var.add(ox1Var.c);
        while (g < i3) {
            int o = o(bArr, g, ox1Var);
            if (i != ox1Var.a) {
                break;
            }
            g = g(j52Var, bArr, o, i3, ox1Var);
            n12Var.add(ox1Var.c);
        }
        return g;
    }

    public static int f(j52 j52Var, byte[] bArr, int i, int i2, int i3, ox1 ox1Var) {
        Object a = j52Var.a();
        int h = h(a, j52Var, bArr, i, i2, i3, ox1Var);
        j52Var.e(a);
        ox1Var.c = a;
        return h;
    }

    public static int g(j52 j52Var, byte[] bArr, int i, int i2, ox1 ox1Var) {
        Object a = j52Var.a();
        int i3 = i(a, j52Var, bArr, i, i2, ox1Var);
        j52Var.e(a);
        ox1Var.c = a;
        return i3;
    }

    public static int h(Object obj, j52 j52Var, byte[] bArr, int i, int i2, int i3, ox1 ox1Var) {
        int m = ((e42) j52Var).m(obj, bArr, i, i2, i3, ox1Var);
        ox1Var.c = obj;
        return m;
    }

    public static int i(Object obj, j52 j52Var, byte[] bArr, int i, int i2, ox1 ox1Var) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = d(i4, bArr, i3, ox1Var);
            i4 = ox1Var.a;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw s12.f();
        }
        int i6 = i4 + i5;
        j52Var.i(obj, bArr, i5, i6, ox1Var);
        ox1Var.c = obj;
        return i6;
    }

    public static int j(byte[] bArr, int i, ox1 ox1Var) {
        int o = o(bArr, i, ox1Var);
        int i2 = ox1Var.a;
        if (i2 < 0) {
            throw s12.d();
        }
        if (i2 > bArr.length - o) {
            throw s12.f();
        }
        if (i2 == 0) {
            ox1Var.c = qx1.n;
            return o;
        }
        ox1Var.c = qx1.n(bArr, o, i2);
        return o + i2;
    }

    public static int k(byte[] bArr, int i, n12 n12Var, ox1 ox1Var) {
        d12 d12Var = (d12) n12Var;
        int o = o(bArr, i, ox1Var);
        int i2 = ox1Var.a + o;
        while (o < i2) {
            o = o(bArr, o, ox1Var);
            d12Var.h(ox1Var.a);
        }
        if (o == i2) {
            return o;
        }
        throw s12.f();
    }

    public static float l(byte[] bArr, int i) {
        return Float.intBitsToFloat(n(bArr, i));
    }

    public static int m(byte[] bArr, int i, ox1 ox1Var) {
        int o = o(bArr, i, ox1Var);
        int i2 = ox1Var.a;
        if (i2 < 0) {
            throw s12.d();
        }
        if (i2 == 0) {
            ox1Var.c = "";
            return o;
        }
        ox1Var.c = z72.e(bArr, o, i2);
        return o + i2;
    }

    public static int n(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int o(byte[] bArr, int i, ox1 ox1Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return d(b, bArr, i2, ox1Var);
        }
        ox1Var.a = b;
        return i2;
    }

    public static int p(byte[] bArr, int i, ox1 ox1Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            ox1Var.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        ox1Var.b = j2;
        return i3;
    }

    public static long q(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }
}
