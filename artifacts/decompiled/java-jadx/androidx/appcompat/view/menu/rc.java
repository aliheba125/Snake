package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class rc {
    public static final Object[] a(Object[] objArr, boolean z) {
        z50.e(objArr, "<this>");
        if (z && z50.a(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        z50.d(copyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return copyOf;
    }

    public static List b(Object obj) {
        List singletonList = Collections.singletonList(obj);
        z50.d(singletonList, "singletonList(element)");
        return singletonList;
    }
}
