package androidx.appcompat.view.menu;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ax1 implements w32 {
    protected int zza = 0;

    public static void f(Iterable iterable, List list) {
        v02.e(iterable);
        if (iterable instanceof c22) {
            List b = ((c22) iterable).b();
            c22 c22Var = (c22) list;
            int size = list.size();
            for (Object obj : b) {
                if (obj == null) {
                    String str = "Element at index " + (c22Var.size() - size) + " is null.";
                    for (int size2 = c22Var.size() - 1; size2 >= size; size2--) {
                        c22Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                if (obj instanceof qx1) {
                    c22Var.q((qx1) obj);
                } else {
                    c22Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof r42) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                for (int size4 = list.size() - 1; size4 >= size3; size4--) {
                    list.remove(size4);
                }
                throw new NullPointerException(str2);
            }
            list.add(obj2);
        }
    }

    public abstract int e(j52 j52Var);

    public abstract int g();

    public final byte[] h() {
        try {
            byte[] bArr = new byte[a()];
            jz1 D = jz1.D(bArr);
            c(D);
            D.E();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing " + getClass().getName() + " to a byte array threw an IOException (should never happen).", e);
        }
    }

    public abstract void i(int i);
}
