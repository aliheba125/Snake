package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import androidx.appcompat.view.menu.c80;
import androidx.appcompat.view.menu.mk;
import androidx.appcompat.view.menu.sj;
import androidx.appcompat.view.menu.v80;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FirebaseCommonRegistrar implements ComponentRegistrar {
    public static /* synthetic */ String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    public static /* synthetic */ String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.minSdkVersion) : "";
    }

    public static /* synthetic */ String g(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : context.getPackageManager().hasSystemFeature("android.hardware.type.automotive") ? "auto" : context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
    }

    public static /* synthetic */ String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? i(installerPackageName) : "";
    }

    public static String i(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(mk.c());
        arrayList.add(sj.g());
        arrayList.add(v80.b("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(v80.b("fire-core", "20.4.2"));
        arrayList.add(v80.b("device-name", i(Build.PRODUCT)));
        arrayList.add(v80.b("device-model", i(Build.DEVICE)));
        arrayList.add(v80.b("device-brand", i(Build.BRAND)));
        arrayList.add(v80.c("android-target-sdk", new v80.a() { // from class: androidx.appcompat.view.menu.pr
            @Override // androidx.appcompat.view.menu.v80.a
            public final String a(Object obj) {
                String e;
                e = FirebaseCommonRegistrar.e((Context) obj);
                return e;
            }
        }));
        arrayList.add(v80.c("android-min-sdk", new v80.a() { // from class: androidx.appcompat.view.menu.qr
            @Override // androidx.appcompat.view.menu.v80.a
            public final String a(Object obj) {
                String f;
                f = FirebaseCommonRegistrar.f((Context) obj);
                return f;
            }
        }));
        arrayList.add(v80.c("android-platform", new v80.a() { // from class: androidx.appcompat.view.menu.rr
            @Override // androidx.appcompat.view.menu.v80.a
            public final String a(Object obj) {
                String g;
                g = FirebaseCommonRegistrar.g((Context) obj);
                return g;
            }
        }));
        arrayList.add(v80.c("android-installer", new v80.a() { // from class: androidx.appcompat.view.menu.sr
            @Override // androidx.appcompat.view.menu.v80.a
            public final String a(Object obj) {
                String h;
                h = FirebaseCommonRegistrar.h((Context) obj);
                return h;
            }
        }));
        String a = c80.a();
        if (a != null) {
            arrayList.add(v80.b("kotlin", a));
        }
        return arrayList;
    }
}
