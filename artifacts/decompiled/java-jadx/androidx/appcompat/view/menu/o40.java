package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class o40 extends k40 implements Set {
    public transient l40 n;

    public static int n(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            nj0.e(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    public static o40 p(int i, Object... objArr) {
        if (i == 0) {
            return u();
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return v(obj);
        }
        int n = n(i);
        Object[] objArr2 = new Object[n];
        int i2 = n - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object a = sf0.a(objArr[i5], i5);
            int hashCode = a.hashCode();
            int b = ty.b(hashCode);
            while (true) {
                int i6 = b & i2;
                Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = a;
                    objArr2[i6] = a;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(a)) {
                    break;
                }
                b++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new vu0(obj3);
        }
        if (n(i4) < n / 2) {
            return p(i4, objArr);
        }
        if (y(i4, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new ko0(objArr, i3, objArr2, i2, i4);
    }

    public static o40 r(Collection collection) {
        if ((collection instanceof o40) && !(collection instanceof SortedSet)) {
            o40 o40Var = (o40) collection;
            if (!o40Var.i()) {
                return o40Var;
            }
        }
        Object[] array = collection.toArray();
        return p(array.length, array);
    }

    public static o40 u() {
        return ko0.u;
    }

    public static o40 v(Object obj) {
        return new vu0(obj);
    }

    public static o40 w(Object obj, Object obj2, Object obj3) {
        return p(3, obj, obj2, obj3);
    }

    public static o40 x(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        nj0.e(objArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = objArr.length + 6;
        Object[] objArr2 = new Object[length];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
        return p(length, objArr2);
    }

    public static boolean y(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof o40) && t() && ((o40) obj).t() && hashCode() != obj.hashCode()) {
            return false;
        }
        return et0.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return et0.b(this);
    }

    public l40 k() {
        l40 l40Var = this.n;
        if (l40Var != null) {
            return l40Var;
        }
        l40 s = s();
        this.n = s;
        return s;
    }

    public l40 s() {
        return l40.k(toArray());
    }

    public boolean t() {
        return false;
    }
}
