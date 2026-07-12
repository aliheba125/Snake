package com.snake.helper;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import androidx.appcompat.view.menu.at0;
import androidx.appcompat.view.menu.e9;
import androidx.appcompat.view.menu.sv0;
import androidx.appcompat.view.menu.yu0;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SystemCallProvider extends ContentProvider {
    public final boolean a() {
        sv0.a().b();
        return true;
    }

    public final void b(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            bundle.setClassLoader(getClass().getClassLoader());
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                bundle.get(it.next());
            }
        } catch (BadParcelableException unused) {
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        b(bundle);
        if (!"VM".equals(str)) {
            return super.call(str, str2, bundle);
        }
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            e9.d(bundle2, "_S_|_server_", at0.b(bundle.getString("_S_|_server_name_")));
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        yu0.h().w();
        return a();
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
