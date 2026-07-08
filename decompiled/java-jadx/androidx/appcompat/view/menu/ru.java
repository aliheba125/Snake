package androidx.appcompat.view.menu;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import androidx.appcompat.view.menu.wu;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ru {
    public static final Comparator a = new Comparator() { // from class: androidx.appcompat.view.menu.qu
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int g;
            g = ru.g((byte[]) obj, (byte[]) obj2);
            return g;
        }
    };

    public interface a {
        static a a(Context context, Uri uri) {
            return new b(context, uri);
        }

        Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    public static class b implements a {
        public final ContentProviderClient a;

        public b(Context context, Uri uri) {
            this.a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.appcompat.view.menu.ru.a
        public Cursor b(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException unused) {
                return null;
            }
        }

        @Override // androidx.appcompat.view.menu.ru.a
        public void close() {
            ContentProviderClient contentProviderClient = this.a;
            if (contentProviderClient != null) {
                contentProviderClient.close();
            }
        }
    }

    public static List b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static boolean c(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static List d(su suVar, Resources resources) {
        return suVar.b() != null ? suVar.b() : vu.c(resources, suVar.c());
    }

    public static wu.a e(Context context, su suVar, CancellationSignal cancellationSignal) {
        ProviderInfo f = f(context.getPackageManager(), suVar, context.getResources());
        return f == null ? wu.a.a(1, null) : wu.a.a(0, h(context, suVar, f.authority, cancellationSignal));
    }

    public static ProviderInfo f(PackageManager packageManager, su suVar, Resources resources) {
        String e = suVar.e();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(e, 0);
        if (resolveContentProvider == null) {
            throw new PackageManager.NameNotFoundException("No package found for authority: " + e);
        }
        if (!resolveContentProvider.packageName.equals(suVar.f())) {
            throw new PackageManager.NameNotFoundException("Found content provider " + e + ", but package was not " + suVar.f());
        }
        List b2 = b(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
        Collections.sort(b2, a);
        List d = d(suVar, resources);
        for (int i = 0; i < d.size(); i++) {
            ArrayList arrayList = new ArrayList((Collection) d.get(i));
            Collections.sort(arrayList, a);
            if (c(b2, arrayList)) {
                return resolveContentProvider;
            }
        }
        return null;
    }

    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            byte b3 = bArr2[i];
            if (b2 != b3) {
                return b2 - b3;
            }
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static wu.b[] h(Context context, su suVar, String str, CancellationSignal cancellationSignal) {
        ArrayList arrayList;
        int i;
        Uri withAppendedId;
        int i2;
        boolean z;
        ArrayList arrayList2 = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        a a2 = a.a(context, build);
        Cursor cursor = null;
        try {
            int i3 = 1;
            Cursor b2 = a2.b(build, new String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new String[]{suVar.g()}, null, cancellationSignal);
            if (b2 != null) {
                try {
                    if (b2.getCount() > 0) {
                        int columnIndex = b2.getColumnIndex("result_code");
                        ArrayList arrayList3 = new ArrayList();
                        int columnIndex2 = b2.getColumnIndex("_id");
                        int columnIndex3 = b2.getColumnIndex("file_id");
                        int columnIndex4 = b2.getColumnIndex("font_ttc_index");
                        int columnIndex5 = b2.getColumnIndex("font_weight");
                        int columnIndex6 = b2.getColumnIndex("font_italic");
                        while (b2.moveToNext()) {
                            int i4 = columnIndex != -1 ? b2.getInt(columnIndex) : 0;
                            int i5 = columnIndex4 != -1 ? b2.getInt(columnIndex4) : 0;
                            if (columnIndex3 == -1) {
                                i = i5;
                                withAppendedId = ContentUris.withAppendedId(build, b2.getLong(columnIndex2));
                            } else {
                                i = i5;
                                withAppendedId = ContentUris.withAppendedId(build2, b2.getLong(columnIndex3));
                            }
                            int i6 = columnIndex5 != -1 ? b2.getInt(columnIndex5) : 400;
                            if (columnIndex6 == -1 || b2.getInt(columnIndex6) != i3) {
                                i2 = i6;
                                z = 0;
                            } else {
                                z = i3;
                                i2 = i6;
                            }
                            arrayList3.add(wu.b.a(withAppendedId, i, i2, z, i4));
                            i3 = 1;
                        }
                        arrayList = arrayList3;
                        if (b2 != null) {
                            b2.close();
                        }
                        a2.close();
                        return (wu.b[]) arrayList.toArray(new wu.b[0]);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = b2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    a2.close();
                    throw th;
                }
            }
            arrayList = arrayList2;
            if (b2 != null) {
            }
            a2.close();
            return (wu.b[]) arrayList.toArray(new wu.b[0]);
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
