package androidx.appcompat.view.menu;

import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class vj0 {
    public static SparseArray a = new SparseArray();
    public static HashMap b;

    static {
        HashMap hashMap = new HashMap();
        b = hashMap;
        hashMap.put(tj0.DEFAULT, 0);
        b.put(tj0.VERY_LOW, 1);
        b.put(tj0.HIGHEST, 2);
        for (tj0 tj0Var : b.keySet()) {
            a.append(((Integer) b.get(tj0Var)).intValue(), tj0Var);
        }
    }

    public static int a(tj0 tj0Var) {
        Integer num = (Integer) b.get(tj0Var);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + tj0Var);
    }

    public static tj0 b(int i) {
        tj0 tj0Var = (tj0) a.get(i);
        if (tj0Var != null) {
            return tj0Var;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
