.class public abstract Landroidx/appcompat/view/menu/h31;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/view/menu/h31;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/gy;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/gy;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gy;->b(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0

    :catch_0
    const-string p0, "UidVerifier"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v1
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ah0;->g(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
