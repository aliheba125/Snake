package androidx.appcompat.view.menu;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;

/* loaded from: classes.dex */
public abstract class oo0 {

    public static class a {
        public static void a(Object obj, Intent intent, Bundle bundle) {
            RemoteInput.addResultsToIntent((RemoteInput[]) obj, intent, bundle);
        }

        public static RemoteInput b(oo0 oo0Var) {
            throw null;
        }

        public static Bundle c(Intent intent) {
            return RemoteInput.getResultsFromIntent(intent);
        }
    }

    public static RemoteInput a(oo0 oo0Var) {
        return a.b(oo0Var);
    }

    public static RemoteInput[] b(oo0[] oo0VarArr) {
        if (oo0VarArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[oo0VarArr.length];
        for (int i = 0; i < oo0VarArr.length; i++) {
            oo0 oo0Var = oo0VarArr[i];
            remoteInputArr[i] = a(null);
        }
        return remoteInputArr;
    }
}
