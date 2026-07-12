package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class e42 implements j52 {
    public static final int[] r = new int[0];
    public static final Unsafe s = w72.p();
    public final int[] a;
    public final Object[] b;
    public final int c;
    public final int d;
    public final w32 e;
    public final boolean f;
    public final boolean g;
    public final x42 h;
    public final boolean i;
    public final int[] j;
    public final int k;
    public final int l;
    public final l42 m;
    public final i22 n;
    public final l72 o;
    public final vz1 p;
    public final q32 q;

    public e42(int[] iArr, Object[] objArr, int i, int i2, w32 w32Var, x42 x42Var, boolean z, int[] iArr2, int i3, int i4, l42 l42Var, i22 i22Var, l72 l72Var, vz1 vz1Var, q32 q32Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = w32Var instanceof q02;
        this.h = x42Var;
        this.f = vz1Var != null && vz1Var.d(w32Var);
        this.i = false;
        this.j = iArr2;
        this.k = i3;
        this.l = i4;
        this.m = l42Var;
        this.n = i22Var;
        this.o = l72Var;
        this.p = vz1Var;
        this.e = w32Var;
        this.q = q32Var;
    }

    public static boolean A(Object obj, int i, j52 j52Var) {
        return j52Var.c(w72.B(obj, i & 1048575));
    }

    public static float B(Object obj, long j) {
        return ((Float) w72.B(obj, j)).floatValue();
    }

    public static int H(Object obj, long j) {
        return ((Integer) w72.B(obj, j)).intValue();
    }

    public static long L(Object obj, long j) {
        return ((Long) w72.B(obj, j)).longValue();
    }

    public static d72 O(Object obj) {
        q02 q02Var = (q02) obj;
        d72 d72Var = q02Var.zzb;
        if (d72Var != d72.k()) {
            return d72Var;
        }
        d72 l = d72.l();
        q02Var.zzb = l;
        return l;
    }

    public static boolean P(Object obj, long j) {
        return ((Boolean) w72.B(obj, j)).booleanValue();
    }

    public static void R(Object obj) {
        if (T(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    public static boolean S(int i) {
        return (i & 536870912) != 0;
    }

    public static boolean T(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof q02) {
            return ((q02) obj).F();
        }
        return true;
    }

    public static double j(Object obj, long j) {
        return ((Double) w72.B(obj, j)).doubleValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0260  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static e42 n(Class cls, s32 s32Var, l42 l42Var, i22 i22Var, l72 l72Var, vz1 vz1Var, q32 q32Var) {
        int i;
        int charAt;
        int charAt2;
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        char charAt3;
        int i8;
        char charAt4;
        int i9;
        char charAt5;
        int i10;
        char charAt6;
        int i11;
        char charAt7;
        int i12;
        char charAt8;
        int i13;
        char charAt9;
        int i14;
        char charAt10;
        int i15;
        int i16;
        int i17;
        z42 z42Var;
        String str;
        int i18;
        boolean z;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        Field s2;
        int i24;
        char charAt11;
        int i25;
        int i26;
        Object obj;
        Field s3;
        Object obj2;
        Field s4;
        int i27;
        char charAt12;
        int i28;
        char charAt13;
        int i29;
        char charAt14;
        int i30;
        char charAt15;
        if (!(s32Var instanceof z42)) {
            jy0.a(s32Var);
            throw new NoSuchMethodError();
        }
        z42 z42Var2 = (z42) s32Var;
        String d = z42Var2.d();
        int length = d.length();
        char c = 55296;
        if (d.charAt(0) >= 55296) {
            int i31 = 1;
            while (true) {
                i = i31 + 1;
                if (d.charAt(i31) < 55296) {
                    break;
                }
                i31 = i;
            }
        } else {
            i = 1;
        }
        int i32 = i + 1;
        int charAt16 = d.charAt(i);
        if (charAt16 >= 55296) {
            int i33 = charAt16 & 8191;
            int i34 = 13;
            while (true) {
                i30 = i32 + 1;
                charAt15 = d.charAt(i32);
                if (charAt15 < 55296) {
                    break;
                }
                i33 |= (charAt15 & 8191) << i34;
                i34 += 13;
                i32 = i30;
            }
            charAt16 = i33 | (charAt15 << i34);
            i32 = i30;
        }
        if (charAt16 == 0) {
            charAt = 0;
            charAt2 = 0;
            i5 = 0;
            i6 = 0;
            i2 = 0;
            i4 = 0;
            iArr = r;
            i3 = 0;
        } else {
            int i35 = i32 + 1;
            int charAt17 = d.charAt(i32);
            if (charAt17 >= 55296) {
                int i36 = charAt17 & 8191;
                int i37 = 13;
                while (true) {
                    i14 = i35 + 1;
                    charAt10 = d.charAt(i35);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i36 |= (charAt10 & 8191) << i37;
                    i37 += 13;
                    i35 = i14;
                }
                charAt17 = i36 | (charAt10 << i37);
                i35 = i14;
            }
            int i38 = i35 + 1;
            int charAt18 = d.charAt(i35);
            if (charAt18 >= 55296) {
                int i39 = charAt18 & 8191;
                int i40 = 13;
                while (true) {
                    i13 = i38 + 1;
                    charAt9 = d.charAt(i38);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i39 |= (charAt9 & 8191) << i40;
                    i40 += 13;
                    i38 = i13;
                }
                charAt18 = i39 | (charAt9 << i40);
                i38 = i13;
            }
            int i41 = i38 + 1;
            int charAt19 = d.charAt(i38);
            if (charAt19 >= 55296) {
                int i42 = charAt19 & 8191;
                int i43 = 13;
                while (true) {
                    i12 = i41 + 1;
                    charAt8 = d.charAt(i41);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i42 |= (charAt8 & 8191) << i43;
                    i43 += 13;
                    i41 = i12;
                }
                charAt19 = i42 | (charAt8 << i43);
                i41 = i12;
            }
            int i44 = i41 + 1;
            int charAt20 = d.charAt(i41);
            if (charAt20 >= 55296) {
                int i45 = charAt20 & 8191;
                int i46 = 13;
                while (true) {
                    i11 = i44 + 1;
                    charAt7 = d.charAt(i44);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i45 |= (charAt7 & 8191) << i46;
                    i46 += 13;
                    i44 = i11;
                }
                charAt20 = i45 | (charAt7 << i46);
                i44 = i11;
            }
            int i47 = i44 + 1;
            charAt = d.charAt(i44);
            if (charAt >= 55296) {
                int i48 = charAt & 8191;
                int i49 = 13;
                while (true) {
                    i10 = i47 + 1;
                    charAt6 = d.charAt(i47);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i48 |= (charAt6 & 8191) << i49;
                    i49 += 13;
                    i47 = i10;
                }
                charAt = i48 | (charAt6 << i49);
                i47 = i10;
            }
            int i50 = i47 + 1;
            charAt2 = d.charAt(i47);
            if (charAt2 >= 55296) {
                int i51 = charAt2 & 8191;
                int i52 = 13;
                while (true) {
                    i9 = i50 + 1;
                    charAt5 = d.charAt(i50);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i51 |= (charAt5 & 8191) << i52;
                    i52 += 13;
                    i50 = i9;
                }
                charAt2 = i51 | (charAt5 << i52);
                i50 = i9;
            }
            int i53 = i50 + 1;
            int charAt21 = d.charAt(i50);
            if (charAt21 >= 55296) {
                int i54 = charAt21 & 8191;
                int i55 = 13;
                while (true) {
                    i8 = i53 + 1;
                    charAt4 = d.charAt(i53);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i54 |= (charAt4 & 8191) << i55;
                    i55 += 13;
                    i53 = i8;
                }
                charAt21 = i54 | (charAt4 << i55);
                i53 = i8;
            }
            int i56 = i53 + 1;
            int charAt22 = d.charAt(i53);
            if (charAt22 >= 55296) {
                int i57 = charAt22 & 8191;
                int i58 = 13;
                while (true) {
                    i7 = i56 + 1;
                    charAt3 = d.charAt(i56);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i57 |= (charAt3 & 8191) << i58;
                    i58 += 13;
                    i56 = i7;
                }
                charAt22 = i57 | (charAt3 << i58);
                i56 = i7;
            }
            i2 = (charAt17 << 1) + charAt18;
            i3 = charAt17;
            iArr = new int[charAt22 + charAt2 + charAt21];
            i4 = charAt22;
            i32 = i56;
            i5 = charAt19;
            i6 = charAt20;
        }
        Unsafe unsafe = s;
        Object[] e = z42Var2.e();
        Class<?> cls2 = z42Var2.a().getClass();
        int[] iArr2 = new int[charAt * 3];
        Object[] objArr = new Object[charAt << 1];
        int i59 = i4 + charAt2;
        int i60 = i4;
        int i61 = i59;
        int i62 = 0;
        int i63 = 0;
        while (i32 < length) {
            int i64 = i32 + 1;
            int charAt23 = d.charAt(i32);
            if (charAt23 >= c) {
                int i65 = charAt23 & 8191;
                int i66 = i64;
                int i67 = 13;
                while (true) {
                    i29 = i66 + 1;
                    charAt14 = d.charAt(i66);
                    if (charAt14 < c) {
                        break;
                    }
                    i65 |= (charAt14 & 8191) << i67;
                    i67 += 13;
                    i66 = i29;
                }
                charAt23 = i65 | (charAt14 << i67);
                i15 = i29;
            } else {
                i15 = i64;
            }
            int i68 = i15 + 1;
            int charAt24 = d.charAt(i15);
            if (charAt24 >= c) {
                int i69 = charAt24 & 8191;
                int i70 = i68;
                int i71 = 13;
                while (true) {
                    i28 = i70 + 1;
                    charAt13 = d.charAt(i70);
                    if (charAt13 < c) {
                        break;
                    }
                    i69 |= (charAt13 & 8191) << i71;
                    i71 += 13;
                    i70 = i28;
                }
                charAt24 = i69 | (charAt13 << i71);
                i16 = i28;
            } else {
                i16 = i68;
            }
            int i72 = charAt24 & 255;
            int i73 = length;
            if ((charAt24 & 1024) != 0) {
                iArr[i63] = i62;
                i63++;
            }
            int i74 = i6;
            if (i72 >= 51) {
                int i75 = i16 + 1;
                int charAt25 = d.charAt(i16);
                char c2 = 55296;
                if (charAt25 >= 55296) {
                    int i76 = charAt25 & 8191;
                    int i77 = 13;
                    while (true) {
                        i27 = i75 + 1;
                        charAt12 = d.charAt(i75);
                        if (charAt12 < c2) {
                            break;
                        }
                        i76 |= (charAt12 & 8191) << i77;
                        i77 += 13;
                        i75 = i27;
                        c2 = 55296;
                    }
                    charAt25 = i76 | (charAt12 << i77);
                    i75 = i27;
                }
                int i78 = i72 - 51;
                int i79 = i75;
                if (i78 == 9 || i78 == 17) {
                    i26 = i2 + 1;
                    objArr[((i62 / 3) << 1) + 1] = e[i2];
                } else if (i78 != 12 || (!z42Var2.b().equals(x42.PROTO2) && (charAt24 & 2048) == 0)) {
                    int i80 = charAt25 << 1;
                    obj = e[i80];
                    if (obj instanceof Field) {
                        s3 = s(cls2, (String) obj);
                        e[i80] = s3;
                    } else {
                        s3 = (Field) obj;
                    }
                    i17 = i5;
                    i22 = (int) unsafe.objectFieldOffset(s3);
                    int i81 = i80 + 1;
                    obj2 = e[i81];
                    if (obj2 instanceof Field) {
                        s4 = s(cls2, (String) obj2);
                        e[i81] = s4;
                    } else {
                        s4 = (Field) obj2;
                    }
                    i19 = (int) unsafe.objectFieldOffset(s4);
                    z42Var = z42Var2;
                    str = d;
                    i18 = i2;
                    i20 = i79;
                    i23 = 0;
                    z = true;
                } else {
                    i26 = i2 + 1;
                    objArr[((i62 / 3) << 1) + 1] = e[i2];
                }
                i2 = i26;
                int i802 = charAt25 << 1;
                obj = e[i802];
                if (obj instanceof Field) {
                }
                i17 = i5;
                i22 = (int) unsafe.objectFieldOffset(s3);
                int i812 = i802 + 1;
                obj2 = e[i812];
                if (obj2 instanceof Field) {
                }
                i19 = (int) unsafe.objectFieldOffset(s4);
                z42Var = z42Var2;
                str = d;
                i18 = i2;
                i20 = i79;
                i23 = 0;
                z = true;
            } else {
                i17 = i5;
                int i82 = i2 + 1;
                Field s5 = s(cls2, (String) e[i2]);
                if (i72 == 9 || i72 == 17) {
                    z42Var = z42Var2;
                    objArr[((i62 / 3) << 1) + 1] = s5.getType();
                } else {
                    if (i72 == 27 || i72 == 49) {
                        z42Var = z42Var2;
                        i25 = i2 + 2;
                        objArr[((i62 / 3) << 1) + 1] = e[i82];
                    } else if (i72 == 12 || i72 == 30 || i72 == 44) {
                        z42Var = z42Var2;
                        if (z42Var2.b() == x42.PROTO2 || (charAt24 & 2048) != 0) {
                            i25 = i2 + 2;
                            objArr[((i62 / 3) << 1) + 1] = e[i82];
                        }
                    } else {
                        if (i72 == 50) {
                            int i83 = i60 + 1;
                            iArr[i60] = i62;
                            int i84 = (i62 / 3) << 1;
                            int i85 = i2 + 2;
                            objArr[i84] = e[i82];
                            if ((charAt24 & 2048) != 0) {
                                i82 = i2 + 3;
                                objArr[i84 + 1] = e[i85];
                                z42Var = z42Var2;
                                i60 = i83;
                            } else {
                                i60 = i83;
                                i82 = i85;
                            }
                        }
                        z42Var = z42Var2;
                    }
                    i82 = i25;
                }
                int objectFieldOffset = (int) unsafe.objectFieldOffset(s5);
                if ((charAt24 & 4096) == 0 || i72 > 17) {
                    str = d;
                    i18 = i82;
                    z = true;
                    i19 = 1048575;
                    i20 = i16;
                    i21 = 0;
                } else {
                    i20 = i16 + 1;
                    int charAt26 = d.charAt(i16);
                    if (charAt26 >= 55296) {
                        int i86 = charAt26 & 8191;
                        int i87 = 13;
                        while (true) {
                            i24 = i20 + 1;
                            charAt11 = d.charAt(i20);
                            if (charAt11 < 55296) {
                                break;
                            }
                            i86 |= (charAt11 & 8191) << i87;
                            i87 += 13;
                            i20 = i24;
                        }
                        charAt26 = i86 | (charAt11 << i87);
                        i20 = i24;
                    }
                    z = true;
                    int i88 = (i3 << 1) + (charAt26 / 32);
                    Object obj3 = e[i88];
                    str = d;
                    if (obj3 instanceof Field) {
                        s2 = (Field) obj3;
                    } else {
                        s2 = s(cls2, (String) obj3);
                        e[i88] = s2;
                    }
                    i18 = i82;
                    i21 = charAt26 % 32;
                    i19 = (int) unsafe.objectFieldOffset(s2);
                }
                if (i72 >= 18 && i72 <= 49) {
                    iArr[i61] = objectFieldOffset;
                    i61++;
                }
                int i89 = i21;
                i22 = objectFieldOffset;
                i23 = i89;
            }
            int i90 = i62 + 1;
            iArr2[i62] = charAt23;
            int i91 = i62 + 2;
            int i92 = i3;
            iArr2[i90] = (i72 << 20) | ((charAt24 & PackageParser.PARSE_COLLECT_CERTIFICATES) != 0 ? 268435456 : 0) | ((charAt24 & PackageParser.PARSE_TRUSTED_OVERLAY) != 0 ? 536870912 : 0) | ((charAt24 & 2048) != 0 ? Integer.MIN_VALUE : 0) | i22;
            i62 += 3;
            iArr2[i91] = (i23 << 20) | i19;
            i32 = i20;
            i2 = i18;
            length = i73;
            z42Var2 = z42Var;
            d = str;
            i6 = i74;
            i3 = i92;
            i5 = i17;
            c = 55296;
        }
        z42 z42Var3 = z42Var2;
        return new e42(iArr2, objArr, i5, i6, z42Var3.a(), z42Var3.b(), false, iArr, i4, i59, l42Var, i22Var, l72Var, vz1Var, q32Var);
    }

    public static Field s(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static void t(int i, Object obj, d92 d92Var) {
        if (obj instanceof String) {
            d92Var.F(i, (String) obj);
        } else {
            d92Var.x(i, (qx1) obj);
        }
    }

    public static void u(l72 l72Var, Object obj, d92 d92Var) {
        l72Var.g(l72Var.k(obj), d92Var);
    }

    public final int C(int i) {
        return this.a[i + 2];
    }

    public final void D(Object obj, int i) {
        int C = C(i);
        long j = 1048575 & C;
        if (j == 1048575) {
            return;
        }
        w72.h(obj, j, (1 << (C >>> 20)) | w72.t(obj, j));
    }

    public final void E(Object obj, int i, int i2) {
        w72.h(obj, C(i2) & 1048575, i);
    }

    public final void F(Object obj, Object obj2, int i) {
        int i2 = this.a[i];
        if (J(obj2, i2, i)) {
            long G = G(i) & 1048575;
            Unsafe unsafe = s;
            Object object = unsafe.getObject(obj2, G);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + String.valueOf(obj2));
            }
            j52 N = N(i);
            if (!J(obj, i2, i)) {
                if (T(object)) {
                    Object a = N.a();
                    N.d(a, object);
                    unsafe.putObject(obj, G, a);
                } else {
                    unsafe.putObject(obj, G, object);
                }
                E(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, G);
            if (!T(object2)) {
                Object a2 = N.a();
                N.d(a2, object2);
                unsafe.putObject(obj, G, a2);
                object2 = a2;
            }
            N.d(object2, object);
        }
    }

    public final int G(int i) {
        return this.a[i + 1];
    }

    public final boolean I(Object obj, int i) {
        int C = C(i);
        long j = C & 1048575;
        if (j != 1048575) {
            return (w72.t(obj, j) & (1 << (C >>> 20))) != 0;
        }
        int G = G(i);
        long j2 = G & 1048575;
        switch ((G & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(w72.a(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(w72.n(obj, j2)) != 0;
            case 2:
                return w72.x(obj, j2) != 0;
            case q02.c.c /* 3 */:
                return w72.x(obj, j2) != 0;
            case 4:
                return w72.t(obj, j2) != 0;
            case q02.c.e /* 5 */:
                return w72.x(obj, j2) != 0;
            case q02.c.f /* 6 */:
                return w72.t(obj, j2) != 0;
            case q02.c.g /* 7 */:
                return w72.F(obj, j2);
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                Object B = w72.B(obj, j2);
                if (B instanceof String) {
                    return !((String) B).isEmpty();
                }
                if (B instanceof qx1) {
                    return !qx1.n.equals(B);
                }
                throw new IllegalArgumentException();
            case 9:
                return w72.B(obj, j2) != null;
            case 10:
                return !qx1.n.equals(w72.B(obj, j2));
            case 11:
                return w72.t(obj, j2) != 0;
            case 12:
                return w72.t(obj, j2) != 0;
            case 13:
                return w72.t(obj, j2) != 0;
            case 14:
                return w72.x(obj, j2) != 0;
            case 15:
                return w72.t(obj, j2) != 0;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                return w72.x(obj, j2) != 0;
            case 17:
                return w72.B(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean J(Object obj, int i, int i2) {
        return w72.t(obj, (long) (C(i2) & 1048575)) == i;
    }

    public final boolean K(Object obj, Object obj2, int i) {
        return I(obj, i) == I(obj2, i);
    }

    public final l12 M(int i) {
        return (l12) this.b[((i / 3) << 1) + 1];
    }

    public final j52 N(int i) {
        int i2 = (i / 3) << 1;
        j52 j52Var = (j52) this.b[i2];
        if (j52Var != null) {
            return j52Var;
        }
        j52 b = v42.a().b((Class) this.b[i2 + 1]);
        this.b[i2] = b;
        return b;
    }

    public final Object Q(int i) {
        return this.b[(i / 3) << 1];
    }

    @Override // androidx.appcompat.view.menu.j52
    public final Object a() {
        return this.m.b(this.e);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.appcompat.view.menu.j52
    public final int b(Object obj) {
        int i;
        int i2;
        int i3;
        int e;
        int z;
        int p0;
        boolean z2;
        int y;
        int D;
        int s0;
        int v0;
        Unsafe unsafe = s;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i7 < this.a.length) {
            int G = G(i7);
            int i9 = (267386880 & G) >>> 20;
            int[] iArr = this.a;
            int i10 = iArr[i7];
            int i11 = iArr[i7 + 2];
            int i12 = i11 & i4;
            if (i9 <= 17) {
                if (i12 != i5) {
                    i6 = i12 == i4 ? 0 : unsafe.getInt(obj, i12);
                    i5 = i12;
                }
                i = i5;
                i2 = i6;
                i3 = 1 << (i11 >>> 20);
            } else {
                i = i5;
                i2 = i6;
                i3 = 0;
            }
            long j = G & i4;
            if (i9 >= g02.a0.a()) {
                g02.n0.a();
            }
            switch (i9) {
                case 0:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.e(i10, 0.0d);
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.f(i10, 0.0f);
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.Y(i10, unsafe.getLong(obj, j));
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case q02.c.c /* 3 */:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.m0(i10, unsafe.getLong(obj, j));
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.l0(i10, unsafe.getInt(obj, j));
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case q02.c.e /* 5 */:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.P(i10, 0L);
                        i8 += e;
                        break;
                    } else {
                        break;
                    }
                case q02.c.f /* 6 */:
                    if (z(obj, i7, i, i2, i3)) {
                        e = jz1.h0(i10, 0);
                        i8 += e;
                        break;
                    }
                    break;
                case q02.c.g /* 7 */:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.z(i10, true);
                        i8 += z;
                    }
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    if (z(obj, i7, i, i2, i3)) {
                        Object object = unsafe.getObject(obj, j);
                        z = object instanceof qx1 ? jz1.Q(i10, (qx1) object) : jz1.y(i10, (String) object);
                        i8 += z;
                    }
                    break;
                case 9:
                    if (z(obj, i7, i, i2, i3)) {
                        z = m52.a(i10, unsafe.getObject(obj, j), N(i7));
                        i8 += z;
                    }
                    break;
                case 10:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.Q(i10, (qx1) unsafe.getObject(obj, j));
                        i8 += z;
                    }
                    break;
                case 11:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.w0(i10, unsafe.getInt(obj, j));
                        i8 += z;
                    }
                    break;
                case 12:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.d0(i10, unsafe.getInt(obj, j));
                        i8 += z;
                    }
                    break;
                case 13:
                    if (z(obj, i7, i, i2, i3)) {
                        p0 = jz1.p0(i10, 0);
                        i8 += p0;
                    }
                    break;
                case 14:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.e0(i10, 0L);
                        i8 += z;
                    }
                    break;
                case 15:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.t0(i10, unsafe.getInt(obj, j));
                        i8 += z;
                    }
                    break;
                case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.i0(i10, unsafe.getLong(obj, j));
                        i8 += z;
                    }
                    break;
                case 17:
                    if (z(obj, i7, i, i2, i3)) {
                        z = jz1.x(i10, (w32) unsafe.getObject(obj, j), N(i7));
                        i8 += z;
                    }
                    break;
                case 18:
                    z = m52.C(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += z;
                    break;
                case 19:
                    z2 = false;
                    y = m52.y(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 20:
                    z2 = false;
                    y = m52.K(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 21:
                    z2 = false;
                    y = m52.W(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 22:
                    z2 = false;
                    y = m52.G(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 23:
                    z2 = false;
                    y = m52.C(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 24:
                    z2 = false;
                    y = m52.y(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 25:
                    z2 = false;
                    y = m52.d(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 26:
                    z = m52.q(i10, (List) unsafe.getObject(obj, j));
                    i8 += z;
                    break;
                case 27:
                    z = m52.r(i10, (List) unsafe.getObject(obj, j), N(i7));
                    i8 += z;
                    break;
                case 28:
                    z = m52.b(i10, (List) unsafe.getObject(obj, j));
                    i8 += z;
                    break;
                case 29:
                    z = m52.T(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += z;
                    break;
                case 30:
                    z2 = false;
                    y = m52.s(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 31:
                    z2 = false;
                    y = m52.y(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                    z2 = false;
                    y = m52.C(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 33:
                    z2 = false;
                    y = m52.N(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 34:
                    z2 = false;
                    y = m52.Q(i10, (List) unsafe.getObject(obj, j), false);
                    i8 += y;
                    break;
                case 35:
                    D = m52.D((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 36:
                    D = m52.z((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 37:
                    D = m52.L((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 38:
                    D = m52.X((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 39:
                    D = m52.H((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 40:
                    D = m52.D((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 41:
                    D = m52.z((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 42:
                    D = m52.e((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 43:
                    D = m52.U((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 44:
                    D = m52.t((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 45:
                    D = m52.z((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 46:
                    D = m52.D((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 47:
                    D = m52.O((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 48:
                    D = m52.R((List) unsafe.getObject(obj, j));
                    if (D > 0) {
                        s0 = jz1.s0(i10);
                        v0 = jz1.v0(D);
                        p0 = s0 + v0 + D;
                        i8 += p0;
                    }
                    break;
                case 49:
                    z = m52.c(i10, (List) unsafe.getObject(obj, j), N(i7));
                    i8 += z;
                    break;
                case 50:
                    z = this.q.i(i10, unsafe.getObject(obj, j), Q(i7));
                    i8 += z;
                    break;
                case 51:
                    if (J(obj, i10, i7)) {
                        z = jz1.e(i10, 0.0d);
                        i8 += z;
                    }
                    break;
                case 52:
                    if (J(obj, i10, i7)) {
                        z = jz1.f(i10, 0.0f);
                        i8 += z;
                    }
                    break;
                case 53:
                    if (J(obj, i10, i7)) {
                        z = jz1.Y(i10, L(obj, j));
                        i8 += z;
                    }
                    break;
                case 54:
                    if (J(obj, i10, i7)) {
                        z = jz1.m0(i10, L(obj, j));
                        i8 += z;
                    }
                    break;
                case 55:
                    if (J(obj, i10, i7)) {
                        z = jz1.l0(i10, H(obj, j));
                        i8 += z;
                    }
                    break;
                case 56:
                    if (J(obj, i10, i7)) {
                        z = jz1.P(i10, 0L);
                        i8 += z;
                    }
                    break;
                case 57:
                    if (J(obj, i10, i7)) {
                        p0 = jz1.h0(i10, 0);
                        i8 += p0;
                    }
                    break;
                case 58:
                    if (J(obj, i10, i7)) {
                        z = jz1.z(i10, true);
                        i8 += z;
                    }
                    break;
                case 59:
                    if (J(obj, i10, i7)) {
                        Object object2 = unsafe.getObject(obj, j);
                        z = object2 instanceof qx1 ? jz1.Q(i10, (qx1) object2) : jz1.y(i10, (String) object2);
                        i8 += z;
                    }
                    break;
                case 60:
                    if (J(obj, i10, i7)) {
                        z = m52.a(i10, unsafe.getObject(obj, j), N(i7));
                        i8 += z;
                    }
                    break;
                case 61:
                    if (J(obj, i10, i7)) {
                        z = jz1.Q(i10, (qx1) unsafe.getObject(obj, j));
                        i8 += z;
                    }
                    break;
                case 62:
                    if (J(obj, i10, i7)) {
                        z = jz1.w0(i10, H(obj, j));
                        i8 += z;
                    }
                    break;
                case 63:
                    if (J(obj, i10, i7)) {
                        z = jz1.d0(i10, H(obj, j));
                        i8 += z;
                    }
                    break;
                case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                    if (J(obj, i10, i7)) {
                        p0 = jz1.p0(i10, 0);
                        i8 += p0;
                    }
                    break;
                case 65:
                    if (J(obj, i10, i7)) {
                        z = jz1.e0(i10, 0L);
                        i8 += z;
                    }
                    break;
                case 66:
                    if (J(obj, i10, i7)) {
                        z = jz1.t0(i10, H(obj, j));
                        i8 += z;
                    }
                    break;
                case 67:
                    if (J(obj, i10, i7)) {
                        z = jz1.i0(i10, L(obj, j));
                        i8 += z;
                    }
                    break;
                case 68:
                    if (J(obj, i10, i7)) {
                        z = jz1.x(i10, (w32) unsafe.getObject(obj, j), N(i7));
                        i8 += z;
                    }
                    break;
            }
            i7 += 3;
            i5 = i;
            i6 = i2;
            i4 = 1048575;
        }
        int i13 = 0;
        l72 l72Var = this.o;
        int a = i8 + l72Var.a(l72Var.k(obj));
        if (!this.f) {
            return a;
        }
        e02 b = this.p.b(obj);
        for (int i14 = 0; i14 < b.a.g(); i14++) {
            Map.Entry h = b.a.h(i14);
            jy0.a(h.getKey());
            i13 += e02.b(null, h.getValue());
        }
        for (Map.Entry entry : b.a.j()) {
            jy0.a(entry.getKey());
            i13 += e02.b(null, entry.getValue());
        }
        return a + i13;
    }

    @Override // androidx.appcompat.view.menu.j52
    public final boolean c(Object obj) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (i5 < this.k) {
            int i6 = this.j[i5];
            int i7 = this.a[i6];
            int G = G(i6);
            int i8 = this.a[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = s.getInt(obj, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if ((268435456 & G) != 0 && !z(obj, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & G) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (J(obj, i7, i6) && !A(obj, G, N(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 == 50 && !this.q.c(w72.B(obj, G & 1048575)).isEmpty()) {
                            this.q.b(Q(i6));
                            throw null;
                        }
                    }
                }
                List list = (List) w72.B(obj, G & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    j52 N = N(i6);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!N.c(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (z(obj, i6, i, i2, i10) && !A(obj, G, N(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
        return !this.f || this.p.b(obj).n();
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void d(Object obj, Object obj2) {
        R(obj);
        obj2.getClass();
        for (int i = 0; i < this.a.length; i += 3) {
            int G = G(i);
            long j = 1048575 & G;
            int i2 = this.a[i];
            switch ((G & 267386880) >>> 20) {
                case 0:
                    if (I(obj2, i)) {
                        w72.f(obj, j, w72.a(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (I(obj2, i)) {
                        w72.g(obj, j, w72.n(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (I(obj2, i)) {
                        w72.i(obj, j, w72.x(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case q02.c.c /* 3 */:
                    if (I(obj2, i)) {
                        w72.i(obj, j, w72.x(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case q02.c.e /* 5 */:
                    if (I(obj2, i)) {
                        w72.i(obj, j, w72.x(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case q02.c.f /* 6 */:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case q02.c.g /* 7 */:
                    if (I(obj2, i)) {
                        w72.v(obj, j, w72.F(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    if (I(obj2, i)) {
                        w72.j(obj, j, w72.B(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    y(obj, obj2, i);
                    break;
                case 10:
                    if (I(obj2, i)) {
                        w72.j(obj, j, w72.B(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (I(obj2, i)) {
                        w72.i(obj, j, w72.x(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (I(obj2, i)) {
                        w72.h(obj, j, w72.t(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                    if (I(obj2, i)) {
                        w72.i(obj, j, w72.x(obj2, j));
                        D(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    y(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.n.b(obj, obj2, j);
                    break;
                case 50:
                    m52.m(this.q, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (J(obj2, i2, i)) {
                        w72.j(obj, j, w72.B(obj2, j));
                        E(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    F(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                case 65:
                case 66:
                case 67:
                    if (J(obj2, i2, i)) {
                        w72.j(obj, j, w72.B(obj2, j));
                        E(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    F(obj, obj2, i);
                    break;
            }
        }
        m52.n(this.o, obj, obj2);
        if (this.f) {
            m52.l(this.p, obj, obj2);
        }
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void e(Object obj) {
        if (T(obj)) {
            if (obj instanceof q02) {
                q02 q02Var = (q02) obj;
                q02Var.i(Integer.MAX_VALUE);
                q02Var.zza = 0;
                q02Var.D();
            }
            int length = this.a.length;
            for (int i = 0; i < length; i += 3) {
                int G = G(i);
                long j = 1048575 & G;
                int i2 = (G & 267386880) >>> 20;
                if (i2 != 9) {
                    if (i2 != 60 && i2 != 68) {
                        switch (i2) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.n.d(obj, j);
                                break;
                            case 50:
                                Unsafe unsafe = s;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    unsafe.putObject(obj, j, this.q.e(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (J(obj, this.a[i], i)) {
                        N(i).e(s.getObject(obj, j));
                    }
                }
                if (I(obj, i)) {
                    N(i).e(s.getObject(obj, j));
                }
            }
            this.o.l(obj);
            if (this.f) {
                this.p.f(obj);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.j52
    public final int f(Object obj) {
        int i;
        int b;
        int length = this.a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int G = G(i3);
            int i4 = this.a[i3];
            long j = 1048575 & G;
            int i5 = 37;
            switch ((G & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    b = v02.b(Double.doubleToLongBits(w72.a(obj, j)));
                    i2 = i + b;
                    break;
                case 1:
                    i = i2 * 53;
                    b = Float.floatToIntBits(w72.n(obj, j));
                    i2 = i + b;
                    break;
                case 2:
                    i = i2 * 53;
                    b = v02.b(w72.x(obj, j));
                    i2 = i + b;
                    break;
                case q02.c.c /* 3 */:
                    i = i2 * 53;
                    b = v02.b(w72.x(obj, j));
                    i2 = i + b;
                    break;
                case 4:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case q02.c.e /* 5 */:
                    i = i2 * 53;
                    b = v02.b(w72.x(obj, j));
                    i2 = i + b;
                    break;
                case q02.c.f /* 6 */:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case q02.c.g /* 7 */:
                    i = i2 * 53;
                    b = v02.c(w72.F(obj, j));
                    i2 = i + b;
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    i = i2 * 53;
                    b = ((String) w72.B(obj, j)).hashCode();
                    i2 = i + b;
                    break;
                case 9:
                    Object B = w72.B(obj, j);
                    if (B != null) {
                        i5 = B.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    b = w72.B(obj, j).hashCode();
                    i2 = i + b;
                    break;
                case 11:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case 12:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case 13:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case 14:
                    i = i2 * 53;
                    b = v02.b(w72.x(obj, j));
                    i2 = i + b;
                    break;
                case 15:
                    i = i2 * 53;
                    b = w72.t(obj, j);
                    i2 = i + b;
                    break;
                case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                    i = i2 * 53;
                    b = v02.b(w72.x(obj, j));
                    i2 = i + b;
                    break;
                case 17:
                    Object B2 = w72.B(obj, j);
                    if (B2 != null) {
                        i5 = B2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    b = w72.B(obj, j).hashCode();
                    i2 = i + b;
                    break;
                case 50:
                    i = i2 * 53;
                    b = w72.B(obj, j).hashCode();
                    i2 = i + b;
                    break;
                case 51:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(Double.doubleToLongBits(j(obj, j)));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = Float.floatToIntBits(B(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(L(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(L(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(L(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.c(P(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = ((String) w72.B(obj, j)).hashCode();
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = w72.B(obj, j).hashCode();
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = w72.B(obj, j).hashCode();
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(L(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = H(obj, j);
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = v02.b(L(obj, j));
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (J(obj, i4, i3)) {
                        i = i2 * 53;
                        b = w72.B(obj, j).hashCode();
                        i2 = i + b;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.o.k(obj).hashCode();
        return this.f ? (hashCode * 53) + this.p.b(obj).hashCode() : hashCode;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0b91  */
    @Override // androidx.appcompat.view.menu.j52
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(Object obj, d92 d92Var) {
        Map.Entry entry;
        Iterator it;
        int length;
        int i;
        Iterator it2;
        int i2;
        Map.Entry entry2;
        int i3;
        int i4;
        int i5;
        Map.Entry entry3;
        int i6;
        boolean z;
        int i7;
        Unsafe unsafe;
        boolean z2;
        Iterator it3;
        Map.Entry entry4;
        int length2;
        d92 d92Var2 = d92Var;
        int i8 = 267386880;
        int i9 = 1048575;
        if (d92Var.a() == j92.b) {
            u(this.o, obj, d92Var2);
            if (this.f) {
                e02 b = this.p.b(obj);
                if (!b.a.isEmpty()) {
                    it3 = b.i();
                    entry4 = (Map.Entry) it3.next();
                    for (length2 = this.a.length - 3; length2 >= 0; length2 -= 3) {
                        int G = G(length2);
                        int i10 = this.a[length2];
                        while (entry4 != null && this.p.a(entry4) > i10) {
                            this.p.c(d92Var2, entry4);
                            entry4 = it3.hasNext() ? (Map.Entry) it3.next() : null;
                        }
                        switch ((G & 267386880) >>> 20) {
                            case 0:
                                if (I(obj, length2)) {
                                    d92Var2.N(i10, w72.a(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 1:
                                if (I(obj, length2)) {
                                    d92Var2.O(i10, w72.n(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 2:
                                if (I(obj, length2)) {
                                    d92Var2.i(i10, w72.x(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case q02.c.c /* 3 */:
                                if (I(obj, length2)) {
                                    d92Var2.J(i10, w72.x(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 4:
                                if (I(obj, length2)) {
                                    d92Var2.r(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case q02.c.e /* 5 */:
                                if (I(obj, length2)) {
                                    d92Var2.M(i10, w72.x(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case q02.c.f /* 6 */:
                                if (I(obj, length2)) {
                                    d92Var2.k(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case q02.c.g /* 7 */:
                                if (I(obj, length2)) {
                                    d92Var2.d(i10, w72.F(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                                if (I(obj, length2)) {
                                    t(i10, w72.B(obj, G & 1048575), d92Var2);
                                    break;
                                } else {
                                    break;
                                }
                            case 9:
                                if (I(obj, length2)) {
                                    d92Var2.u(i10, w72.B(obj, G & 1048575), N(length2));
                                    break;
                                } else {
                                    break;
                                }
                            case 10:
                                if (I(obj, length2)) {
                                    d92Var2.x(i10, (qx1) w72.B(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 11:
                                if (I(obj, length2)) {
                                    d92Var2.g(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 12:
                                if (I(obj, length2)) {
                                    d92Var2.L(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 13:
                                if (I(obj, length2)) {
                                    d92Var2.z(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 14:
                                if (I(obj, length2)) {
                                    d92Var2.s(i10, w72.x(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 15:
                                if (I(obj, length2)) {
                                    d92Var2.H(i10, w72.t(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                                if (I(obj, length2)) {
                                    d92Var2.B(i10, w72.x(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 17:
                                if (I(obj, length2)) {
                                    d92Var2.m(i10, w72.B(obj, G & 1048575), N(length2));
                                    break;
                                } else {
                                    break;
                                }
                            case 18:
                                m52.x(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 19:
                                m52.M(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 20:
                                m52.S(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 21:
                                m52.c0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 22:
                                m52.P(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 23:
                                m52.J(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 24:
                                m52.F(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 25:
                                m52.k(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 26:
                                m52.v(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2);
                                break;
                            case 27:
                                m52.w(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, N(length2));
                                break;
                            case 28:
                                m52.i(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2);
                                break;
                            case 29:
                                m52.b0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 30:
                                m52.B(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 31:
                                m52.V(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                                m52.Y(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 33:
                                m52.Z(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 34:
                                m52.a0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, false);
                                break;
                            case 35:
                                m52.x(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 36:
                                m52.M(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 37:
                                m52.S(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 38:
                                m52.c0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 39:
                                m52.P(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 40:
                                m52.J(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 41:
                                m52.F(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 42:
                                m52.k(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 43:
                                m52.b0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 44:
                                m52.B(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 45:
                                m52.V(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 46:
                                m52.Y(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 47:
                                m52.Z(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 48:
                                m52.a0(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, true);
                                break;
                            case 49:
                                m52.j(this.a[length2], (List) w72.B(obj, G & 1048575), d92Var2, N(length2));
                                break;
                            case 50:
                                v(d92Var2, i10, w72.B(obj, G & 1048575), length2);
                                break;
                            case 51:
                                if (J(obj, i10, length2)) {
                                    d92Var2.N(i10, j(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 52:
                                if (J(obj, i10, length2)) {
                                    d92Var2.O(i10, B(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 53:
                                if (J(obj, i10, length2)) {
                                    d92Var2.i(i10, L(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 54:
                                if (J(obj, i10, length2)) {
                                    d92Var2.J(i10, L(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 55:
                                if (J(obj, i10, length2)) {
                                    d92Var2.r(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 56:
                                if (J(obj, i10, length2)) {
                                    d92Var2.M(i10, L(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 57:
                                if (J(obj, i10, length2)) {
                                    d92Var2.k(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 58:
                                if (J(obj, i10, length2)) {
                                    d92Var2.d(i10, P(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 59:
                                if (J(obj, i10, length2)) {
                                    t(i10, w72.B(obj, G & 1048575), d92Var2);
                                    break;
                                } else {
                                    break;
                                }
                            case 60:
                                if (J(obj, i10, length2)) {
                                    d92Var2.u(i10, w72.B(obj, G & 1048575), N(length2));
                                    break;
                                } else {
                                    break;
                                }
                            case 61:
                                if (J(obj, i10, length2)) {
                                    d92Var2.x(i10, (qx1) w72.B(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 62:
                                if (J(obj, i10, length2)) {
                                    d92Var2.g(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 63:
                                if (J(obj, i10, length2)) {
                                    d92Var2.L(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                                if (J(obj, i10, length2)) {
                                    d92Var2.z(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 65:
                                if (J(obj, i10, length2)) {
                                    d92Var2.s(i10, L(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 66:
                                if (J(obj, i10, length2)) {
                                    d92Var2.H(i10, H(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 67:
                                if (J(obj, i10, length2)) {
                                    d92Var2.B(i10, L(obj, G & 1048575));
                                    break;
                                } else {
                                    break;
                                }
                            case 68:
                                if (J(obj, i10, length2)) {
                                    d92Var2.m(i10, w72.B(obj, G & 1048575), N(length2));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    }
                    while (entry4 != null) {
                        this.p.c(d92Var2, entry4);
                        entry4 = it3.hasNext() ? (Map.Entry) it3.next() : null;
                    }
                    return;
                }
            }
            it3 = null;
            entry4 = null;
            while (length2 >= 0) {
            }
            while (entry4 != null) {
            }
            return;
        }
        if (this.f) {
            e02 b2 = this.p.b(obj);
            if (!b2.a.isEmpty()) {
                Iterator l = b2.l();
                entry = (Map.Entry) l.next();
                it = l;
                length = this.a.length;
                Unsafe unsafe2 = s;
                int i11 = 0;
                i = 0;
                int i12 = 1048575;
                while (i < length) {
                    int G2 = G(i);
                    int[] iArr = this.a;
                    int i13 = iArr[i];
                    int i14 = (G2 & i8) >>> 20;
                    if (i14 <= 17) {
                        int i15 = iArr[i + 2];
                        int i16 = i15 & i9;
                        if (i16 != i12) {
                            if (i16 == i9) {
                                it2 = it;
                                i11 = 0;
                            } else {
                                it2 = it;
                                i11 = unsafe2.getInt(obj, i16);
                            }
                            i12 = i16;
                        } else {
                            it2 = it;
                        }
                        entry2 = entry;
                        i3 = i11;
                        i4 = 1 << (i15 >>> 20);
                        i2 = i12;
                    } else {
                        it2 = it;
                        i2 = i12;
                        entry2 = entry;
                        i3 = i11;
                        i4 = 0;
                    }
                    while (entry2 != null && this.p.a(entry2) <= i13) {
                        this.p.c(d92Var2, entry2);
                        entry2 = it2.hasNext() ? (Map.Entry) it2.next() : null;
                    }
                    long j = G2 & 1048575;
                    switch (i14) {
                        case 0:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.N(i13, w72.a(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 1:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.O(i13, w72.n(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 2:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.i(i13, unsafe.getLong(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case q02.c.c /* 3 */:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.J(i13, unsafe.getLong(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.r(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case q02.c.e /* 5 */:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.M(i13, unsafe.getLong(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case q02.c.f /* 6 */:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.k(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case q02.c.g /* 7 */:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.d(i13, w72.F(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                t(i13, unsafe.getObject(obj, j), d92Var2);
                                break;
                            } else {
                                break;
                            }
                        case 9:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.u(i13, unsafe.getObject(obj, j), N(i7));
                                break;
                            } else {
                                break;
                            }
                        case 10:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.x(i13, (qx1) unsafe.getObject(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 11:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.g(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 12:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.L(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 13:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.z(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 14:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.s(i13, unsafe.getLong(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 15:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            if (z(obj, i7, i5, i3, i4)) {
                                d92Var2.H(i13, unsafe.getInt(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            i5 = i2;
                            if (z(obj, i7, i2, i3, i4)) {
                                d92Var2.B(i13, unsafe.getLong(obj, j));
                                break;
                            } else {
                                break;
                            }
                        case 17:
                            z = false;
                            entry3 = entry2;
                            i7 = i;
                            i6 = length;
                            unsafe = unsafe2;
                            if (z(obj, i, i2, i3, i4)) {
                                d92Var2 = d92Var;
                                d92Var2.m(i13, unsafe.getObject(obj, j), N(i7));
                            } else {
                                d92Var2 = d92Var;
                            }
                            i5 = i2;
                            break;
                        case 18:
                            z2 = false;
                            m52.x(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 19:
                            z2 = false;
                            m52.M(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 20:
                            z2 = false;
                            m52.S(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 21:
                            z2 = false;
                            m52.c0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 22:
                            z2 = false;
                            m52.P(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 23:
                            z2 = false;
                            m52.J(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 24:
                            z2 = false;
                            m52.F(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 25:
                            z2 = false;
                            m52.k(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 26:
                            m52.v(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 27:
                            m52.w(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, N(i));
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 28:
                            m52.i(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 29:
                            z2 = false;
                            m52.b0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 30:
                            z2 = false;
                            m52.B(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 31:
                            z2 = false;
                            m52.V(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                            z2 = false;
                            m52.Y(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 33:
                            z2 = false;
                            m52.Z(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 34:
                            z2 = false;
                            m52.a0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, false);
                            i5 = i2;
                            entry3 = entry2;
                            z = z2;
                            i6 = length;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 35:
                            m52.x(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 36:
                            m52.M(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 37:
                            m52.S(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 38:
                            m52.c0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 39:
                            m52.P(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 40:
                            m52.J(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 41:
                            m52.F(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 42:
                            m52.k(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 43:
                            m52.b0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 44:
                            m52.B(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 45:
                            m52.V(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 46:
                            m52.Y(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 47:
                            m52.Z(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 48:
                            m52.a0(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, true);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 49:
                            m52.j(this.a[i], (List) unsafe2.getObject(obj, j), d92Var2, N(i));
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 50:
                            v(d92Var2, i13, unsafe2.getObject(obj, j), i);
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 51:
                            if (J(obj, i13, i)) {
                                d92Var2.N(i13, j(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 52:
                            if (J(obj, i13, i)) {
                                d92Var2.O(i13, B(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 53:
                            if (J(obj, i13, i)) {
                                d92Var2.i(i13, L(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 54:
                            if (J(obj, i13, i)) {
                                d92Var2.J(i13, L(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 55:
                            if (J(obj, i13, i)) {
                                d92Var2.r(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 56:
                            if (J(obj, i13, i)) {
                                d92Var2.M(i13, L(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 57:
                            if (J(obj, i13, i)) {
                                d92Var2.k(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 58:
                            if (J(obj, i13, i)) {
                                d92Var2.d(i13, P(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 59:
                            if (J(obj, i13, i)) {
                                t(i13, unsafe2.getObject(obj, j), d92Var2);
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 60:
                            if (J(obj, i13, i)) {
                                d92Var2.u(i13, unsafe2.getObject(obj, j), N(i));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 61:
                            if (J(obj, i13, i)) {
                                d92Var2.x(i13, (qx1) unsafe2.getObject(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 62:
                            if (J(obj, i13, i)) {
                                d92Var2.g(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 63:
                            if (J(obj, i13, i)) {
                                d92Var2.L(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                            if (J(obj, i13, i)) {
                                d92Var2.z(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 65:
                            if (J(obj, i13, i)) {
                                d92Var2.s(i13, L(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 66:
                            if (J(obj, i13, i)) {
                                d92Var2.H(i13, H(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 67:
                            if (J(obj, i13, i)) {
                                d92Var2.B(i13, L(obj, j));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        case 68:
                            if (J(obj, i13, i)) {
                                d92Var2.m(i13, unsafe2.getObject(obj, j), N(i));
                            }
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                        default:
                            i5 = i2;
                            entry3 = entry2;
                            i6 = length;
                            z = false;
                            i7 = i;
                            unsafe = unsafe2;
                            break;
                    }
                    i = i7 + 3;
                    i11 = i3;
                    unsafe2 = unsafe;
                    i9 = 1048575;
                    it = it2;
                    entry = entry3;
                    length = i6;
                    i12 = i5;
                    i8 = 267386880;
                }
                Iterator it4 = it;
                while (entry != null) {
                    this.p.c(d92Var2, entry);
                    entry = it4.hasNext() ? (Map.Entry) it4.next() : null;
                }
                u(this.o, obj, d92Var2);
            }
        }
        entry = null;
        it = null;
        length = this.a.length;
        Unsafe unsafe22 = s;
        int i112 = 0;
        i = 0;
        int i122 = 1048575;
        while (i < length) {
        }
        Iterator it42 = it;
        while (entry != null) {
        }
        u(this.o, obj, d92Var2);
    }

    @Override // androidx.appcompat.view.menu.j52
    public final boolean h(Object obj, Object obj2) {
        boolean p;
        int length = this.a.length;
        for (int i = 0; i < length; i += 3) {
            int G = G(i);
            long j = G & 1048575;
            switch ((G & 267386880) >>> 20) {
                case 0:
                    if (K(obj, obj2, i) && Double.doubleToLongBits(w72.a(obj, j)) == Double.doubleToLongBits(w72.a(obj2, j))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (K(obj, obj2, i) && Float.floatToIntBits(w72.n(obj, j)) == Float.floatToIntBits(w72.n(obj2, j))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (K(obj, obj2, i) && w72.x(obj, j) == w72.x(obj2, j)) {
                        continue;
                    }
                    return false;
                case q02.c.c /* 3 */:
                    if (K(obj, obj2, i) && w72.x(obj, j) == w72.x(obj2, j)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case q02.c.e /* 5 */:
                    if (K(obj, obj2, i) && w72.x(obj, j) == w72.x(obj2, j)) {
                        continue;
                    }
                    return false;
                case q02.c.f /* 6 */:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case q02.c.g /* 7 */:
                    if (K(obj, obj2, i) && w72.F(obj, j) == w72.F(obj2, j)) {
                        continue;
                    }
                    return false;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    if (K(obj, obj2, i) && m52.p(w72.B(obj, j), w72.B(obj2, j))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (K(obj, obj2, i) && m52.p(w72.B(obj, j), w72.B(obj2, j))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (K(obj, obj2, i) && m52.p(w72.B(obj, j), w72.B(obj2, j))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (K(obj, obj2, i) && w72.x(obj, j) == w72.x(obj2, j)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (K(obj, obj2, i) && w72.t(obj, j) == w72.t(obj2, j)) {
                        continue;
                    }
                    return false;
                case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                    if (K(obj, obj2, i) && w72.x(obj, j) == w72.x(obj2, j)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (K(obj, obj2, i) && m52.p(w72.B(obj, j), w72.B(obj2, j))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    p = m52.p(w72.B(obj, j), w72.B(obj2, j));
                    break;
                case 50:
                    p = m52.p(w72.B(obj, j), w72.B(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                case 65:
                case 66:
                case 67:
                case 68:
                    long C = C(i) & 1048575;
                    if (w72.t(obj, C) == w72.t(obj2, C) && m52.p(w72.B(obj, j), w72.B(obj2, j))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!p) {
                return false;
            }
        }
        if (!this.o.k(obj).equals(this.o.k(obj2))) {
            return false;
        }
        if (this.f) {
            return this.p.b(obj).equals(this.p.b(obj2));
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.j52
    public final void i(Object obj, byte[] bArr, int i, int i2, ox1 ox1Var) {
        m(obj, bArr, i, i2, 0, ox1Var);
    }

    public final int k(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return l(i, 0);
    }

    public final int l(int i, int i2) {
        int length = (this.a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.a[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0b8a, code lost:
    
        if (r14 == 1048575) goto L471;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0b8c, code lost:
    
        r29.putInt(r7, r14, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0b92, code lost:
    
        r12 = r31.k;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0b99, code lost:
    
        if (r12 >= r31.l) goto L580;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0b9b, code lost:
    
        r3 = (androidx.appcompat.view.menu.d72) r(r32, r31.j[r12], r3, r31.o, r32);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0bb1, code lost:
    
        if (r3 == null) goto L477;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0bb3, code lost:
    
        r31.o.h(r7, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0bb8, code lost:
    
        if (r9 != 0) goto L482;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0bba, code lost:
    
        if (r8 != r10) goto L480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0bc1, code lost:
    
        throw androidx.appcompat.view.menu.s12.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0bc6, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0bc2, code lost:
    
        if (r8 > r10) goto L485;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0bc4, code lost:
    
        if (r11 != r9) goto L485;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0bcb, code lost:
    
        throw androidx.appcompat.view.menu.s12.e();
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x084f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x085e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0b70 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0b17 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int m(Object obj, byte[] bArr, int i, int i2, int i3, ox1 ox1Var) {
        Unsafe unsafe;
        int i4;
        int i5;
        int i6;
        int k;
        int i7;
        int i8;
        int i9;
        ox1 ox1Var2;
        int i10;
        int i11;
        int i12;
        qz1 qz1Var;
        int i13;
        int i14;
        ox1 ox1Var3;
        int i15;
        int i16;
        int i17;
        int i18;
        Unsafe unsafe2;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        ox1 ox1Var4;
        int i30;
        int k2;
        int i31;
        int i32;
        int b;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int p;
        int i40;
        ox1 ox1Var5;
        int i41;
        Object obj2 = obj;
        int i42 = i2;
        int i43 = i3;
        ox1 ox1Var6 = ox1Var;
        R(obj);
        Unsafe unsafe3 = s;
        int i44 = i;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = -1;
        int i49 = 1048575;
        while (true) {
            if (i44 < i42) {
                int i50 = i44 + 1;
                int i51 = bArr[i44];
                if (i51 < 0) {
                    int d = jx1.d(i51, bArr, i50, ox1Var6);
                    i6 = ox1Var6.a;
                    i50 = d;
                } else {
                    i6 = i51;
                }
                int i52 = i6 >>> 3;
                int i53 = i6 & 7;
                if (i52 > i48) {
                    k = (i52 < this.c || i52 > this.d) ? -1 : l(i52, i45 / 3);
                } else {
                    k = k(i52);
                }
                int i54 = k;
                if (i54 == -1) {
                    unsafe = unsafe3;
                    i7 = i49;
                    i45 = 0;
                    i5 = i43;
                    i8 = i52;
                    i9 = i42;
                    ox1Var2 = ox1Var6;
                    i10 = i50;
                    i46 = i6;
                } else {
                    int[] iArr = this.a;
                    int i55 = iArr[i54 + 1];
                    int i56 = (i55 & 267386880) >>> 20;
                    int i57 = i50;
                    int i58 = i6;
                    long j = i55 & 1048575;
                    if (i56 <= 17) {
                        int i59 = iArr[i54 + 2];
                        int i60 = 1 << (i59 >>> 20);
                        int i61 = 1048575;
                        int i62 = i59 & 1048575;
                        if (i62 != i49) {
                            if (i49 != 1048575) {
                                unsafe3.putInt(obj2, i49, i47);
                                i61 = 1048575;
                            }
                            i7 = i62;
                            i13 = i62 == i61 ? 0 : unsafe3.getInt(obj2, i62);
                        } else {
                            i13 = i47;
                            i7 = i49;
                        }
                        switch (i56) {
                            case 0:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 1) {
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i63 = i14;
                                    i5 = i43;
                                    i9 = i63;
                                    break;
                                } else {
                                    w72.f(obj2, j, jx1.a(bArr, i16));
                                    i19 = i16 + 8;
                                    i22 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case 1:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 5) {
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i632 = i14;
                                    i5 = i43;
                                    i9 = i632;
                                    break;
                                } else {
                                    w72.g(obj2, j, jx1.l(bArr, i16));
                                    i19 = i16 + 4;
                                    i22 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case 2:
                            case q02.c.c /* 3 */:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 0) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i6322 = i14;
                                    i5 = i43;
                                    i9 = i6322;
                                    break;
                                } else {
                                    int p2 = jx1.p(bArr, i16, ox1Var3);
                                    unsafe2.putLong(obj, j, ox1Var3.b);
                                    i21 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i44 = p2;
                                    i43 = i20;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i47 = i21;
                                    break;
                                }
                            case 4:
                            case 11:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 0) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i63222 = i14;
                                    i5 = i43;
                                    i9 = i63222;
                                    break;
                                } else {
                                    i19 = jx1.o(bArr, i16, ox1Var3);
                                    unsafe2.putInt(obj2, j, ox1Var3.a);
                                    i22 = i13 | i60;
                                    i43 = i20;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case q02.c.e /* 5 */:
                            case 14:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 1) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i632222 = i14;
                                    i5 = i43;
                                    i9 = i632222;
                                    break;
                                } else {
                                    unsafe2.putLong(obj, j, jx1.q(bArr, i16));
                                    i19 = i16 + 8;
                                    i22 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i43 = i20;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case q02.c.f /* 6 */:
                            case 13:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 5) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i6322222 = i14;
                                    i5 = i43;
                                    i9 = i6322222;
                                    break;
                                } else {
                                    unsafe2.putInt(obj2, j, jx1.n(bArr, i16));
                                    i19 = i16 + 4;
                                    i22 = i13 | i60;
                                    i43 = i20;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case q02.c.g /* 7 */:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 0) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i63222222 = i14;
                                    i5 = i43;
                                    i9 = i63222222;
                                    break;
                                } else {
                                    i19 = jx1.p(bArr, i16, ox1Var3);
                                    w72.v(obj2, j, ox1Var3.b != 0);
                                    i22 = i13 | i60;
                                    i43 = i20;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                                i14 = i2;
                                i20 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 2) {
                                    i43 = i20;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i632222222 = i14;
                                    i5 = i43;
                                    i9 = i632222222;
                                    break;
                                } else {
                                    if (S(i55)) {
                                        i19 = jx1.m(bArr, i16, ox1Var3);
                                    } else {
                                        i19 = jx1.o(bArr, i16, ox1Var3);
                                        int i64 = ox1Var3.a;
                                        if (i64 < 0) {
                                            throw s12.d();
                                        }
                                        if (i64 == 0) {
                                            ox1Var3.c = "";
                                        } else {
                                            ox1Var3.c = new String(bArr, i19, i64, v02.b);
                                            i19 += i64;
                                        }
                                    }
                                    unsafe2.putObject(obj2, j, ox1Var3.c);
                                    i22 = i13 | i60;
                                    i43 = i20;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case 9:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i23 = i58;
                                i16 = i57;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 2) {
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i6322222222 = i14;
                                    i5 = i43;
                                    i9 = i6322222222;
                                    break;
                                } else {
                                    Object p3 = p(obj2, i15);
                                    i17 = i23;
                                    i19 = jx1.i(p3, N(i15), bArr, i16, i2, ox1Var);
                                    x(obj2, i15, p3);
                                    i22 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i43 = i43;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case 10:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i23 = i58;
                                i16 = i57;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 2) {
                                    i17 = i23;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i63222222222 = i14;
                                    i5 = i43;
                                    i9 = i63222222222;
                                    break;
                                } else {
                                    i19 = jx1.j(bArr, i16, ox1Var3);
                                    unsafe2.putObject(obj2, j, ox1Var3.c);
                                    i22 = i13 | i60;
                                    i46 = i23;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case 12:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 0) {
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i632222222222 = i14;
                                    i5 = i43;
                                    i9 = i632222222222;
                                    break;
                                } else {
                                    int o = jx1.o(bArr, i16, ox1Var3);
                                    int i65 = ox1Var3.a;
                                    l12 M = M(i15);
                                    if ((i55 & Integer.MIN_VALUE) == 0 || M == null || M.e(i65)) {
                                        unsafe2.putInt(obj2, j, i65);
                                        i46 = i17;
                                        unsafe3 = unsafe2;
                                        i42 = i14;
                                        i45 = i15;
                                        ox1Var6 = ox1Var3;
                                        i48 = i18;
                                        i49 = i7;
                                        i47 = i13 | i60;
                                    } else {
                                        O(obj).e(i17, Long.valueOf(i65));
                                        i46 = i17;
                                        unsafe3 = unsafe2;
                                        i42 = i14;
                                        i45 = i15;
                                        ox1Var6 = ox1Var3;
                                        i48 = i18;
                                        i47 = i13;
                                        i49 = i7;
                                    }
                                    i44 = o;
                                    break;
                                }
                            case 15:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                if (i53 != 0) {
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i6322222222222 = i14;
                                    i5 = i43;
                                    i9 = i6322222222222;
                                    break;
                                } else {
                                    i19 = jx1.o(bArr, i16, ox1Var3);
                                    unsafe2.putInt(obj2, j, cz1.e(ox1Var3.a));
                                    i22 = i13 | i60;
                                    unsafe3 = unsafe2;
                                    i42 = i14;
                                    i45 = i15;
                                    ox1Var6 = ox1Var3;
                                    i48 = i18;
                                    i46 = i17;
                                    i49 = i7;
                                    i44 = i19;
                                    i47 = i22;
                                    break;
                                }
                            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                                if (i53 != 0) {
                                    ox1Var3 = ox1Var6;
                                    unsafe2 = unsafe3;
                                    i15 = i54;
                                    i18 = i52;
                                    i16 = i57;
                                    i14 = i2;
                                    i43 = i3;
                                    i17 = i58;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i63222222222222 = i14;
                                    i5 = i43;
                                    i9 = i63222222222222;
                                    break;
                                } else {
                                    int p4 = jx1.p(bArr, i57, ox1Var6);
                                    unsafe3.putLong(obj, j, cz1.b(ox1Var6.b));
                                    i21 = i13 | i60;
                                    unsafe3 = unsafe3;
                                    i42 = i2;
                                    i43 = i3;
                                    i45 = i54;
                                    ox1Var6 = ox1Var6;
                                    i48 = i52;
                                    i46 = i58;
                                    i49 = i7;
                                    i44 = p4;
                                    i47 = i21;
                                    break;
                                }
                            case 17:
                                if (i53 != 3) {
                                    i14 = i2;
                                    i43 = i3;
                                    ox1Var3 = ox1Var6;
                                    i15 = i54;
                                    i16 = i57;
                                    i17 = i58;
                                    i18 = i52;
                                    unsafe2 = unsafe3;
                                    unsafe = unsafe2;
                                    i10 = i16;
                                    i45 = i15;
                                    ox1Var2 = ox1Var3;
                                    i8 = i18;
                                    i46 = i17;
                                    i47 = i13;
                                    int i632222222222222 = i14;
                                    i5 = i43;
                                    i9 = i632222222222222;
                                    break;
                                } else {
                                    Object p5 = p(obj2, i54);
                                    i44 = jx1.h(p5, N(i54), bArr, i57, i2, (i52 << 3) | 4, ox1Var);
                                    x(obj2, i54, p5);
                                    i47 = i13 | i60;
                                    i46 = i58;
                                    i45 = i54;
                                    i48 = i52;
                                    i49 = i7;
                                    i42 = i2;
                                    i43 = i3;
                                    break;
                                }
                            default:
                                i14 = i2;
                                i43 = i3;
                                ox1Var3 = ox1Var6;
                                i15 = i54;
                                i16 = i57;
                                i17 = i58;
                                i18 = i52;
                                unsafe2 = unsafe3;
                                unsafe = unsafe2;
                                i10 = i16;
                                i45 = i15;
                                ox1Var2 = ox1Var3;
                                i8 = i18;
                                i46 = i17;
                                i47 = i13;
                                int i6322222222222222 = i14;
                                i5 = i43;
                                i9 = i6322222222222222;
                                break;
                        }
                    } else {
                        i43 = i3;
                        int i66 = i47;
                        i7 = i49;
                        ox1 ox1Var7 = ox1Var6;
                        int i67 = i57;
                        Unsafe unsafe4 = unsafe3;
                        if (i56 != 27) {
                            if (i56 > 49) {
                                unsafe = unsafe4;
                                i33 = i54;
                                i67 = i67;
                                i34 = i58;
                                if (i56 != 50) {
                                    obj2 = obj;
                                    Unsafe unsafe5 = s;
                                    long j2 = iArr[i33 + 2] & 1048575;
                                    switch (i56) {
                                        case 51:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 1) {
                                                unsafe5.putObject(obj2, j, Double.valueOf(jx1.a(bArr, i38)));
                                                i39 = i38 + 8;
                                                unsafe5.putInt(obj2, j2, i8);
                                                p = i39;
                                                if (p == i38) {
                                                    i46 = i37;
                                                    ox1Var6 = ox1Var;
                                                    i44 = p;
                                                    i42 = i9;
                                                    i48 = i8;
                                                    i45 = i36;
                                                    i47 = i66;
                                                    i49 = i7;
                                                    unsafe3 = unsafe;
                                                    i43 = i3;
                                                    break;
                                                } else {
                                                    i5 = i3;
                                                    i10 = p;
                                                    i45 = i36;
                                                    i46 = i37;
                                                    i47 = i66;
                                                    break;
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                        case 52:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 5) {
                                                unsafe5.putObject(obj2, j, Float.valueOf(jx1.l(bArr, i38)));
                                                i39 = i38 + 4;
                                                unsafe5.putInt(obj2, j2, i8);
                                                p = i39;
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 53:
                                        case 54:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                p = jx1.p(bArr, i38, ox1Var2);
                                                unsafe5.putObject(obj2, j, Long.valueOf(ox1Var2.b));
                                                unsafe5.putInt(obj2, j2, i8);
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 55:
                                        case 62:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                p = jx1.o(bArr, i38, ox1Var2);
                                                unsafe5.putObject(obj2, j, Integer.valueOf(ox1Var2.a));
                                                unsafe5.putInt(obj2, j2, i8);
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 56:
                                        case 65:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 1) {
                                                unsafe5.putObject(obj2, j, Long.valueOf(jx1.q(bArr, i38)));
                                                i39 = i38 + 8;
                                                unsafe5.putInt(obj2, j2, i8);
                                                p = i39;
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 57:
                                        case PackageParser.PARSE_IS_SYSTEM_DIR /* 64 */:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 5) {
                                                unsafe5.putObject(obj2, j, Integer.valueOf(jx1.n(bArr, i38)));
                                                i39 = i38 + 4;
                                                unsafe5.putInt(obj2, j2, i8);
                                                p = i39;
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 58:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                p = jx1.p(bArr, i38, ox1Var2);
                                                unsafe5.putObject(obj2, j, Boolean.valueOf(ox1Var2.b != 0));
                                                unsafe5.putInt(obj2, j2, i8);
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 59:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            if (i53 == 2) {
                                                int o2 = jx1.o(bArr, i38, ox1Var2);
                                                int i68 = ox1Var2.a;
                                                if (i68 == 0) {
                                                    unsafe5.putObject(obj2, j, "");
                                                } else {
                                                    if ((i55 & 536870912) != 0 && !z72.f(bArr, o2, o2 + i68)) {
                                                        throw s12.c();
                                                    }
                                                    unsafe5.putObject(obj2, j, new String(bArr, o2, i68, v02.b));
                                                    o2 += i68;
                                                }
                                                unsafe5.putInt(obj2, j2, i8);
                                                p = o2;
                                                if (p == i38) {
                                                }
                                            }
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 60:
                                            i40 = i34;
                                            ox1Var5 = ox1Var7;
                                            i41 = i52;
                                            i38 = i67;
                                            if (i53 == 2) {
                                                Object q = q(obj2, i41, i33);
                                                i37 = i40;
                                                p = jx1.i(q, N(i33), bArr, i38, i2, ox1Var);
                                                w(obj2, i41, i33, q);
                                                i9 = i2;
                                                ox1Var2 = ox1Var5;
                                                i36 = i33;
                                                i8 = i41;
                                                if (p == i38) {
                                                }
                                            }
                                            i37 = i40;
                                            i8 = i41;
                                            i36 = i33;
                                            i9 = i2;
                                            ox1Var2 = ox1Var5;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 61:
                                            i40 = i34;
                                            ox1Var5 = ox1Var7;
                                            i41 = i52;
                                            i38 = i67;
                                            if (i53 == 2) {
                                                p = jx1.j(bArr, i38, ox1Var5);
                                                unsafe5.putObject(obj2, j, ox1Var5.c);
                                                unsafe5.putInt(obj2, j2, i41);
                                                i37 = i40;
                                                i8 = i41;
                                                i36 = i33;
                                                i9 = i2;
                                                ox1Var2 = ox1Var5;
                                                if (p == i38) {
                                                }
                                            }
                                            i37 = i40;
                                            i8 = i41;
                                            i36 = i33;
                                            i9 = i2;
                                            ox1Var2 = ox1Var5;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 63:
                                            i40 = i34;
                                            ox1Var5 = ox1Var7;
                                            i41 = i52;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                p = jx1.o(bArr, i38, ox1Var5);
                                                int i69 = ox1Var5.a;
                                                l12 M2 = M(i33);
                                                if (M2 == null || M2.e(i69)) {
                                                    unsafe5.putObject(obj2, j, Integer.valueOf(i69));
                                                    unsafe5.putInt(obj2, j2, i41);
                                                } else {
                                                    O(obj).e(i40, Long.valueOf(i69));
                                                }
                                                i37 = i40;
                                                i8 = i41;
                                                i36 = i33;
                                                i9 = i2;
                                                ox1Var2 = ox1Var5;
                                                if (p == i38) {
                                                }
                                            }
                                            i37 = i40;
                                            i8 = i41;
                                            i36 = i33;
                                            i9 = i2;
                                            ox1Var2 = ox1Var5;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 66:
                                            i40 = i34;
                                            ox1Var5 = ox1Var7;
                                            i41 = i52;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                p = jx1.o(bArr, i38, ox1Var5);
                                                unsafe5.putObject(obj2, j, Integer.valueOf(cz1.e(ox1Var5.a)));
                                                unsafe5.putInt(obj2, j2, i41);
                                                i37 = i40;
                                                i8 = i41;
                                                i36 = i33;
                                                i9 = i2;
                                                ox1Var2 = ox1Var5;
                                                if (p == i38) {
                                                }
                                            }
                                            i37 = i40;
                                            i8 = i41;
                                            i36 = i33;
                                            i9 = i2;
                                            ox1Var2 = ox1Var5;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 67:
                                            i40 = i34;
                                            ox1Var5 = ox1Var7;
                                            i41 = i52;
                                            i38 = i67;
                                            if (i53 == 0) {
                                                int p6 = jx1.p(bArr, i38, ox1Var5);
                                                unsafe5.putObject(obj2, j, Long.valueOf(cz1.b(ox1Var5.b)));
                                                unsafe5.putInt(obj2, j2, i41);
                                                p = p6;
                                                i37 = i40;
                                                i8 = i41;
                                                i36 = i33;
                                                i9 = i2;
                                                ox1Var2 = ox1Var5;
                                                if (p == i38) {
                                                }
                                            }
                                            i37 = i40;
                                            i8 = i41;
                                            i36 = i33;
                                            i9 = i2;
                                            ox1Var2 = ox1Var5;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                        case 68:
                                            if (i53 == 3) {
                                                Object q2 = q(obj2, i52, i33);
                                                ox1Var5 = ox1Var7;
                                                int h = jx1.h(q2, N(i33), bArr, i67, i2, (i34 & (-8)) | 4, ox1Var);
                                                w(obj2, i52, i33, q2);
                                                i37 = i34;
                                                i8 = i52;
                                                i36 = i33;
                                                p = h;
                                                i9 = i2;
                                                i38 = i67;
                                                ox1Var2 = ox1Var5;
                                                if (p == i38) {
                                                }
                                            }
                                            break;
                                        default:
                                            i36 = i33;
                                            ox1Var2 = ox1Var7;
                                            i8 = i52;
                                            i9 = i2;
                                            i37 = i34;
                                            i38 = i67;
                                            p = i38;
                                            if (p == i38) {
                                            }
                                            break;
                                    }
                                } else {
                                    if (i53 == 2) {
                                        Unsafe unsafe6 = s;
                                        Object Q = Q(i33);
                                        Object object = unsafe6.getObject(obj, j);
                                        if (this.q.g(object)) {
                                            Object f = this.q.f(Q);
                                            this.q.d(f, object);
                                            unsafe6.putObject(obj, j, f);
                                            object = f;
                                        }
                                        this.q.b(Q);
                                        this.q.h(object);
                                        int o3 = jx1.o(bArr, i67, ox1Var7);
                                        int i70 = ox1Var7.a;
                                        if (i70 < 0 || i70 > i2 - o3) {
                                            throw s12.f();
                                        }
                                        throw null;
                                    }
                                    i35 = i2;
                                    obj2 = obj;
                                }
                            } else {
                                long j3 = i55;
                                Unsafe unsafe7 = s;
                                n12 n12Var = (n12) unsafe7.getObject(obj2, j);
                                if (!n12Var.c()) {
                                    int size = n12Var.size();
                                    n12Var = n12Var.e(size != 0 ? size << 1 : 10);
                                    unsafe7.putObject(obj2, j, n12Var);
                                }
                                n12 n12Var2 = n12Var;
                                switch (i56) {
                                    case 18:
                                    case 35:
                                        i24 = i2;
                                        i25 = i54;
                                        i26 = i67;
                                        i27 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            jy0.a(n12Var2);
                                            i11 = jx1.o(bArr, i26, ox1Var7);
                                            int i71 = ox1Var7.a + i11;
                                            if (i11 < i71) {
                                                jx1.a(bArr, i11);
                                                throw null;
                                            }
                                            if (i11 != i71) {
                                                throw s12.f();
                                            }
                                            if (i11 != i26) {
                                                i43 = i3;
                                                i42 = i24;
                                                i46 = i27;
                                                i45 = i25;
                                                ox1Var6 = ox1Var7;
                                                i48 = i52;
                                                i47 = i66;
                                                i49 = i7;
                                                unsafe3 = unsafe;
                                                obj2 = obj;
                                                i44 = i11;
                                                break;
                                            } else {
                                                i10 = i11;
                                                i9 = i24;
                                                i46 = i27;
                                                i45 = i25;
                                                ox1Var2 = ox1Var7;
                                                i8 = i52;
                                                i47 = i66;
                                                obj2 = obj;
                                                i5 = i3;
                                                break;
                                            }
                                        } else {
                                            if (i53 == 1) {
                                                jy0.a(n12Var2);
                                                jx1.a(bArr, i26);
                                                throw null;
                                            }
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                    case 19:
                                    case 36:
                                        i24 = i2;
                                        i25 = i54;
                                        i26 = i67;
                                        i27 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            jy0.a(n12Var2);
                                            i11 = jx1.o(bArr, i26, ox1Var7);
                                            int i72 = ox1Var7.a + i11;
                                            if (i11 < i72) {
                                                jx1.l(bArr, i11);
                                                throw null;
                                            }
                                            if (i11 != i72) {
                                                throw s12.f();
                                            }
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            if (i53 == 5) {
                                                jy0.a(n12Var2);
                                                jx1.l(bArr, i26);
                                                throw null;
                                            }
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i24 = i2;
                                        i25 = i54;
                                        i26 = i67;
                                        i27 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            u22 u22Var = (u22) n12Var2;
                                            i11 = jx1.o(bArr, i26, ox1Var7);
                                            int i73 = ox1Var7.a + i11;
                                            while (i11 < i73) {
                                                i11 = jx1.p(bArr, i11, ox1Var7);
                                                u22Var.f(ox1Var7.b);
                                            }
                                            if (i11 != i73) {
                                                throw s12.f();
                                            }
                                        } else {
                                            if (i53 == 0) {
                                                u22 u22Var2 = (u22) n12Var2;
                                                i11 = jx1.p(bArr, i26, ox1Var7);
                                                u22Var2.f(ox1Var7.b);
                                                while (i11 < i24) {
                                                    int o4 = jx1.o(bArr, i11, ox1Var7);
                                                    if (i27 == ox1Var7.a) {
                                                        i11 = jx1.p(bArr, o4, ox1Var7);
                                                        u22Var2.f(ox1Var7.b);
                                                    }
                                                }
                                            }
                                            i11 = i26;
                                        }
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 22:
                                    case 29:
                                    case 39:
                                    case 43:
                                        i24 = i2;
                                        i28 = i54;
                                        i29 = i67;
                                        ox1Var4 = ox1Var7;
                                        i30 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            k2 = jx1.k(bArr, i29, n12Var2, ox1Var4);
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            if (i53 == 0) {
                                                ox1Var7 = ox1Var4;
                                                i26 = i29;
                                                i27 = i30;
                                                i25 = i28;
                                                i11 = jx1.b(i30, bArr, i29, i2, n12Var2, ox1Var);
                                                if (i11 != i26) {
                                                }
                                            }
                                            ox1Var7 = ox1Var4;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    case 23:
                                    case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                                    case 40:
                                    case 46:
                                        i24 = i2;
                                        i28 = i54;
                                        i29 = i67;
                                        ox1Var4 = ox1Var7;
                                        i30 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            u22 u22Var3 = (u22) n12Var2;
                                            k2 = jx1.o(bArr, i29, ox1Var4);
                                            int i74 = ox1Var4.a + k2;
                                            while (k2 < i74) {
                                                u22Var3.f(jx1.q(bArr, k2));
                                                k2 += 8;
                                            }
                                            if (k2 != i74) {
                                                throw s12.f();
                                            }
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            if (i53 == 1) {
                                                u22 u22Var4 = (u22) n12Var2;
                                                u22Var4.f(jx1.q(bArr, i29));
                                                i31 = i29 + 8;
                                                while (i31 < i24) {
                                                    int o5 = jx1.o(bArr, i31, ox1Var4);
                                                    if (i30 == ox1Var4.a) {
                                                        u22Var4.f(jx1.q(bArr, o5));
                                                        i31 = o5 + 8;
                                                    } else {
                                                        ox1Var7 = ox1Var4;
                                                        i26 = i29;
                                                        i27 = i30;
                                                        i25 = i28;
                                                        i11 = i31;
                                                        if (i11 != i26) {
                                                        }
                                                    }
                                                }
                                                ox1Var7 = ox1Var4;
                                                i26 = i29;
                                                i27 = i30;
                                                i25 = i28;
                                                i11 = i31;
                                                if (i11 != i26) {
                                                }
                                            }
                                            ox1Var7 = ox1Var4;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    case 24:
                                    case 31:
                                    case 41:
                                    case 45:
                                        i24 = i2;
                                        i28 = i54;
                                        i29 = i67;
                                        ox1Var4 = ox1Var7;
                                        i30 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            d12 d12Var = (d12) n12Var2;
                                            k2 = jx1.o(bArr, i29, ox1Var4);
                                            int i75 = ox1Var4.a + k2;
                                            while (k2 < i75) {
                                                d12Var.h(jx1.n(bArr, k2));
                                                k2 += 4;
                                            }
                                            if (k2 != i75) {
                                                throw s12.f();
                                            }
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            if (i53 == 5) {
                                                d12 d12Var2 = (d12) n12Var2;
                                                d12Var2.h(jx1.n(bArr, i29));
                                                i31 = i29 + 4;
                                                while (i31 < i24) {
                                                    int o6 = jx1.o(bArr, i31, ox1Var4);
                                                    if (i30 == ox1Var4.a) {
                                                        d12Var2.h(jx1.n(bArr, o6));
                                                        i31 = o6 + 4;
                                                    } else {
                                                        ox1Var7 = ox1Var4;
                                                        i26 = i29;
                                                        i27 = i30;
                                                        i25 = i28;
                                                        i11 = i31;
                                                        if (i11 != i26) {
                                                        }
                                                    }
                                                }
                                                ox1Var7 = ox1Var4;
                                                i26 = i29;
                                                i27 = i30;
                                                i25 = i28;
                                                i11 = i31;
                                                if (i11 != i26) {
                                                }
                                            }
                                            ox1Var7 = ox1Var4;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        i24 = i2;
                                        i28 = i54;
                                        i29 = i67;
                                        ox1Var4 = ox1Var7;
                                        i30 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            jy0.a(n12Var2);
                                            k2 = jx1.o(bArr, i29, ox1Var4);
                                            int i76 = ox1Var4.a + k2;
                                            if (k2 < i76) {
                                                jx1.p(bArr, k2, ox1Var4);
                                                throw null;
                                            }
                                            if (k2 != i76) {
                                                throw s12.f();
                                            }
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            if (i53 == 0) {
                                                jy0.a(n12Var2);
                                                jx1.p(bArr, i29, ox1Var4);
                                                long j4 = ox1Var4.b;
                                                throw null;
                                            }
                                            ox1Var7 = ox1Var4;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    case 26:
                                        i24 = i2;
                                        i28 = i54;
                                        i29 = i67;
                                        ox1Var4 = ox1Var7;
                                        i30 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            if ((j3 & 536870912) == 0) {
                                                k2 = jx1.o(bArr, i29, ox1Var4);
                                                int i77 = ox1Var4.a;
                                                if (i77 < 0) {
                                                    throw s12.d();
                                                }
                                                if (i77 == 0) {
                                                    n12Var2.add("");
                                                } else {
                                                    n12Var2.add(new String(bArr, k2, i77, v02.b));
                                                    k2 += i77;
                                                }
                                                while (k2 < i24) {
                                                    int o7 = jx1.o(bArr, k2, ox1Var4);
                                                    if (i30 == ox1Var4.a) {
                                                        k2 = jx1.o(bArr, o7, ox1Var4);
                                                        int i78 = ox1Var4.a;
                                                        if (i78 < 0) {
                                                            throw s12.d();
                                                        }
                                                        if (i78 == 0) {
                                                            n12Var2.add("");
                                                        } else {
                                                            n12Var2.add(new String(bArr, k2, i78, v02.b));
                                                            k2 += i78;
                                                        }
                                                    }
                                                }
                                            } else {
                                                k2 = jx1.o(bArr, i29, ox1Var4);
                                                int i79 = ox1Var4.a;
                                                if (i79 < 0) {
                                                    throw s12.d();
                                                }
                                                if (i79 == 0) {
                                                    n12Var2.add("");
                                                } else {
                                                    int i80 = k2 + i79;
                                                    if (!z72.f(bArr, k2, i80)) {
                                                        throw s12.c();
                                                    }
                                                    n12Var2.add(new String(bArr, k2, i79, v02.b));
                                                    k2 = i80;
                                                }
                                                while (k2 < i24) {
                                                    int o8 = jx1.o(bArr, k2, ox1Var4);
                                                    if (i30 == ox1Var4.a) {
                                                        k2 = jx1.o(bArr, o8, ox1Var4);
                                                        int i81 = ox1Var4.a;
                                                        if (i81 < 0) {
                                                            throw s12.d();
                                                        }
                                                        if (i81 == 0) {
                                                            n12Var2.add("");
                                                        } else {
                                                            int i82 = k2 + i81;
                                                            if (!z72.f(bArr, k2, i82)) {
                                                                throw s12.c();
                                                            }
                                                            n12Var2.add(new String(bArr, k2, i81, v02.b));
                                                            k2 = i82;
                                                        }
                                                    }
                                                }
                                            }
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        }
                                        ox1Var7 = ox1Var4;
                                        i26 = i29;
                                        i27 = i30;
                                        i25 = i28;
                                        i11 = i26;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 27:
                                        i24 = i2;
                                        i32 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            i28 = i54;
                                            i30 = i32;
                                            i29 = i67;
                                            ox1Var4 = ox1Var7;
                                            k2 = jx1.e(N(i54), i32, bArr, i29, i2, n12Var2, ox1Var);
                                            ox1Var7 = ox1Var4;
                                            i11 = k2;
                                            i26 = i29;
                                            i27 = i30;
                                            i25 = i28;
                                            if (i11 != i26) {
                                            }
                                        }
                                        i25 = i54;
                                        i27 = i32;
                                        i26 = i67;
                                        i11 = i26;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 28:
                                        i24 = i2;
                                        i32 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            i11 = jx1.o(bArr, i67, ox1Var7);
                                            int i83 = ox1Var7.a;
                                            if (i83 < 0) {
                                                throw s12.d();
                                            }
                                            if (i83 > bArr.length - i11) {
                                                throw s12.f();
                                            }
                                            if (i83 == 0) {
                                                n12Var2.add(qx1.n);
                                            } else {
                                                n12Var2.add(qx1.n(bArr, i11, i83));
                                                i11 += i83;
                                            }
                                            while (i11 < i24) {
                                                int o9 = jx1.o(bArr, i11, ox1Var7);
                                                if (i32 == ox1Var7.a) {
                                                    i11 = jx1.o(bArr, o9, ox1Var7);
                                                    int i84 = ox1Var7.a;
                                                    if (i84 < 0) {
                                                        throw s12.d();
                                                    }
                                                    if (i84 > bArr.length - i11) {
                                                        throw s12.f();
                                                    }
                                                    if (i84 == 0) {
                                                        n12Var2.add(qx1.n);
                                                    } else {
                                                        n12Var2.add(qx1.n(bArr, i11, i84));
                                                        i11 += i84;
                                                    }
                                                } else {
                                                    i25 = i54;
                                                    i27 = i32;
                                                    i26 = i67;
                                                    if (i11 != i26) {
                                                    }
                                                }
                                            }
                                            i25 = i54;
                                            i27 = i32;
                                            i26 = i67;
                                            if (i11 != i26) {
                                            }
                                        }
                                        i25 = i54;
                                        i27 = i32;
                                        i26 = i67;
                                        i11 = i26;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i24 = i2;
                                        i32 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            b = jx1.k(bArr, i67, n12Var2, ox1Var7);
                                        } else {
                                            if (i53 == 0) {
                                                b = jx1.b(i32, bArr, i67, i2, n12Var2, ox1Var);
                                            }
                                            i25 = i54;
                                            i27 = i32;
                                            i26 = i67;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        int i85 = b;
                                        m52.h(obj, i52, n12Var2, M(i54), null, this.o);
                                        i11 = i85;
                                        i25 = i54;
                                        i27 = i32;
                                        i26 = i67;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i24 = i2;
                                        i32 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            d12 d12Var3 = (d12) n12Var2;
                                            i11 = jx1.o(bArr, i67, ox1Var7);
                                            int i86 = ox1Var7.a + i11;
                                            while (i11 < i86) {
                                                i11 = jx1.o(bArr, i11, ox1Var7);
                                                d12Var3.h(cz1.e(ox1Var7.a));
                                            }
                                            if (i11 != i86) {
                                                throw s12.f();
                                            }
                                        } else {
                                            if (i53 == 0) {
                                                d12 d12Var4 = (d12) n12Var2;
                                                i11 = jx1.o(bArr, i67, ox1Var7);
                                                d12Var4.h(cz1.e(ox1Var7.a));
                                                while (i11 < i24) {
                                                    int o10 = jx1.o(bArr, i11, ox1Var7);
                                                    if (i32 == ox1Var7.a) {
                                                        i11 = jx1.o(bArr, o10, ox1Var7);
                                                        d12Var4.h(cz1.e(ox1Var7.a));
                                                    }
                                                }
                                            }
                                            i25 = i54;
                                            i27 = i32;
                                            i26 = i67;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        i25 = i54;
                                        i27 = i32;
                                        i26 = i67;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 34:
                                    case 48:
                                        i24 = i2;
                                        i32 = i58;
                                        unsafe = unsafe4;
                                        if (i53 == 2) {
                                            u22 u22Var5 = (u22) n12Var2;
                                            i11 = jx1.o(bArr, i67, ox1Var7);
                                            int i87 = ox1Var7.a + i11;
                                            while (i11 < i87) {
                                                i11 = jx1.p(bArr, i11, ox1Var7);
                                                u22Var5.f(cz1.b(ox1Var7.b));
                                            }
                                            if (i11 != i87) {
                                                throw s12.f();
                                            }
                                        } else {
                                            if (i53 == 0) {
                                                u22 u22Var6 = (u22) n12Var2;
                                                i11 = jx1.p(bArr, i67, ox1Var7);
                                                u22Var6.f(cz1.b(ox1Var7.b));
                                                while (i11 < i24) {
                                                    int o11 = jx1.o(bArr, i11, ox1Var7);
                                                    if (i32 == ox1Var7.a) {
                                                        i11 = jx1.p(bArr, o11, ox1Var7);
                                                        u22Var6.f(cz1.b(ox1Var7.b));
                                                    }
                                                }
                                            }
                                            i25 = i54;
                                            i27 = i32;
                                            i26 = i67;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        i25 = i54;
                                        i27 = i32;
                                        i26 = i67;
                                        if (i11 != i26) {
                                        }
                                        break;
                                    case 49:
                                        if (i53 == 3) {
                                            j52 N = N(i54);
                                            i32 = i58;
                                            int i88 = (i32 & (-8)) | 4;
                                            unsafe = unsafe4;
                                            i24 = i2;
                                            i11 = jx1.f(N, bArr, i67, i2, i88, ox1Var);
                                            n12Var2.add(ox1Var7.c);
                                            while (i11 < i24) {
                                                int o12 = jx1.o(bArr, i11, ox1Var7);
                                                if (i32 == ox1Var7.a) {
                                                    i11 = jx1.f(N, bArr, o12, i2, i88, ox1Var);
                                                    n12Var2.add(ox1Var7.c);
                                                } else {
                                                    i25 = i54;
                                                    i27 = i32;
                                                    i26 = i67;
                                                    if (i11 != i26) {
                                                    }
                                                }
                                            }
                                            i25 = i54;
                                            i27 = i32;
                                            i26 = i67;
                                            if (i11 != i26) {
                                            }
                                        } else {
                                            i24 = i2;
                                            unsafe = unsafe4;
                                            i25 = i54;
                                            i26 = i67;
                                            i27 = i58;
                                            i11 = i26;
                                            if (i11 != i26) {
                                            }
                                        }
                                        break;
                                    default:
                                        i24 = i2;
                                        i25 = i54;
                                        i26 = i67;
                                        i27 = i58;
                                        unsafe = unsafe4;
                                        i11 = i26;
                                        if (i11 != i26) {
                                        }
                                        break;
                                }
                            }
                        } else if (i53 == 2) {
                            n12 n12Var3 = (n12) unsafe4.getObject(obj2, j);
                            if (!n12Var3.c()) {
                                int size2 = n12Var3.size();
                                n12Var3 = n12Var3.e(size2 != 0 ? size2 << 1 : 10);
                                unsafe4.putObject(obj2, j, n12Var3);
                            }
                            unsafe3 = unsafe4;
                            i44 = jx1.e(N(i54), i58, bArr, i67, i2, n12Var3, ox1Var);
                            i42 = i2;
                            i45 = i54;
                            i48 = i52;
                            i46 = i58;
                            i47 = i66;
                            i49 = i7;
                            ox1Var6 = ox1Var7;
                        } else {
                            i35 = i2;
                            unsafe = unsafe4;
                            i33 = i54;
                            i34 = i58;
                        }
                        i5 = i3;
                        i46 = i34;
                        i10 = i67;
                        ox1Var2 = ox1Var7;
                        i8 = i52;
                        i47 = i66;
                        i45 = i33;
                        i9 = i35;
                    }
                }
                if (i46 != i5 || i5 == 0) {
                    if (!this.f || (qz1Var = ox1Var2.d) == qz1.c) {
                        i12 = i9;
                        i11 = jx1.c(i46, bArr, i10, i2, O(obj), ox1Var);
                    } else {
                        qz1Var.b(this.e, i8);
                        i12 = i9;
                        i11 = jx1.c(i46, bArr, i10, i2, O(obj), ox1Var);
                    }
                    ox1Var6 = ox1Var;
                    i42 = i12;
                    i43 = i5;
                    i48 = i8;
                    i49 = i7;
                    unsafe3 = unsafe;
                    i44 = i11;
                } else {
                    i44 = i10;
                    i4 = i9;
                    i49 = i7;
                }
            } else {
                unsafe = unsafe3;
                i4 = i42;
                i5 = i43;
            }
        }
    }

    public final Object o(int i, int i2, Map map, l12 l12Var, Object obj, l72 l72Var, Object obj2) {
        this.q.b(Q(i));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!l12Var.e(((Integer) entry.getValue()).intValue())) {
                if (obj == null) {
                    obj = l72Var.i(obj2);
                }
                iy1 v = qx1.v(g32.a(null, entry.getKey(), entry.getValue()));
                try {
                    g32.b(v.b(), null, entry.getKey(), entry.getValue());
                    l72Var.c(obj, i2, v.a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj;
    }

    public final Object p(Object obj, int i) {
        j52 N = N(i);
        long G = G(i) & 1048575;
        if (!I(obj, i)) {
            return N.a();
        }
        Object object = s.getObject(obj, G);
        if (T(object)) {
            return object;
        }
        Object a = N.a();
        if (object != null) {
            N.d(a, object);
        }
        return a;
    }

    public final Object q(Object obj, int i, int i2) {
        j52 N = N(i2);
        if (!J(obj, i, i2)) {
            return N.a();
        }
        Object object = s.getObject(obj, G(i2) & 1048575);
        if (T(object)) {
            return object;
        }
        Object a = N.a();
        if (object != null) {
            N.d(a, object);
        }
        return a;
    }

    public final Object r(Object obj, int i, Object obj2, l72 l72Var, Object obj3) {
        l12 M;
        int i2 = this.a[i];
        Object B = w72.B(obj, G(i) & 1048575);
        return (B == null || (M = M(i)) == null) ? obj2 : o(i, i2, this.q.h(B), M, obj2, l72Var, obj3);
    }

    public final void v(d92 d92Var, int i, Object obj, int i2) {
        if (obj != null) {
            this.q.b(Q(i2));
            d92Var.p(i, null, this.q.c(obj));
        }
    }

    public final void w(Object obj, int i, int i2, Object obj2) {
        s.putObject(obj, G(i2) & 1048575, obj2);
        E(obj, i, i2);
    }

    public final void x(Object obj, int i, Object obj2) {
        s.putObject(obj, G(i) & 1048575, obj2);
        D(obj, i);
    }

    public final void y(Object obj, Object obj2, int i) {
        if (I(obj2, i)) {
            long G = G(i) & 1048575;
            Unsafe unsafe = s;
            Object object = unsafe.getObject(obj2, G);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.a[i] + " is present but null: " + String.valueOf(obj2));
            }
            j52 N = N(i);
            if (!I(obj, i)) {
                if (T(object)) {
                    Object a = N.a();
                    N.d(a, object);
                    unsafe.putObject(obj, G, a);
                } else {
                    unsafe.putObject(obj, G, object);
                }
                D(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, G);
            if (!T(object2)) {
                Object a2 = N.a();
                N.d(a2, object2);
                unsafe.putObject(obj, G, a2);
                object2 = a2;
            }
            N.d(object2, object);
        }
    }

    public final boolean z(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? I(obj, i) : (i3 & i4) != 0;
    }
}
